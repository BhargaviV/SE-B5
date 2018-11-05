from flask import Flask, render_template
from flask import jsonify
from flask import request
from flask import Response
from flask import json
import os, sys
import flaskr.db_utils as db_utils
from werkzeug.datastructures import ImmutableMultiDict
import sqlite3
import flaskr.checksum as checksum
import requests
import hashlib
import time
import qrcode
import socket
import base64
from io import BytesIO

CURR_PATH = os.path.dirname(__file__)

def create_app():
	
	app = Flask(__name__)
	
	@app.route('/selectpayment/')
	def selectpayment():
		return render_template('payment/payment.html')

	@app.route('/payment/',methods=['POST','GET'])
	def payment():
		if request.method=='POST':
			MERCHANT_KEY = 'tG89dKDNQQWsrWjO';
			data_dict = {
				'MID':'SEB5St30591402404816',
				'ORDER_ID':'seb5336',
				'TXN_AMOUNT':request.form['TXN_AMOUNT'],
				'CUST_ID':request.form['CUST_ID'],
				'INDUSTRY_TYPE_ID':'Retail',
				'WEBSITE':'WEBSTAGING',
				'CHANNEL_ID':'WEB',
			}
			param_dict = data_dict  
			param_dict['CHECKSUMHASH'] =checksum.generate_checksum(data_dict, MERCHANT_KEY)
			return render_template('payment/redirect.html',data=param_dict)

	@app.route('/payment.status/',methods=['POST','GET'])
	def status():
		if request.method=='POST' or request.method=='GET':
			# Load request details
			# Assume request is:
			data = {'item_ids':[214, 223, 250, 254, 261, 267, 268, 278, 279, 285, 291, 292],
					'quantity':[27, 3, 25, 25, 13, 39, 28, 48, 19, 23, 42, 42],
					'User_id':366}
			
			cost = db_utils.get_cost('canteen', data['item_ids'], data['quantity'])
			# hash = hashlib.sha512((str(data)+str(time.time())).encode('utf-8')).hexdigest()
			hash = 'aba6a632901803216855a180d6221622481064b4'
			# Update Purchases, Transactions
			
			s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
			s.connect(("8.8.8.8", 80))
			ip_addr = (s.getsockname()[0])
			qr_code = ("http://"+ip_addr+":8000/canteen_owner/qr/"+hash)
			# qr_code = ("http://"+ip_addr+":8000/customer/index.html")
			img = qrcode.make(qr_code).get_image()
			
			buffered = BytesIO()
			img.save(buffered, format="JPEG")
			img_str = base64.b64encode(buffered.getvalue()).decode()
			print(img_str)
			return render_template("payment/qr.html", img={'base':img_str})
	
	@app.route('/canteen_owner/qr/<hash>')
	def canteen_owner_process_order_hash(hash):
		return render_template('canteen_owner/order.html', data=db_utils.get_order('canteen', hash=hash))	

	@app.route('/canteen_owner/id/<int:id>')
	def canteen_owner_process_order_id(id):
		return render_template('canteen_owner/order.html', data=db_utils.get_order('canteen', id=id))	

	@app.route('/canteen_owner/typography.html')
	def canteen_owner_typography():
		return render_template('canteen_owner/typography.html')

	@app.route('/canteen_owner/icons.html')
	def canteen_owner_icons():
		return render_template('canteen_owner/icons.html')

	@app.route('/canteen_owner/tables.html')
	def canteen_owner_tables():
		return render_template('canteen_owner/tables.html', data = db_utils.get_canteen_details('canteen'))

	@app.route('/canteen_owner/parent_template.html')
	def canteen_owner_parent_template():
		return render_template('canteen_owner/parent_template.html')

	@app.route('/canteen_owner/notifications.html')
	def canteen_owner_notifications():
		return render_template('canteen_owner/notifications.html')

	@app.route('/canteen_owner/charts.html')
	def canteen_owner_charts():
		return render_template('canteen_owner/charts.html', gender_data = db_utils.get_user_details('canteen', 'Users', 'Gender'), dept_data = db_utils.get_user_details('canteen', 'Users', 'Department'), sem_data = db_utils.get_user_details('canteen', 'Users', 'Semester'))

	@app.route('/canteen_owner/page-lockscreen.html')
	def canteen_owner_page_lockscreen():
		return render_template('canteen_owner/page-lockscreen.html')

	@app.route('/canteen_owner/page-login.html')
	def canteen_owner_page_login():
		return render_template('canteen_owner/page-login.html')

	@app.route('/canteen_owner/page-profile.html')
	def canteen_owner_page_profile():
		return render_template('canteen_owner/page-profile.html')

	@app.route('/canteen_owner/panels.html')
	def canteen_owner_panels():
		return render_template('canteen_owner/panels.html')

	@app.route('/canteen_owner/elements.html')
	def canteen_owner_elements():
		return render_template('canteen_owner/elements.html', data = db_utils.get_items('Items', 'canteen'))

	@app.route('/canteen_owner/index.html')
	def canteen_owner_owner_index():
		return render_template('canteen_owner/index.html')

	@app.route('/customer/items')
	def items_index():
		#table_name = 'Items'
		# cursor = db_utils.get_conn('canteen')
		return render_template('customer/oldindex.html', data = db_utils.get_items('Items', 'canteen'))
	

	#Changed 
	@app.route('/customer/typography.html',methods=['POST'])
	def customer_typography():
		#print("hello" , request.form['canteen_id'])
		return render_template('customer/typography.html', data = db_utils.get_items('Items', 'canteen'))

	@app.route('/customer/icons.html')
	def customer_icons():
		return render_template('customer/icons.html')

	@app.route('/customer/tables.html')
	def customer_tables():
		return render_template('customer/tables.html')

	@app.route('/customer/parent_template.html')
	def customer_parent_template():
		return render_template('customer/parent_template.html')

	@app.route('/customer/notifications.html')
	def customer_notifications():
		return render_template('customer/notifications.html')

	@app.route('/customer/charts.html')
	def customer_charts():
		return render_template('customer/charts.html')

	@app.route('/customer/page-lockscreen.html')
	def customer_page_lockscreen():
		return render_template('customer/page-lockscreen.html')

	@app.route('/customer/page-login.html')
	def customer_page_login():
		return render_template('customer/page-login.html')

	@app.route('/customer/page-profile.html')
	def customer_page_profile():
		return render_template('customer/page-profile.html')

	@app.route('/customer/panels.html')
	def customer_panels():
		return render_template('customer/panels.html')

	@app.route('/customer/elements.html')
	def customer_elements():
		return render_template('customer/elements.html')

	@app.route('/customer/index.html')
	def customer_owner_index():
		return render_template('customer/index.html')

	###End changed

	##test
	@app.route('/customer/test',methods=['POST'])
	def test():
		data = json.loads(request.data)
		print(data)
		return "{status: 200, msg:ok}"

	return app

if __name__ == "__main__":
	print(os.path.abspath(__file__))
	print(os.path.dirpath(__file__))
	app = create_app()
	app.jinja_env.cache = {}
	app.run(debug=True, port=5000)
