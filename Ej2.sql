USE [FlexTech_DB];
GO
--Creacion Tabla
CREATE TABLE [FlexTech_DB].dbo.Divisiones
(
	[DIVISION_ID] [int] NOT NULL,
	[YEAR] [INT] NOT NULL,
	[REVENUE] [INT] NOT NULL,
)


GO
--Carga de registros
INSERT INTO Divisiones(DIVISION_ID, YEAR, REVENUE)
VALUES
(1, 2018, 60),
(1, 2021, 40),
(1, 2020, 70),
(2, 2021, -10),
(3, 2018, 20),
(3, 2016, 40),
(4, 2021, 50);

GO
SELECT * FROM Divisiones;


-- Ej2 --


--Lo resuelvo limitando que las divisiones sean mayor a 2020 e ingresos mayor a 0  
SELECT * FROM Divisiones
	WHERE YEAR > 2020 AND REVENUE >0 



--Elimina la tabla
GO
DROP  TABLE Divisiones;
