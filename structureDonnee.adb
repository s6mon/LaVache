-------------------------Structure de données--------------------------
--DESCRIPTION
	--Définir un point
	--Définir un triangle

package body structure_donnee is

-------------------------------------------------------------------------
--------------------Primitives des liste de triangles--------------------
-------------------------------------------------------------------------
procedure ListeTri_add (L : in out T_ListOfTri; Tri : T_Triangle) is

nCell : T_CelluleTri;
nb : integer;
begin
	nCell.Triangle := Tri;
	if L = NULL
	then
		nCell.Suivant := NULL;
		L := new T_CelluleTri'(nCell);
	else
		nb := ListeTri_compare(L, Tri);
		ListeTri_deplace (L, nCell, nb);
	end if;
end ListeTri_add;



procedure ListeTri_get (L : in out T_ListOfTri; Tab : in out T_Triangle) is

Cell : aliased T_CelluleTri;
begin

	if L = NULL
	then
		put("structureDonnee.adb : ListeTri_get => Liste vide");
	else
		Cell := L.all;		
		Tab := Cell.Triangle;
		L := Cell'unchecked_access;
	end if;
end ListeTri_get;


--Indique le ième triangle predecesseur de celui qu'on veut inserer
function ListeTri_compare (L : T_ListOfTri; TriW : T_Triangle) return integer is

Cell : T_ListOfTri;
TriN : T_Triangle;
i : integer;
minW, minN : float;
begin
	minW := trouveMinZ(TriW);
	Cell := L;
	minN := trouveMinZ(Cell.Triangle);
	i := 1;
	while (minW >= minN and Cell.Suivant /= NULL) loop
		i := i + 1;
		Cell := Cell.Suivant;
		TriN := Cell.Triangle;
		minN := trouveMinZ(TriN);		
	end loop;

	if (minW <= minN)
	then
		i := i - 1;
	end if;	
return i;
end ListeTri_compare;

procedure ListeTri_deplace (L : in T_ListOfTri; iCell : in T_CelluleTri; nb : integer) is
pCell : T_ListOfTri;
i : integer := 1;
tCell : T_ListOfTri; --Cellule a ajouter
begin 
	tCell :=  new T_CelluleTri'(iCell);
	pCell := L;
	while (i < nb) loop
		pCell := pCell.all.suivant;
		i := i + 1;
	end loop;
	
	if (pCell.Suivant = NULL)
	then
		tCell.Suivant := NULL;
		pCell.Suivant := tCell;
	else
		tCell.Suivant := pCell.Suivant;
		pCell.Suivant := tCell;
	end if;
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


procedure lit_et_aff (L : in T_ListOfTri) is

pCell : T_ListOfTri;
Tri : T_Triangle;
z : float;
begin
	pCell := L;
	while (pCell /= NULL) loop
		Tri := pCell.all.Triangle;
		z := trouveMinZ(Tri);
		put("on aff le plus petit z : "&float'Image(z));
		new_line;
		pCell := pCell.Suivant;
	end loop;
end lit_et_aff;



end structureDonnee;




















