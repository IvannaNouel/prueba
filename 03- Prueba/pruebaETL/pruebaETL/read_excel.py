import pandas as pd
from dagster import op

def read_excel_file():
    df = pd.read_excel("/.venv/data/Matriz_de_adyacencia_data_team.xlsx")
    return df

@op
def process_excel_file():
    df = read_excel_file()
    print(df)
    return df
