import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;

print(" =================== Tinkers Construct =================== ");
print(" ========================================================= ");
/*
	This script is dedicated Tinkers Construct recipes
*/

//====== Iron Stick =======
//
    recipes.remove(<ore:stickIron>);

    <ore:stickIron>.add(<tconstruct:tool_rod>.withTag({Material: "iron"}));

//======= Item Rack =======
//
	recipes.remove(<tconstruct:rack:0>);
    
	recipes.addShapeless("itemrack",<tconstruct:rack:0>, [<tconstruct:rack:1>]);

//======= Tinker's Smeltery Recipes =======
//
	//Anvils
	mods.tconstruct.Melting.addRecipe(<liquid:iron> * 3312, <minecraft:anvil:1>);
	mods.tconstruct.Melting.addRecipe(<liquid:iron> * 2160, <minecraft:anvil:2>);

	//All Minecarts
	mods.tconstruct.Melting.addRecipe(<liquid:iron> * 720, <minecraft:tnt_minecart>);
	mods.tconstruct.Melting.addRecipe(<liquid:iron> * 720, <minecraft:furnace_minecart>);
	mods.tconstruct.Melting.addRecipe(<liquid:iron> * 1440, <minecraft:hopper_minecart>);

	//Minecart With Mana Pool
	mods.tconstruct.Melting.addRecipe(<liquid:iron> * 720, <botania:poolminecart>);

//
