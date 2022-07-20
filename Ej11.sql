USE [FlexTech_DB];
GO
--Creacion Tabla
CREATE TABLE [FlexTech_DB].dbo.Personas
(
	[ID] [int] NOT NULL,
	[ID_NAC] [int] NOT NULL,
	[NAME] [varchar](255) NOT NULL,
	[AGE] [int] NOT NULL,

	PRIMARY KEY(ID)
)

GO
CREATE TABLE [FlexTech_DB].dbo.Pais
(
	[ID] [int] NOT NULL,
	[DESCRIPCION] [varchar](255) NOT NULL,

	PRIMARY KEY(ID)
)

GO 
ALTER TABLE Personas ADD CONSTRAINT FK_Personas_Pais
					 FOREIGN KEY (ID_NAC) REFERENCES Pais(ID); 



GO
INSERT INTO Pais(ID, DESCRIPCION)
VALUES
(1,'Argentino'),
(2,'Italiano'),
(3,'Español'),
(4,'Alemán');

GO
--Carga de registros
INSERT INTO Personas(ID, ID_NAC,NAME, AGE)
VALUES
(1, 1,'Bob', 21),
(2, 1,'Sam', 19),
(3, 2,'Jill', 18),
(4, 3,'Jim', 21),
(5, 4,'Sally', 19),
(6, 2,'Jess', 20),
(7, 3,'Will', 21);

GO
SELECT * FROM Personas;
GO
SELECT * FROM Pais


-- Ej11 --

SELECT ps.ID, pa.DESCRIPCION AS DESNAC, ps.NAME, ps.AGE
	FROM Personas ps
	INNER JOIN Pais pa ON ps.ID_NAC = pa.ID;



GO
--Elimina la tabla
DROP TABLE Personas;
DROP TABLE Pais;