CREATE TABLE Estado (
    pid INTEGER,
    f_modif TIMESTAMP,
    estado VARCHAR(140),

    PRIMARY KEY (pid, f_modif),

    FOREIGN KEY (pid) REFERENCES Persona
);