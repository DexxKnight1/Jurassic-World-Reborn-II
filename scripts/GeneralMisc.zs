import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print(" =================== General misc =================== ");
print(" ==================================================== ");
/*
	This script is dedicated general misc recipes
*/

//====== Slag Convert ======
// able to cycle between different types if specific one needed
//
	recipes.addShapeless("ImmersiveSlag", <immersiveengineering:material:7>, [<thermalfoundation:material:864>]);
	recipes.addShapeless("ThermalSlag", <thermalfoundation:material:864>, [<immersiveengineering:material:7>]);
	<ore:itemSlag>.add(<immersiveengineering:material:7>);
	<ore:itemSlag>.add(<thermalfoundation:material:864>);
	<ore:crystalSlag>.addAll(<ore:itemSlag>);

//
