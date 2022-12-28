import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print(" =================== RandomThings =================== ");
print(" ==================================================== ");
/*
	Random Things recipes
*/

//======= Time in a Bottle =======
//
    recipes.remove(<randomthings:timeinabottle>);

    recipes.addShaped("Time_in_a_Bottle", <randomthings:timeinabottle>, [
		[<ore:blockGold>, <ore:gearGold>, <ore:blockGold>],
		[<ore:manaDiamond>, <rftools:clock_module>, <ore:manaDiamond>], 
		[<ore:blockLapis>, <lepidodendron:glass_jar_item>, <ore:blockLapis>]
	]);

//======= Eclipsed Clock =======
//
    recipes.remove(<randomthings:eclipsedclock>);

    recipes.addShaped("Eclipsed_Clock", <randomthings:eclipsedclock>, [
		[<cyclicmagic:crystallized_obsidian>, <ore:gearGold>, <cyclicmagic:crystallized_obsidian>],
		[<ore:blockGold>, <randomthings:ingredient:1>, <ore:blockGold>], 
		[<cyclicmagic:crystallized_obsidian>, <ore:gearGold>, <cyclicmagic:crystallized_obsidian>]
	]);

//======= Inventory Tester =======
//
    recipes.remove(<randomthings:inventorytester>);

    recipes.addShaped("Inventory Tester", <randomthings:inventorytester> * 2, [
		[null, <ore:stone>, null],
		[<ore:stone>, <minecraft:comparator>, <ore:stone>], 
		[null, <ore:chest>, null]
	]);

//======= Glowing Mushroom =======
//
	recipes.addShapeless(<randomthings:glowingmushroom>, [<ore:listAllmushroom>, <ore:dustGlowstone>]);

//
