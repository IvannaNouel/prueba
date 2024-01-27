from sqlalchemy import create_engine, text

def create_mysql_table():
    engine = create_engine('mysql+mysqlconnector://root:root@localhost:3306/pruebaETL')
    print("Connected to MySQL.")
    
    create_table_query = text("""
    CREATE TABLE IF NOT EXISTS relaciones (
        person1 VARCHAR(255),
        person2 VARCHAR(255),
        relation INT
    );
    """)
    with engine.connect() as connection:
        connection.execute(create_table_query)
        print("Table created or already exists")
