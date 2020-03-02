CREATE TABLE video (
idVideo INT PRIMARY KEY,
titulo VARCHAR(100),
repro INT,
link VARCHAR (100))


CREATE PROCEDURE sp_video_insertar
@idVideo INT, @titulo VARCHAR, @repro INT, @link VARCHAR
AS
BEGIN
	INSERT INTO video 
	VALUES (@idVideo, @titulo, @repro, @link);
END



EXEC sp_video_insertar 1, 'Video', 1, 'x'



SELECT * FROM video