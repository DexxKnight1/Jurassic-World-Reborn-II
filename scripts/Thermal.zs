import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print(" =================== Thermal Series =================== ");
print(" ====================================================== ");
/*
	Thermal Series recipes
*/

//======= Machine Frame =======
//

    recipes.remove(<thermalexpansion:frame>);

    recipes.addShaped("Machine_Frafme", <thermalexpansion:frame>, [
        [<ore:plateIron>, <tconstruct:clear_glass>, <ore:plateIron>],
        [<tconstruct:clear_glass>, <ore:gearSilver>, <tconstruct:clear_glass>],
        [<ore:plateIron>, <tconstruct:clear_glass>, <ore:plateIron>]
    ]);

//====== Steel Ingot ======
//
    recipes.addShaped(<thermalfoundation:material:160>, [
        [<ore:dustObsidian>, <ore:dustCoal>, <ore:dustObsidian>],
        [<ore:dustCoal>, <ore:ingotAlubrass>, <ore:dustCoal>],
        [<ore:dustObsidian>, <ore:dustCoal>, <ore:dustObsidian>]
    ]);

//
