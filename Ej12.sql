USE [FlexTech_DB];
GO
--Creacion Tabla
CREATE TABLE [FlexTech_DB].dbo.Personas
(
	[ID] [int] NOT NULL,
	[ID_FECHA] [int]  NULL,
	[NAME] [varchar](255) NOT NULL,
	[AGE] [int] NOT NULL,

	PRIMARY KEY(ID)
)

GO
CREATE TABLE [FlexTech_DB].dbo.Fecha
(
	[ID] [int] NOT NULL,
	[FVTO] [varchar](255) NOT NULL,

	PRIMARY KEY(ID)
)

GO 
ALTER TABLE Personas ADD CONSTRAINT FK_Personas_Fecha
					 FOREIGN KEY (ID_FECHA) REFERENCES Fecha(ID); 



GO
INSERT INTO Fecha(ID, FVTO)
VALUES
(1,'1/10/23'),
(2,'22/5/25'),
(5,'22/1/23'),
(6,'15/6/28');

GO
--Carga de registros
INSERT INTO Personas(ID, ID_FECHA,NAME, AGE)
VALUES
(1, 1,'Bob', 21),
(2, 2,'Sam', 19),
(3, NULL,'Jill', 18),
(4, NULL,'Jim', 21),
(5, 5,'Sally', 19),
(6, 6,'Jess', 20),
(7, NULL,'Will', 21);

GO
SELECT * FROM Personas;
GO
SELECT * FROM Fecha

-- Ej12 --

--Determino que los registros que no poseen id_fecha son null, asi poder mostrar los activos
SELECT p.ID, p.NAME, p.AGE, f.FVTO
	FROM Personas p
	INNER JOIN Fecha f ON p.ID_FECHA = f.ID;




--Elimina la tabla
GO
DROP TABLE Personas;
GO
DROP TABLE Fecha;

