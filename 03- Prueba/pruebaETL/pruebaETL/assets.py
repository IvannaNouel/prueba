from dagster import asset
from .mysql import create_mysql_table
from .load_data import load_data_to_mysql
from .read_excel import read_excel_file

@asset
def excel_data():
    return read_excel_file

@asset
def mysql_table_created(excel_data):
    create_mysql_table()
    return "Tabla creada"

@asset
def data_loaded_in_mysql(mysql_table_created, excel_data):
    load_data_to_mysql(excel_data)
    return "Datos cargados"
