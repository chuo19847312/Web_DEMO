import pandas as pd


class readdata:

	def read_data():
		data = pd.read_csv('../testdata/searchWarranty.csv')
		
		print(data)
readdata.read_data()