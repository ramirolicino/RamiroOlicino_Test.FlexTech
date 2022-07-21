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

--Creo la relacion entre las tablas
GO 
ALTER TABLE Personas ADD CONSTRAINT FK_Personas_Fecha
					 FOREIGN KEY (ID_FECHA) REFERENCES Fecha(ID); 




--Carga de registros
GO
INSERT INTO Fecha(ID, FVTO)
VALUES
(1,'1/10/23'),
(2,'22/5/25'),
(5,'22/1/23'),
(6,'15/6/28');

GO
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



-- Ej15 --

--Creo procedimiento, LA indicar el numero del parametro, determina que registro se va a eliminar, retornanado 0 si es posible o -1 si da error
GO
CREATE PROCEDURE PersonaDelete

@Id int
AS
BEGIN
     DELETE FROM Personas WHERE ID = @Id;
	 DELETE FROM Fecha WHERE ID = @ID;
 
     IF @@ROWCOUNT > 0
          SELECT  '0'
     ELSE
          SELECT  '-1'
 
END


GO
EXECUTE PersonaDelete 1;

GO
SELECT * FROM Personas;
GO
SELECT * FROM Fecha



--Elimina la tabla
GO
DROP TABLE Personas;
GO
DROP TABLE Fecha;
GO
DROP PROCEDURE PersonaDelete;