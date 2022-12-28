import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print(" =================== Applied Energistics 2 =================== ");
print(" ============================================================= ");
/*
	This script is dedicated Applied Energistics 2 recipes
*/

//====== Quartz Grindstone ======
//
	recipes.remove(<appliedenergistics2:grindstone>);

	recipes.addShaped("GrindStone", <appliedenergistics2:grindstone>, [
		[<minecraft:stone>, <ore:gearAluminum>, <minecraft:stone>],
		[<appliedenergistics2:material>, <minecraft:stone>, <appliedenergistics2:material>],
		[<minecraft:cobblestone>, <appliedenergistics2:material>, <minecraft:cobblestone>]
    ]);

//
//====== Press Recipes =======
//
	var pressCalc = <appliedenergistics2:material:13>;
	var pressEngi = <appliedenergistics2:material:14>;
	var pressLogi = <appliedenergistics2:material:15>;
	var pressSili = <appliedenergistics2:material:19>;
	var blockSkyS = <appliedenergistics2:sky_stone_block>;
	var dustSkySt = <appliedenergistics2:material:45>;
	var crystalCertusPure = <appliedenergistics2:material:10>;
	var siliconEIO = <enderio:item_material:5>;
	
	//SkyStone Dust
	mods.mekanism.enrichment.addRecipe(blockSkyS, dustSkySt);
	mods.mekanism.crusher.addRecipe(blockSkyS, dustSkySt);
	mods.thermalexpansion.Pulverizer.addRecipe(dustSkySt, blockSkyS, 400);
	mods.actuallyadditions.Crusher.addRecipe(dustSkySt, blockSkyS);
	
	//Mek Infuser recipes
	mods.mekanism.infuser.addRecipe("CARBON",   80, dustSkySt, pressSili);
	mods.mekanism.infuser.addRecipe("REDSTONE", 80, dustSkySt, pressLogi);
	mods.mekanism.infuser.addRecipe("DIAMOND",  80, dustSkySt, pressEngi);
	mods.mekanism.infuser.addRecipe("TIN",      80, dustSkySt, pressCalc);
	
	//Convert from one to another
	recipes.addShapeless("SiliconPress", pressSili, [pressLogi, dustSkySt, dustSkySt]);
	recipes.addShapeless("LogicPress", pressLogi, [pressEngi, dustSkySt, dustSkySt]);
	recipes.addShapeless("EngPress", pressEngi, [pressCalc, dustSkySt, dustSkySt]);
	recipes.addShapeless("CalcPress", pressCalc, [pressSili, dustSkySt, dustSkySt]);
	
	//Empowerer recipes (using function to make 4x recipes to accept any press as input)
	empPressRecipe(siliconEIO,                pressSili, [48,  55,  73]);
	empPressRecipe(<minecraft:gold_block>,    pressLogi, [255, 195, 5]);
	empPressRecipe(<minecraft:diamond_block>, pressEngi, [0,   190, 255]);
	empPressRecipe(crystalCertusPure,         pressCalc, [240, 248, 255]);
	
	function empPressRecipe(x as IItemStack, y as IItemStack, z as float[]){
		//                  x = input item   y = out press    z = color


		var blockSkyS = <appliedenergistics2:sky_stone_block>;
		var dustSkySt = <appliedenergistics2:material:45>;
		var pressurePlate = <minecraft:heavy_weighted_pressure_plate>;
		
		mods.actuallyadditions.Empowerer.addRecipe(y, pressurePlate, x, blockSkyS, dustSkySt, dustSkySt, 5000, 200, z);
		mods.actuallyadditions.Empowerer.addRecipe(y, pressurePlate, x, blockSkyS, dustSkySt, dustSkySt, 5000, 200, z);
		mods.actuallyadditions.Empowerer.addRecipe(y, pressurePlate, x, blockSkyS, dustSkySt, dustSkySt, 5000, 200, z);
		mods.actuallyadditions.Empowerer.addRecipe(y, pressurePlate, x, blockSkyS, dustSkySt, dustSkySt, 5000, 200, z);
	}

//======= Description and Tooltip to AE2 hidden Facades =======
//
	var stoneFacade = <appliedenergistics2:facade>.withTag({damage: 0, item: "minecraft:stone"}) as IItemStack;
	#Description
	mods.jei.JEI.addDescription(stoneFacade, "Facades are not disabled, just hidden in JEI. To craft facades, place the block of your choice in the centre of the crafting grid (3x3) and 4x AE2 cable anchors on all adjacent sides of that block.");
	#Tooltip
	stoneFacade.addTooltip("Check item description using JEI recipe lookup for information on crafting.");

//======= AE2 Suff "Crystal Growth Chamber" =======
//
	recipes.remove(<ae2stuff:grower>);
	
	recipes.addShaped("Crystal Growth Chamber", <ae2stuff:grower>, [
		[<appliedenergistics2:quartz_growth_accelerator>, <ore:blockHopper>, <appliedenergistics2:quartz_growth_accelerator>],
		[<appliedenergistics2:quartz_growth_accelerator>, <ore:chest>, <appliedenergistics2:quartz_growth_accelerator>],
		[<appliedenergistics2:quartz_growth_accelerator>, <appliedenergistics2:part:16>, <appliedenergistics2:quartz_growth_accelerator>]
    ]);

//
