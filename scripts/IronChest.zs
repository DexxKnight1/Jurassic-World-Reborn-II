import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print(" =================== Iron Chest =================== ");
print(" ================================================== ");
/*
	This script is dedicated Iron Chest recipes
*/

//======= VARIABLES =======
//
	# Blocks
	var glass = <minecraft:glass>;
	var na = <ore:iTdOeSnOteXiSt>;
	var glassAny = <ore:blockGlass>;
	var gemDiamond = <minecraft:diamond>;
	var anyDiamond = <ore:gemDiamond>;
	var obsidianBlock = <minecraft:obsidian>;

	# Items
	var shuShell = <minecraft:shulker_shell>;

	# Arrays
	var boxes as IItemStack[] = [
		<ironchest:iron_chest>,
		<ironchest:iron_shulker_box_white>,
		<ironchest:iron_shulker_box_orange>,
		<ironchest:iron_shulker_box_magenta>,
		<ironchest:iron_shulker_box_light_blue>,
		<ironchest:iron_shulker_box_yellow>,
		<ironchest:iron_shulker_box_lime>,
		<ironchest:iron_shulker_box_pink>,
		<ironchest:iron_shulker_box_gray>,
		<ironchest:iron_shulker_box_silver>,
		<ironchest:iron_shulker_box_cyan>,
		<ironchest:iron_shulker_box_purple>,
		<ironchest:iron_shulker_box_blue>,
		<ironchest:iron_shulker_box_brown>,
		<ironchest:iron_shulker_box_green>,
		<ironchest:iron_shulker_box_red>,
		<ironchest:iron_shulker_box_black>
	];

	var colors as string[] = [
		'white',
		'orange',
		'magenta',
		'light_blue',
		'yellow',
		'lime',
		'pink',
		'gray',
		'silver',
		'cyan',
		'purple',
		'blue',
		'brown',
		'green',
		'red',
		'black'
	];
		
	var mat as IIngredient[string] = {
		iron: <ore:ingotIron>,
		gold: <ore:ingotGold>,
		diamond: anyDiamond,
		copper: <ore:ingotCopper>,
		silver: <ore:ingotSilver>,
		crystal: <minecraft:glass>,
		obsidian: <minecraft:obsidian>
	};
		
	var chest as IItemStack[string] = {
		vanilla: <minecraft:chest>,
		iron: <ironchest:iron_chest>,
		gold: <ironchest:iron_chest:1>,
		diamond: <ironchest:iron_chest:2>,
		copper: <ironchest:iron_chest:3>,
		silver: <ironchest:iron_chest:4>,
		crystal: <ironchest:iron_chest:5>,
		obsidian: <ironchest:iron_chest:6>
	};
		
	var shulk as string[] = [
		'iron',
		'gold',
		'diamond', 
		'copper',
		'silver',
		'crystal',
		'obsidian'
	];
		
//======= FUNCTIONS =======
//
	function replaceSpaces (inString as string) {
		return inString.replace(' ', '_').toLowerCase;
	}
		
	function chestAdd (recipeName as string[], outputs as IItemStack[], material as IIngredient, center as IItemStack) {
		var midMaterial = material;
		var mkName = replaceSpaces(center.displayName ~ '_to_' ~ outputs[0].displayName);
		if (recipeName[0] has 'ha') {midMaterial = <minecraft:glass>;}
		if (recipeName.length != 1) {mkName = replaceSpaces(recipeName[1]);}
		if (!(recipeName[0] has 'si')) {
			if (outputs.length == 1) {
				recipes.addShaped(mkName, outputs[0], [[material,midMaterial,material],[midMaterial,center.marked('itemIn'),midMaterial],[material,midMaterial,material]], function(out, ins, cinfo) {if (ins.itemIn.hasTag) {var inTag = ins.itemIn.tag; return out.withTag(inTag);} else {return out;}}, null);
			} else {
				recipes.addShaped(mkName, outputs[0], [[material,material,material],[material,center.marked('itemIn').transformReplace(outputs[1]),material],[material,material,material]], function(out, ins, cinfo) {if (ins.itemIn.hasTag) {var inTag = ins.itemIn.tag; return out.withTag(inTag);} else {return out;}}, null);
			}
		} else {
			recipes.addShapeless(mkName, outputs[0], [center.marked('itemIn').transformReplace(outputs[1])], function(out, ins, cinfo) {if (ins.itemIn.hasTag) {var inTag = ins.itemIn.tag; return out.withTag(inTag);} else {return out;}}, null);
		}
	}
		
	function removeThese (base as string, inputs as string[][]) {
		for newChest in inputs {
			recipes.removeByRecipeName('ironchest:' ~ base ~ '/' ~ newChest[1] ~ '/' ~ newChest[0] ~ '_' ~ newChest[1] ~ '_' ~ base);
		}
	}

//======= ITERATORS	=======
//
	for i, name in shulk {
		var newChest = <ironchest:iron_chest>.definition.makeStack(i);
		var purpleBox = <ironchest:iron_shulker_box_purple>.definition.makeStack(i);
		
		recipes.addShaped(name ~ '_chest_to_' ~ name ~ '_shulker_box_purple', purpleBox, [[shuShell],[newChest.marked('itemIn')],[shuShell]], function (out, ins, cinfo) {if (ins.itemIn.hasTag) {return out.withTag(ins.itemIn.tag);} else {return out;}}, null);
	}
	
	for i, box in colors {
		var gold = boxes[i+1].definition.makeStack(1);
		var diamond = boxes[i+1].definition.makeStack(2);
		var goldDiaRecipes = 'shulker/' ~ box ~ '/diamond/gold_diamond_shulker_box';
		recipes.removeByRecipeName('ironchest:' ~ goldDiaRecipes);
		recipes.removeByRecipeName('ironchest:shulker/' ~ box ~ '/crystal/diamond_crystal_shulker_box');
		recipes.addShaped(goldDiaRecipes, diamond, [[glassAny,gemDiamond,glassAny],[glassAny,gold.marked('shulker'),glassAny],[glassAny,gemDiamond,glassAny]], function(out, ins, cinfo) {var inTag = ins.shulker.tag; return out.withTag(inTag);}, null);
	}
	
	for i, box in boxes {
		var diamond = box.definition.makeStack(2);
		var crystal = box.definition.makeStack(5);
		var obsidian = box.definition.makeStack(6);
		
		chestAdd(['single'], [diamond, glass * 8], na, crystal);
		chestAdd(['single'], [diamond, obsidianBlock * 8], na, obsidian);
		
		chestAdd([''], [crystal], glass, diamond);
		chestAdd([''], [crystal, obsidianBlock * 8], glass, obsidian);
		chestAdd([''], [obsidian, glass * 8], obsidianBlock, crystal);
	}
	
//======= RECIPES =======
//
	# Remove:
	removeThese('chest', [
		['vanilla','copper'],
		['vanilla','iron'],
		['copper','silver'],
		['copper','iron'],
		['iron','gold'],
		['iron','silver'],
		['silver','gold'],
		['silver','diamond'],
		['gold','diamond'],
		['diamond','crystal'],
		['diamond','obsidian']
	]);
	# Add:
	chestAdd([''], [chest.copper], mat.copper, chest.vanilla);
	chestAdd([''], [chest.iron], mat.iron, chest.vanilla);
	chestAdd([''], [chest.silver], mat.silver, chest.copper);
	chestAdd(['ha'], [chest.iron], mat.iron, chest.copper);
	chestAdd([''], [chest.gold], mat.gold, chest.iron);
	chestAdd(['ha'], [chest.gold], mat.gold, chest.silver);
	chestAdd(['ha'], [chest.silver], mat.silver, chest.iron);
	chestAdd([''], [chest.obsidian], mat.obsidian, chest.diamond);
		
	recipes.addShaped(replaceSpaces(chest.silver.displayName ~ '_to_' ~ chest.diamond.displayName), chest.diamond, [[glass,glass,glass],[glass,chest.silver.marked('itemIn'),glass],[anyDiamond,anyDiamond,anyDiamond]], function(out, ins, cinfo) {if (ins.itemIn.hasTag) {var inTag = ins.itemIn.tag; return out.withTag(inTag);} else {return out;}}, null);

	recipes.addShaped(replaceSpaces(chest.gold.displayName ~ '_to_' ~ chest.diamond.displayName), chest.diamond, [[glass,glass,glass],[anyDiamond,chest.gold.marked('itemIn'),anyDiamond],[glass,glass,glass]], function(out, ins, cinfo) {if (ins.itemIn.hasTag) {var inTag = ins.itemIn.tag; return out.withTag(inTag);} else {return out;}}, null);

//
