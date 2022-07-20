USE [FlexTech_DB];

-- Ej14 --
GO
CREATE PROCEDURE semana
  @fecha DATE = NULL
  AS

  SELECT @fecha as FECHA, DATENAME(dw, @fecha) AS DIA


GO
EXECUTE semana '2022-02-02';

