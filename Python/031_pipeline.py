import csv
class dataPipeline:
    def __init__(self, source, destination):
        self.source ="C:/Users/gomerah.5/OneDrive - TP/Documents/Data Engineer/SQL_Python_DATA_Engineering_projets/Python/pd_dirty_orders.csv"
        self.destination =":/Users/gomerah.5/OneDrive - TP/Documents/Data Engineer/SQL_Python_DATA_Engineering_projets/Python/MISSING_FILE.csv"

    def extract_data(self):
        print(f"extracting data from {self.source}")
        data =[]
        with open(self.source, newline='', encoding="utf-8") as csvfile:
            reader = csv.DictReader(csvfile)