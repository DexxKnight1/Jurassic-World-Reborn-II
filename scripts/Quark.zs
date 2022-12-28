import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print(" =================== Quark Recipe Conflicts =================== ");
print(" ============================================================== ");
/*
	This script is dedicated Quark recipes
*/

//======= Marble Conversion =======
//
	var marble = <astralsorcery:blockmarble>;

	recipes.removeShaped(<quark:marble:1>);
	recipes.addShapeless("Marble", <quark:marble:1> * 8,
		[marble, marble, marble, marble, marble, marble, marble, marble]
	);
		
//====== Quark Elytra dupe so it shows in JEI ======
//
	recipes.remove(<minecraft:elytra>.withTag({"quark:elytraDye": 0}));

	recipes.addShapeless("Elytra", <minecraft:elytra>.withTag({"quark:elytraDye": 0}), [<minecraft:elytra>.reuse(), <quark:enderdragon_scale>]);

	mods.jei.JEI.addDescription(<quark:enderdragon_scale>,
		"By crafting an Elytra and a Dragon Scale together, the Dragon Scale will take the form of the Elytra",
		"",
		"",
		"This does not consume nor damage the original Elytra"
	);

//====== Acacia ======
//
	recipeQuarkChange("acacia","bookshelf",<quark:custom_bookshelf:3>); 
	recipeQuarkChange("acacia","chest",<quark:custom_chest:3>); 
	recipeQuarkChange("acacia","trapdoor",<quark:acacia_trapdoor:0>); 

//====== Birch ======
//
	recipeQuarkChange("birch","bookshelf",<quark:custom_bookshelf:1>); 
	recipeQuarkChange("birch","chest",<quark:custom_chest:1>); 
	recipeQuarkChange("birch","trapdoor",<quark:birch_trapdoor:0>); 

//====== Dark Oak ======
//
	recipeQuarkChange("darkoak","bookshelf",<quark:custom_bookshelf:4>); 
	recipeQuarkChange("darkoak","chest",<quark:custom_chest:4>); 
	recipeQuarkChange("darkoak","trapdoor",<quark:dark_oak_trapdoor:0>); 

//====== Jungle ======
//
	recipeQuarkChange("jungle","bookshelf",<quark:custom_bookshelf:2>); 
	recipeQuarkChange("jungle","chest",<quark:custom_chest:2>); 
	recipeQuarkChange("jungle","trapdoor",<quark:jungle_trapdoor:0>); 

//====== Spruce ======
//
	recipeQuarkChange("spruce","bookshelf",<quark:custom_bookshelf:0>); 
	recipeQuarkChange("spruce","chest",<quark:custom_chest:0>); 
	recipeQuarkChange("spruce","trapdoor",<quark:spruce_trapdoor:0>); 
		
//====== Function to change recipes ======
//
	function recipeQuarkChange(
		woodKind as string, 
		itemKind as string, 
		itemOutput as IItemStack 
	)
    { 
	    //Define "Associative Array" for plank types
		val plankTypes = {
			acacia : <minecraft:planks:4>,
			birch : <minecraft:planks:2>,
			darkoak : <minecraft:planks:5>,
			jungle : <minecraft:planks:3>,
			spruce : <minecraft:planks:1>,
			oak : <minecraft:planks:0>
		} as IItemStack[string];

		//Define "Associative Array" for Item Types
		val itemTypes = {
			bookshelf : <ore:bookshelf>,
			chest : <ore:chestWood>,
			trapdoor : <ore:trapdoorWood>
		} as IIngredient[string];

		//remove recipe first
		recipes.remove(itemOutput);

    }

//======= Glass Shard =======
//
	recipes.addShaped("Quark/White_Stained_Glass", <minecraft:stained_glass>, [
        [<quark:glass_shards:1>, <quark:glass_shards:1>],
        [<quark:glass_shards:1>, <quark:glass_shards:1>]
    ]);
    recipes.addShaped("Quark/Orange_Stained_Glass", <minecraft:stained_glass:1>, [
        [<quark:glass_shards:2>, <quark:glass_shards:2>],
        [<quark:glass_shards:2>, <quark:glass_shards:2>]
    ]);
    recipes.addShaped("Quark/Magenta_Stained_Glass", <minecraft:stained_glass:2>, [
        [<quark:glass_shards:3>, <quark:glass_shards:3>],
        [<quark:glass_shards:3>, <quark:glass_shards:3>]
    ]);
    recipes.addShaped("Quark/Light_Blue_Stained_Glass", <minecraft:stained_glass:3>, [
        [<quark:glass_shards:4>, <quark:glass_shards:4>],
        [<quark:glass_shards:4>, <quark:glass_shards:4>]
    ]);
    recipes.addShaped("Quark/Yellow_Stained_Glass", <minecraft:stained_glass:4>, [
        [<quark:glass_shards:5>, <quark:glass_shards:5>],
        [<quark:glass_shards:5>, <quark:glass_shards:5>]
    ]);
    recipes.addShaped("Quark/Lime_Stained_Glass", <minecraft:stained_glass:5>, [
        [<quark:glass_shards:6>, <quark:glass_shards:6>],
        [<quark:glass_shards:6>, <quark:glass_shards:6>]
    ]);
    recipes.addShaped("Quark/Pink_Stained_Glass", <minecraft:stained_glass:6>, [
        [<quark:glass_shards:7>, <quark:glass_shards:7>],
        [<quark:glass_shards:7>, <quark:glass_shards:7>]
    ]);
    recipes.addShaped("Quark/Gray_Stained_Glass", <minecraft:stained_glass:7>, [
        [<quark:glass_shards:8>, <quark:glass_shards:8>],
        [<quark:glass_shards:8>, <quark:glass_shards:8>]
    ]);
    recipes.addShaped("Quark/Light_Gray_Stained_Glass", <minecraft:stained_glass:8>, [
        [<quark:glass_shards:9>, <quark:glass_shards:9>],
        [<quark:glass_shards:9>, <quark:glass_shards:9>]
    ]);
    recipes.addShaped("Quark/Cyan_Stained_Glass", <minecraft:stained_glass:9>, [
        [<quark:glass_shards:10>, <quark:glass_shards:10>],
        [<quark:glass_shards:10>, <quark:glass_shards:10>]
    ]);
    recipes.addShaped("Quark/Purple_Stained_Glass", <minecraft:stained_glass:10>, [
        [<quark:glass_shards:11>, <quark:glass_shards:11>],
        [<quark:glass_shards:11>, <quark:glass_shards:11>]
    ]);
    recipes.addShaped("Quark/Blue_Stained_Glass", <minecraft:stained_glass:11>, [
        [<quark:glass_shards:12>, <quark:glass_shards:12>],
        [<quark:glass_shards:12>, <quark:glass_shards:12>]
    ]);
    recipes.addShaped("Quark/Brown_Stained_Glass", <minecraft:stained_glass:12>, [
        [<quark:glass_shards:13>, <quark:glass_shards:13>],
        [<quark:glass_shards:13>, <quark:glass_shards:13>]
    ]);
    recipes.addShaped("Quark/Green_Stained_Glass", <minecraft:stained_glass:13>, [
        [<quark:glass_shards:14>, <quark:glass_shards:14>],
        [<quark:glass_shards:14>, <quark:glass_shards:14>]
    ]);
    recipes.addShaped("Quark/Red_Stained_Glass", <minecraft:stained_glass:14>, [
        [<quark:glass_shards:15>, <quark:glass_shards:15>],
        [<quark:glass_shards:15>, <quark:glass_shards:15>]
    ]);
    recipes.addShaped("Quark/Black_Stained_Glass", <minecraft:stained_glass:15>, [
        [<quark:glass_shards:16>, <quark:glass_shards:16>],
        [<quark:glass_shards:16>, <quark:glass_shards:16>]
    ]);

//======= Weather Sensor =======
//
	recipes.remove(<quark:rain_detector>);
    
	recipes.addShaped("WeatherSensor", <quark:rain_detector>, [
		[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
		[<minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz>],
		[<minecraft:purpur_slab>, <minecraft:purpur_slab>, <minecraft:purpur_slab>]
	]);
	
//
