----------------Principal-------------------


--Appel de package
with Ada.Task_Identification;  use Ada.Task_Identification;




procedure main is 

arg : natural := Argument_Count;
InputFile : file_type;

format : string (1..12);

begin

	--Ouverture et controle du type du fichier d'entrée
	Open(File => InputFile,
	     Mode => In_File,
	     Name => argument(1));

	format := litFormat(InputFile, format);
	if not(format(1..3) = "OFF")
	then
		put("Ce n'est pas un fichier OFF");

		--la suite du programme sera la
	else
		put("OK c'est un fichier OFF");
	end if;













end main;
