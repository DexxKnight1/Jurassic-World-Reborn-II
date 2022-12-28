import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print(" =================== Jurassic World Reborn Mod =================== ");
print(" ================================================================= ");
/*
	This script is dedicated Jurassic World Reborn Mod
 recipes
*/

//======= Feeder =======
//
    recipes.remove(<rebornmod:feeder>);

	recipes.addShaped("Feeder", <rebornmod:feeder>, [
		[<minecraft:iron_trapdoor>, <minecraft:dispenser>, <minecraft:iron_trapdoor>],
		[<ore:ingotIron>, <ore:chest>, <ore:ingotIron>],
		[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
    ]);

//======= Bug Farming Crate =======
//
    recipes.remove(<rebornmod:bug_crate>);

	recipes.addShaped("Bug Farming Crate", <rebornmod:bug_crate>, [
		[<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>],
		[<ore:plankWood>, <ore:chest>, <ore:plankWood>],
		[<ore:slabStone>, <ore:slabStone>, <ore:slabStone>]
    ]);

//
