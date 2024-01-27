import pandas as pd
from sqlalchemy import Engine

def load_data_to_mysql(excel_data):
    if isinstance(excel_data, pd.DataFrame):
        excel_data.to_sql('relaciones', con=Engine, if_exists='replace', index=False)
    else:
        print("error")
