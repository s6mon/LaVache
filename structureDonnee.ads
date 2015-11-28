-------------------------Structure de données--------------------------
--DESCRIPTION
	--Définir un point
	--Définir un triangle




package structure_donnee is

	type T_Point is array (1..3) of float;
	type T_Triangle is array (1..3) of T_Point;
	type Nb_Sommet is new integer;
	type Nb_Face is new integer;
	
	
-----------------------------------------------------
--Structure liste de triangles
	type T_CelluleTri;			
	type T_ListOfTri is access all T_CelluleTri;
	type T_CelluleTri is
		record
			Triangle : T_Triangle;
			Suivant : T_ListOfTri;
		end record;
--primitives associées
procedure ListeTri_add (L : in out T_ListOfTri; Tri : T_Triangle); --Ajoute un triangle a la liste
procedure ListeTri_get (L : in out T_ListOfTri; Tab : in out  T_Triangle); --prend une liste et un index et retourne un triangle
function ListeTri_compare (L : T_ListOfTri; TriW : T_Triangle) return integer; --prend une liste et une coordonee Z : si Z < => "-1"; si = => "0"; si > => "+1"
procedure ListeTri_deplace (L : in T_ListOfTri; iCell : in T_CelluleTri; nb : integer);
function trouveMinZ (T : T_Triangle) return float;
procedure lit_et_aff (L : in T_ListOfTri);

end structure_donnee;





















































