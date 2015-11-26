-------------------------Structure de données--------------------------
--DESCRIPTION
	--Définir un point
	--Définir un triangle

package body structureDonnee is


begin

--Primitives des liste de triangles
procedure ListeTri_add (L : T_ListOfTri, Tri : T_Triangle) is
Cell, nCell : T_CelluleTri;
begin
	nCell.Triangle := Tri;
	if L = NULL
	then
		L := new T_CelluleOfTri'(Cell);
	else
		Cell := L.all;
		nCell.Suivant := Cell.Suivant;
		Cell.Suivant := nCell;
	end if;
end ListeTri;


function ListeTri_get (L : T_ListOfTri) return T_Triangle;

Triangle : T_Triangle;
Cell : T_CelluleTri;
begin

	if L = NULL
	then
		put("structureDonnee.adb : ListeTri_get => Liste vide");
	else
		Cell := L.all;		
		Triangle := Cell.Triangle;
		L.all := Cell.Suivant;
	end if;
return Triangle;
end ListeTri_get;

function ListeTri_compare (L : T_ListOfTri, TriActu :T_Triangle) return integer is

Cell : T_CelluleTri;
Tri : T_Triangle;
i : integer;
begin
	if (L = NULL)
	then
		put("structureDonnee.adb : ListeTri_compare => Liste vide");
	else
		Cell := L.all;
		Triangle := Cell.Triangle;
		i := 0;
		while (trouveMinZ(TriActu)) >= (trouveMinZ(Tri)) loop
			i := i + 1;
			Cell := Cell.Suivant;
		end loop;
return i;
end ListeTri_compare;

function ListeTri_deplace (L : T_ListOfTri, nb : integer) return T_ListOfTri is

Cell : T_CelluleTri;
i : integer;
Lr : T_ListOfTri;
begin

	if L = NULL
	then
		put("structureDonnee.adb : ListeTri_deplace => Liste vide");
	else
		i := 0;
		Cell := L.all;
		While (i /= nb and Cell.Suivant /= NULL) loop;
			i := i + 1;
			Cell := Cell.Suivant;
		end loop;
	end if;
	if (i = nb)
	then
		Lr.all := Cell;
	else
		put("structureDonnee.adb : ListeTri_deplace => Le ième elmt n'existe pas");
	end if;
return Lr;
end ListeTri_deplace;
		


function trouveMinZ (T : T_Triangle) return float;

p1, p2, p3 : T_Point;
minZ : float;
begin

p1 := T(1);
p2 := T(2);
p3 := T(3);

if p1(3) <= p2(3)
	then
		if p1(3) <= p3(3)
		then
			minZ := p1(3);
		else
			minZ := p3(3);
		end if;
	else
		if p2(3) <= p3(3)
		then
			minZ := p2(3);
		else
			minZ := p3(3);
		end if;
	end if;
return minZ;
end trouveMinZ;





end structureDonnee;




















