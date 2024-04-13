import mysql.connector
import textwrap

def main() -> None:

    # Conectar a la base de datos de phpMyAdmin (xampp)
    db = mysql.connector.connect(
        host        = 'localhost',
        user        = 'root',
        password    = '',
        database    = 'big-data-avance-final'
    )

    # Crear un cursor para mandar querys desde python
    cursor = db.cursor()

    cursor.execute(textwrap.dedent('''
        CREATE TABLE tablaTest (
            zona_inyeccion VARCHAR(50)
        );
    '''))


if __name__ == '__main__':
    main()