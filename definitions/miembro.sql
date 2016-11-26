CREATE TABLE Miembro (
    pid INTEGER,
    gid INTEGER,

    PRIMARY KEY (pid, gid),

    FOREIGN KEY (pid) REFERENCES Persona,
    FOREIGN KEY (gid) REFERENCES Grupo
)