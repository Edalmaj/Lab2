CREATE TABLE video (
idVideo INT PRIMARY KEY,
titulo VARCHAR(50),
repro VARCHAR(50),
link VARCHAR (50));


CREATE PROCEDURE sp_video_consultar_todo
AS
BEGIN
	SELECT * FROM video;
END;


CREATE PROCEDURE sp_video_insertar
@idVideo INT, @titulo VARCHAR, @repro INT, @link VARCHAR
AS
BEGIN
	INSERT INTO video 
	VALUES (@idVideo, @titulo, @repro, @link);
END;


CREATE PROCEDURE sp_video_modificar
@idVideo INT, @titulo VARCHAR, @repro VARCHAR, @link VARCHAR
AS
BEGIN
	UPDATE video SET titulo=@titulo,repro=@repro,link=@link WHERE idVideo=@idVideo;
END;


CREATE PROCEDURE sp_video_eliminar
@idVideo INT
AS
BEGIN
	DELETE FROM video WHERE idVideo=@idVideo;
END;


EXEC sp_video_insertar 1, 'Video', 1, 'x'