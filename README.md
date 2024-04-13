# Avance de la evidencia de Big Data

Trabajo realizado por Cristian Santiago Matus Gutiérrez (SaVa-dev).
Creado para la matería de Fundamentos de programación para Big Data.

## Instrucciones

Para esta evidencia, se pidió lo siguiente:

1. Realizar una base de datos tipo SQL y una query para crear una tabla.
2. Se tendría que llenar la tabla con los datos del archivo CSV *"Tarifas por puntos 2016-2017.csv"*.
3. Hacer una propuesta para visualizar las relaciones hechas en Python.

## Pasos realizado

**Parte SQL**

![Inicio de Xampp](./images/inicioXampp.png)

Se pidió instalar una base de datos para poder manejar la información.
En mi caso, lo hice con una base de datos llamada *"XAMPP"*,

También se pidió crear una Query para poder crear la tabla.
Adicionalmente, también creé una Query para poder ingresar los datos a la tabla.
Todos estos archivos se encuentran en el archivo *"tabla.sql*

![Imagen de tabla en Xampp](./images/tablaXampp.png)

Una vez llenado el dataset, podemos continuar con la parte de python

**Parte Python**

Para poder modificar las tablas SQL a python, se instaló la libreria de mysql.connector.
Para instalarla, debido a mi distribución de linux, se instaló de la siguiente manera:

```bash
sudo pacman -S python-mysql-connector
```