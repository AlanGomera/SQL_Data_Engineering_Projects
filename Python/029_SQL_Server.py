import pyodbc

#configuracion de connections
conn = pyodbc.connect(
    "DRIVER={ODBC Driver 17 for SQL Server};"
    "SERVER=(localdb)\\projectModels;"
    "DATABASE=Prueba;"
    "Trusted_Connection=yes;"
)

# Open a cursor
cursor = conn.cursor()

#ejecutar el query 

cursor.execute(
    '''
    IF OBJECT_ID('TablaConPY', 'U') IS NULL
    BEGIN
        CREATE TABLE TablaConPY (
        order_id int,
    name varchar(50))
    END
'''
)

try:
    cursor.execute(
        """
        INSERT INTO TablaConPY(order_id,name)
        values(1,'Alan'),
              (2,'Luis'),
              (3,'Alex')
"""
    )
    print("insert successful")
except Exception as e:   
    print("insert failed",e)


# Guardar cambios
conn.commit()
#cerrar 
cursor.close()
conn.close()