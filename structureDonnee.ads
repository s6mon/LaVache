-------------------------Structure de données--------------------------
--DESCRIPTION
	--Définir un point
	--Définir un triangle




package structureDonnee is

--Définition de type

	type T_Point is array (1..3) of integer;
	type T_Triangle is array (1..3) of Point;
	type T_Nb_Sommet is integer;
	type T_Nb_Face is integer;
	
------------------------------
--Structure liste de triangles
	type T_CelluleTri;			
	type T_ListOfTri is access T_CelluleTri;
	type T_CelluleTri is
		record
			Triangle : T_Triangle;
			Suivant : T_ListOfTri;
		end record;

--primitives associées
procedure ListeTri_add (L : T_ListOfTri, Tri : T_Triangle) --Ajoute un triangle a la liste
function ListeTri_get (L : T_ListOfTri) return T_Triangle; --prend une liste et un index et retourne un triangle
function ListeTri_compare (L : T_ListOfTri, TriActu : T_Triangle) return integer; --prend une liste et une coordonee Z : si Z < => "-1"; si = => "0"; si > => "+1"
function ListeTri_deplace (L : T_ListOfTri, nb : integer) return T_ListOfTri; --Retourne la longueur de la liste

----------------------------------------
--Structure liste de listes de triangles
	type T_CelluleList;
	type T_ListOfList is access T_CelluleList;
	type T_CelluleList is
		record
			ListOfTri : T_ListOfTri;
			Indice : integer;
			Suivant : T_ListOfList;
		end record;

--primitive associées








------------------------

function trouveMinZ (T: T_triangle) return float;


end structureDonnee;
