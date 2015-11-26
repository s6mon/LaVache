---------------------Lecture du fichier OFF--------------------------
--DESCRIPTION
	--Lire le fichier d'entré
	--Trouver minimum global de Z et maximum global de Z pour a et b 
	--Renvoyer une liste de triangle dans l'ordre de lecture (pointeurs)
	--comme les fonctions seront appellées depuis le main le fichier doit être ouvert du main.

--LISTE DES FONCTIONS
	--


--Appel de package

with Ada.Text_IO; use Ada.Text_IO;
with structureDonnee;


--Programme

package body lectureFichier is 



begin

function litFormat(InputFile : file_type; format : string) return string is

text : string(1..12);
long : integer;
begin
	if not(end_of_line(InputFile)
	then		
		get_line(InputFile, text, long); --Le fichier doit être en In_File
	else
		text := "not_OFF_File";
	end if;
	
	return text;
end litFormat;
	
	





end lectureFichier;
