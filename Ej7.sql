USE [FlexTech_DB];
GO
--Creacion Tabla
CREATE TABLE [FlexTech_DB].dbo.Productos
(
	[ID] [int] NOT NULL,
	[NAME] [varchar](255) NOT NULL,
	[AMOUNT_SOLD] [int] NOT NULL,
)


GO
--Carga de registros
INSERT INTO Productos(ID, NAME, AMOUNT_SOLD)
VALUES
(1, 'Cup', 11),
(2, 'Saucer', 22),
(3, 'Plate', 46),
(4, 'Fork', 34),
(5, 'Spoon', 45),
(6, 'Knife', 78),
(7, 'Mug', 23),
(8, 'Glass', 64),
(9, 'Tumbler', 24);

GO
SELECT * FROM Productos;


-- Ej7 --

--Ordeno de mayor a menor las cantidades y muestro el top 5 
SELECT TOP 5 *
	FROM Productos 
	ORDER  BY AMOUNT_SOLD DESC;



--Elimina la tabla
GO
DROP  TABLE Productos;