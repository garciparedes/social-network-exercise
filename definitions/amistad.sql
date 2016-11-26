CREATE TABLE Amistad (
    pid1 INTEGER,
    pid2 INTEGER,

    PRIMARY KEY (pid1, pid2),

    FOREIGN KEY (pid1) REFERENCES Persona,
    FOREIGN KEY (pid2) REFERENCES Persona
);