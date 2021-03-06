import mysql.connector

def replace_key(old_list, new_key, old_key):
	new_list = list()
	
	for i in old_list:
		i[new_key] = i.pop(old_key)
		new_list.append(i)

	return new_list

def get_conn(db_name):
	conn = mysql.connector.connect(
				host="localhost",
				user="root",
				passwd="",
				database=db_name
			)

	return conn.cursor(dictionary=True)

def get_items(table_name, db_name, item_count = None, key = None):
	conn = mysql.connector.connect(
				host="localhost",
				user="root",
				passwd="",
				database=db_name
			)
	cursor = conn.cursor(dictionary=True)
	cursor.execute('select * from %s' % table_name)
	
	if(item_count is None):
		return cursor.fetchall()

	return sorted(cursor.fetchall(), key = lambda i: i[key], reverse=True)[:item_count]


def get_canteen_details(db_name):
	conn = mysql.connector.connect(
				host="localhost",
				user="root",
				passwd="",
				database=db_name
			)

	cursor = conn.cursor(dictionary=True)
	cursor.execute('select Canteen_id,Canteen_name,Owner_name from Canteen, Owner where Canteen.Owner_id=Owner.Owner_id')
	return cursor.fetchall()

def get_item_user_details(db_name, item_name):
	conn = mysql.connector.connect(
				host="localhost",
				user="root",
				passwd="",
				database=db_name
			)
	cursor = conn.cursor(dictionary=True)
	
	items = get_items('Items', db_name)
	for item in items:
		if(item_name == item['Items_name']):
			cursor.execute('select * from Users where User_id in (select User_id from Purchases where Item_id = %s)' % item['Items_id'])
			print(cursor.fetchall())

def get_user_details(db_name, table, field):
	conn = mysql.connector.connect(
				host="localhost",
				user="root",
				passwd="",
				database=db_name
			)
	
	cursor = conn.cursor(dictionary=True)
	cursor.execute('select %s, count(*) from %s group by %s'%(field, table, field))
	return replace_key(cursor.fetchall(), 'count', 'count(*)')

def get_cost(db_name, items, quantity):
	conn = mysql.connector.connect(
				host="localhost",
				user="root",
				passwd="",
				database=db_name
			)
	
	cursor = conn.cursor(dictionary=True)
	cost = 0
	for item, num in zip(items, quantity):
		cursor.execute('select Price from Items where Items_id=%d'%item)
		cost+=(int(cursor.fetchall()[0]['Price'])*num)
	
	return cost

def get_order(db_name, hash=None, id=None):
	conn = mysql.connector.connect(
				host="localhost",
				user="root",
				passwd="",
				database=db_name
			)
	cursor = conn.cursor(dictionary=True)
	transaction_id = id

	if(hash is not None):
		cursor.execute("select Transaction_id from Transactions where Hash='%s'"%hash)
		transaction_id = cursor.fetchall()[0]['Transaction_id']

	cursor.execute('select Item_id, Quantity from Purchases where Purchase_basket_id=%d'%transaction_id)

	items = list()

	for i, item in enumerate(cursor.fetchall()):
		cursor.execute("select * from Items where Items_id=%d"%item['Item_id'])
		items.append(cursor.fetchall()[0])
		items[i]['quantity'] = item['Quantity']

	return items

def user_exists(db_name, social_id, user_type):
	conn = mysql.connector.connect(
				host="localhost",
				user="root",
				passwd="",
				database=db_name
			)
	cursor = conn.cursor(dictionary=True)

	if(user_type == 'customer'):
		cursor.execute('select * from Users where Social_id=%s'%social_id)
		try:
			return cursor.fetchall()[0]
		except(IndexError):
			return False
	if(user_type == 'owner'):
		cursor.execute('select * from Owner where Social_id=%s'%social_id)
		try:
			return cursor.fetchall()[0]
		except(IndexError):
			return False

def insert_customer(db_name, data):
	conn = mysql.connector.connect(
				host="localhost",
				user="root",
				passwd="",
				database=db_name
			)
	cursor = conn.cursor(dictionary=True)

	cursor.execute("insert into Users(`User_name`, `Gender`, `Semester`, `Department`, `Email`, `Social_id`) values('%s', '%s', '%s', '%s', '%s', '%s')"%(data['User_name'], data['Gender'], data['Semester'], data['Department'], data['Email'], data['Social_id']))
	conn.commit()
	cursor.execute("select User_id from Users where `Social_id`='%s'"%data['Social_id'])
	return int(cursor.fetchall()[0]['User_id'])

def insert_owner(db_name, data):
	conn = mysql.connector.connect(
				host="localhost",
				user="root",
				passwd="",
				database=db_name
			)
	cursor = conn.cursor(dictionary=True)
	
	cursor.execute("insert into Owner(`Owner_name`, `Social_id`, `Email`) values('%s', '%s', '%s')"%(data['Owner_name'], data['Social_id'], data['Email']))
	conn.commit()
	
	cursor.execute("select Owner_id from Owner where `Social_id`='%s'"%data['Social_id'])
	owner_id = int(cursor.fetchall()[0]['Owner_id'])
	
	cursor.execute("insert into Canteen(`Canteen_name`, `Owner_id`) values('%s', '%d')"%(data['Canteen_name'], owner_id))
	conn.commit()
	
	return owner_id
	
###Favorites 067
def get_favorites(db_name,User_id):
	new_list = list()
	conn = mysql.connector.connect(
				host="localhost",
				user="root",
				passwd="",
				database=db_name
			)
	cursor = conn.cursor(dictionary=True)
	cursor.execute("select Item_id from Favorites where User_id=%d" % User_id);
	favs = cursor.fetchall()
	for each_item in favs:
		new_list.append(each_item['Item_id'])
	return new_list
#067
def get_favorites_item_list(db_name,User_id):

	conn = mysql.connector.connect(
				host="localhost",
				user="root",
				passwd="",
				database=db_name
			)
	cursor = conn.cursor(dictionary=True)
	cursor.execute("select * from Items join Favorites on Items.Items_id = Favorites.Item_id where User_id=%s" % User_id)
	return cursor.fetchall()

#067
def update_favorites(db_name,User_id,Items_id):
	conn = mysql.connector.connect(
				host="localhost",
				user="root",
				passwd="",
				database=db_name
			)
	cursor = conn.cursor(dictionary=True)
	
	cursor.execute("select Item_id from Favorites where User_id = %d"% User_id)
	previous_item_list= cursor.fetchall()
	previous_item_list = [item['Item_id'] for item in previous_item_list]

	for item_id,value in Items_id.items():
		if(value == 0):
			cursor.execute('delete from Favorites where User_id=%d and Item_id=%d'% (User_id,int(item_id)))
		else:
			if(int(item_id) not in previous_item_list):
				cursor.execute("insert into Favorites(User_id,Item_id) values(%d, %d)"%(User_id,int(item_id)))
	conn.commit()

#067
def get_user_orders(db_name,User_id):

	conn = mysql.connector.connect(
				host="localhost",
				user="root",
				passwd="",
				database=db_name
			)
	cursor = conn.cursor(dictionary=True)
	cursor.execute("select Item_id,Quantity,Purchase_date,Transaction_amount from Purchases join Transactions on Transaction_id = Purchase_basket_id where Status = '1' and User_id=%s" % User_id)	
	items = list()

	for i, item in enumerate(cursor.fetchall()):
		cursor.execute("select Items_name, Price from Items where Items_id=%d"%item['Item_id'])
		items.append(cursor.fetchall()[0])
		items[i]['Quantity'] = item['Quantity']
		items[i]['Purchase_date'] = item['Purchase_date']
		items[i]['Transaction_amount'] = item['Transaction_amount']
	return items


