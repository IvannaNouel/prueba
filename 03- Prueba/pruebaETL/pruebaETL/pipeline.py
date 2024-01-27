from dagster import job, mem_io_manager
from .read_excel import process_excel_file, read_excel_file
from .mysql import create_mysql_table
from .load_data import load_data_to_mysql

@job(resource_defs={"io_manager": mem_io_manager})
def daily_update_pipeline():
    read_excel_file()
    create_mysql_table()
    load_data_to_mysql(process_excel_file())

    

