USE [FlexTech_DB];
GO
--Creacion Tabla
CREATE TABLE [FlexTech_DB].dbo.Personas
(
	[ID] [int] NOT NULL,
	[NAME] [varchar](255) NOT NULL,
	[COUNTRY] [varchar](255) NOT NULL,
)


GO
--Carga de registros
INSERT INTO Personas(ID, NAME, COUNTRY)
VALUES
(1, 'Cup',    'United States'),
(2, 'Saucer', 'China'),
(3, 'Plate',  'Japan'),
(4, 'Fork',   'Canada'),
(5, 'Spoon',  'Germany'),
(6, 'Knife',  'England'),
(7, 'Mug',    'France'),
(8, 'Glass',  'Canada'),
(9, 'Tumbler','United States');

GO
SELECT * FROM Personas;


-- Ej8 --

SELECT * 
	FROM Personas
	WHERE COUNTRY NOT LIKE 'United States' AND COUNTRY NOT LIKE 'Canada';



GO
--Elimina la tabla
DROP  TABLE Personas;