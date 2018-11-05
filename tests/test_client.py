import pytest
import pytest_flask
from flask import url_for

# @pytest.mark.skip(reason="no way of currently testing this")
class TestApp:

	# Canteen View Start
	def test_index(self, client):
		res = client.get(url_for('customer_owner_index'))
		assert res.status_code == 200
	
	def test_elements(self, client):
		res = client.get(url_for('customer_elements'))
		assert res.status_code == 200
	
	def test_panels(self, client):
		res = client.get(url_for('customer_panels'))
		assert res.status_code == 200
		
	def test_page_profile(self, client):
		res = client.get(url_for('customer_page_profile'))
		assert res.status_code == 200
		
	def test_page_login(self, client):
		res = client.get(url_for('customer_page_login'))
		assert res.status_code == 200
		
	def test_page_lockscreen(self, client):
		res = client.get(url_for('customer_page_lockscreen'))
		assert res.status_code == 200
		
	def test_charts(self, client):
		res = client.get(url_for('customer_charts'))
		assert res.status_code == 200
		
	def test_notifications(self, client):
		res = client.get(url_for('customer_notifications'))
		assert res.status_code == 200
		
	def test_tables(self, client):
		res = client.get(url_for('customer_tables'))
		assert res.status_code == 200
		
	def test_icons(self, client):
		res = client.get(url_for('customer_icons'))
		assert res.status_code == 200
	
	def test_typography(self, client):
		res = client.get(url_for('customer_typography'))
		assert res.status_code == 200
	
	##test for place order
	def test(self,client):
		res = client.get(url_for('customer_test'))
		assert res.status_code == 200


	