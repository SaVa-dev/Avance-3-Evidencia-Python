import matplotlib.pyplot as plt
import mysql.connector
import textwrap

# Main del programa
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

    # Obtener zonas de inyeccion
    cursor.execute(textwrap.dedent(''' 
        SELECT zona_inyeccion, capacidad_base_firme FROM Tarifas;
    '''))
    columnas = cursor.fetchall() # Guardar columnas en una lista
    relacion = [0, 0, 0, 0]

    # Los mapas están raros en python... esto en Java estaría pelado de hacer
    # list(map(lambda x: print(x[0]), columnas))

    # Se que hay una mejor manera de hacer esto, pero me da hueva investigar
    for region in columnas:
        match region[0]:
            case 'Sur':         relacion[0] += region[1]
            case 'Occidente':   relacion[1] += region[1]
            case 'Golfo':       relacion[2] += region[1]
            case 'Norte':       relacion[3] += region[1]


if __name__ == '__main__':
    main()