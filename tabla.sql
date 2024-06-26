-- Query usada para crear la tabla para almacenar la información del CSV

CREATE TABLE Tarifas (
    zona_inyeccion VARCHAR(50),
    zona_extraccion VARCHAR(50),
    capacidad_base_firme DECIMAL(10, 5),
    uso_base_firme DECIMAL(10, 5),
    capacidad_base_firme_temporal DECIMAL(10, 5),
    uso_base_firme_temporal DECIMAL(10, 5),
    capacidad_base_interrumpible DECIMAL(10, 5),
    uso_base_interrumpible DECIMAL(10, 5),
    volumetrica DECIMAL(10, 5),
    fecha_inicio DATE,
    fecha_fin DATE
);

-- Query creada por ChatGPT para importar el archivo CSV a phpMyAdmin (xampp)
LOAD DATA INFILE '/home/sava/Documents/Evidencia-BigData/Avance3/Tarifas por puntos 2016-2017(3).csv' -- Ruta absoulta con ubicación del csv
INTO TABLE Tarifas

FIELDS TERMINATED BY ',' -- Me imagino que está especificando aquí los delimitadores del CSV
LINES TERMINATED BY '\n'
IGNORE 1 LINES           -- ???? no entiendo eso jaja

(zona_inyeccion, zona_extraccion, capacidad_base_firme, uso_base_firme,
capacidad_base_firme_temporal, uso_base_firme_temporal,
capacidad_base_interrumpible, uso_base_interrumpible, volumetrica,
@fecha_inicio, @fecha_fin) -- Pq lleva los @?
SET fecha_inicio = STR_TO_DATE(@fecha_inicio, '%d/%m/%Y'),
    fecha_fin = STR_TO_DATE(@fecha_fin, '%d/%m/%Y');