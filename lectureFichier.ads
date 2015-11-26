---------------------Lecture du fichier OFF--------------------------
--DESCRIPTION
	--Lire le fichier d'entré
	--Renvoyer les sommets sous forme de tableau de 3 sommets
	--comme les fonctions seront appellées depuis le main le fichier doit être ouvert du main.

--LISTE DES FONCTIONS
	--



package lectureFichier is 


	--Fonction qui va lire et retourner la 1er line du fichier 
	function litFormat (InputFile : file_type; format : string) return string;

	--Fonction qui va lire et retourner un point
	function litPoint return T_Point;






end lectureFichier; 
