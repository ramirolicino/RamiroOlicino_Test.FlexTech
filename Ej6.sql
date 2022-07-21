USE [FlexTech_DB];
GO
--Creacion Tabla
CREATE TABLE [FlexTech_DB].dbo.Personas
(
	[ID] [int] NOT NULL,
	[NAME] [varchar](255) NOT NULL,
)


GO
--Carga de registros
INSERT INTO Personas(ID, NAME)
VALUES
(1, 'Bob'),
(2, 'Sam'),
(3, 'Jill'),
(4, 'Jim'),
(5, 'Sally'),
(6, 'Jess'),
(7, 'Will');

GO
SELECT * FROM Personas;


-- Ej6 --

--Concateno el texto predeeterminado con los nombres del registro
SELECT CONCAT('¡Hola',' ',p.NAME, CONCAT('! ', ' ','¿Cómo estás hoy?') ) AS SALUDO
	FROM Personas p
	GROUP BY p.NAME



--Elimina la tabla
GO
DROP  TABLE Personas;