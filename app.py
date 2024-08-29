import pandas as pd
import psycopg2
from sqlalchemy import create_engine


def read_data_from_csv(file_path):
    """Read data from CSV file
    """
    data_frame = pd.read_csv(file_path)
    return data_frame

def read_data_from_db(engine):
    """Read data from PostgreSQL database.
    """
    with engine.connect() as conn:
        data_frame = pd.read_sql('SELECT * FROM test_table', conn)
    return data_frame

def process_data(data_frame):
    """Find max and min age for records where the length
    of the 'name' is less than 6 chars.
    """
    filtered_data = data_frame[data_frame['name'].str.len() < 6]

    max_age = filtered_data['age'].max()
    min_age = filtered_data['age'].min()

    return max_age, min_age


def create_db_engine():
    """Creates and returns a SQLAlchemy engine for connecting to a PostgreSQL database.
    """
    # db data
    db_user = 'postgres'
    db_password = 'password'
    db_host = 'db'
    db_port = '5432'
    db_name = 'torshin'
    engine = create_engine(f"postgresql://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}")
    return engine


if __name__ == "__main__":
    engine = create_db_engine()
    data = read_data_from_db(engine)
    result = process_data(data)
    print(f"Max age: {result[0]}\nMin age: {result[1]}")
