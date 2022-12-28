import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.thermalexpansion.Pulverizer;
import mods.extrautils2.Crusher;
import mods.appliedenergistics2.Grinder;

print(" =================== Fixes =================== ");
print(" ============================================= ");
/*
    Fixes a few issues
*/

//======= Extreme Reactor's Graphite =======
//
	furnace.addRecipe(<bigreactors:dustgraphite>, <ore:dustCoal>, 1);
	furnace.addRecipe(<bigreactors:dustgraphite>, <ore:dustCharcoal>, 1);
	furnace.addRecipe(<bigreactors:blockgraphite>, <ore:blockCoal>, 1);
	furnace.addRecipe(<bigreactors:blockgraphite>, <ore:blockCharcoal>, 1);
	
//======= EnderIO Compatibility ======
//
    //Thermal Pulverizer
	mods.thermalexpansion.Pulverizer.addRecipe(<enderio:item_material:36>, <enderio:item_material:14>, 2000);
	mods.thermalexpansion.Pulverizer.addRecipe(<enderio:item_material:37>, <enderio:item_material:16>, 2000);
	mods.thermalexpansion.Pulverizer.addRecipe(<enderio:item_material:34>, <enderio:item_material:19>, 2000);

	//Extra Utilities 2 Crusher
	mods.extrautils2.Crusher.add(<enderio:item_material:36>, <enderio:item_material:14>);
	mods.extrautils2.Crusher.add(<enderio:item_material:37>, <enderio:item_material:16>);
	mods.extrautils2.Crusher.add(<enderio:item_material:34>, <enderio:item_material:19>);

	//Actually Additions Crusher
	mods.actuallyadditions.Crusher.addRecipe(<enderio:item_material:36>, <enderio:item_material:14>);
	mods.actuallyadditions.Crusher.addRecipe(<enderio:item_material:37>, <enderio:item_material:16>);
	mods.actuallyadditions.Crusher.addRecipe(<enderio:item_material:34>, <enderio:item_material:19>);

	//Mekanism Crusher
	mods.mekanism.crusher.addRecipe(<enderio:item_material:14>, <enderio:item_material:36>);
	mods.mekanism.crusher.addRecipe(<enderio:item_material:16>, <enderio:item_material:37>);
	mods.mekanism.crusher.addRecipe(<enderio:item_material:19>, <enderio:item_material:34>);

	//Immersive Engineering Crusher
	mods.immersiveengineering.Crusher.addRecipe(<enderio:item_material:36>, <enderio:item_material:14>, 2048);
	mods.immersiveengineering.Crusher.addRecipe(<enderio:item_material:37>, <enderio:item_material:16>, 2048);
	mods.immersiveengineering.Crusher.addRecipe(<enderio:item_material:34>, <enderio:item_material:19>, 2048);
	
	//Applied Energistics 2 GrindStone
	Grinder.addRecipe(<enderio:item_material:36>, <enderio:item_material:14>, 4);
	Grinder.addRecipe(<enderio:item_material:37>, <enderio:item_material:16>, 4);
	Grinder.addRecipe(<enderio:item_material:34>, <enderio:item_material:19>, 4);
//
