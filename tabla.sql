CREATE TABLE Tarifas (
    zona VARCHAR(15)

    capacidad_base_firme NUMERIC(1, 9)
    uso_base_firme       NUMERIC(1, 9)

    capacidad_base_temporal NUMERIC(1, 9)
    uso_base_temporal       NUMERIC(1, 9)

    maxima_base_interrumpible NUMERIC(1, 9)
    minima_base_interrumpible NUMERIC(1, 9)
    
    volumetrica NUMERIC(1, 9)
    fecha_inicio DATE
    fecha_fin    DATE
)