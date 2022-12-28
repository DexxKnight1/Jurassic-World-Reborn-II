import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print(" =================== OreDictionary =================== ");
print(" ===================================================== ");
/*
    Anything regarding oredict that doesn't need it's own dedicated script file
*/

//======= Mushrooms =======
//
    <ore:listAllmushroom>.add(<botania:mushroom:0>);
    <ore:listAllmushroom>.add(<botania:mushroom:1>);
    <ore:listAllmushroom>.add(<botania:mushroom:2>);
    <ore:listAllmushroom>.add(<botania:mushroom:3>);
    <ore:listAllmushroom>.add(<botania:mushroom:4>);
    <ore:listAllmushroom>.add(<botania:mushroom:5>);
    <ore:listAllmushroom>.add(<botania:mushroom:6>);
    <ore:listAllmushroom>.add(<botania:mushroom:7>);
    <ore:listAllmushroom>.add(<botania:mushroom:8>);
    <ore:listAllmushroom>.add(<botania:mushroom:9>);
    <ore:listAllmushroom>.add(<botania:mushroom:10>);
    <ore:listAllmushroom>.add(<botania:mushroom:11>);
    <ore:listAllmushroom>.add(<botania:mushroom:12>);
    <ore:listAllmushroom>.add(<botania:mushroom:13>);
    <ore:listAllmushroom>.add(<botania:mushroom:14>);
    <ore:listAllmushroom>.add(<botania:mushroom:15>);
    <ore:listAllmushroom>.add(<biomesoplenty:mushroom:0>);
    <ore:listAllmushroom>.add(<biomesoplenty:mushroom:1>);
    <ore:listAllmushroom>.add(<biomesoplenty:mushroom:2>);
    <ore:listAllmushroom>.add(<biomesoplenty:mushroom:3>);
    <ore:listAllmushroom>.add(<biomesoplenty:mushroom:4>);
    <ore:listAllmushroom>.add(<biomesoplenty:mushroom:5>);
    <ore:listAllmushroom>.add(<erebus:dark_capped_mushroom>);
    <ore:listAllmushroom>.add(<erebus:sarcastic_czech_mushroom>);
    <ore:listAllmushroom>.add(<erebus:grandmas_shoes_mushroom>);
    <ore:listAllmushroom>.add(<erebus:dutch_cap_mushroom>);
    <ore:listAllmushroom>.add(<erebus:kaizers_fingers_mushroom>);
    <ore:listAllmushroom>.add(<thebetweenlands:flat_head_mushroom_item>);
    <ore:listAllmushroom>.add(<thebetweenlands:black_hat_mushroom_item>);
    <ore:listAllmushroom>.add(<thebetweenlands:bulb_capped_mushroom_item>);

//======= Atum Relics =======
//
    var relicNames = [
	    "eyes_of_atum",
	    "body_of_atum",
	    "legs_of_atum",
	    "feet_of_atum",
	    "atums_will",
	    "atums_protection",
	    "atums_bounty",
	    "atums_homecoming",
	    "halo_of_ra",
	    "body_of_ra",
	    "legs_of_ra",
	    "feet_of_ra",
	    "ras_fury",
	    "ptahs_decadence",
	    "ptahs_undoing",
	    "gebs_toil",
	    "gebs_grounding",
	    "gebs_might",
	    "tefnuts_rain",
	    "tefnuts_call",
	    "tefnuts_blessing",
	    "shus_breath",
	    "shus_exile",
	    "shus_swiftness",
	    "horuss_soaring",
	    "horuss_ascension",
	    "seths_sting",
	    "seths_venom",
	    "isis_healing",
	    "montus_blast",
	    "montus_strike",
	    "anubiss_mercy",
	    "anubiss_wrath",
	    "nuits_vanishing",
	    "nuits_duality",
	    "nuits_ire",
	    "nuits_quarter",
	    "anputs_hunger"
    ] as string[];

    for relic in relicNames {<ore:relicItemAtum>.add(itemUtils.getItem("atum:"~relic));}

//====== Dye Oredict ======
//
	var genericdye = <ore:dye> as IOreDictEntry;
	var dyeoredicts = [
		<ore:dyeBlack>,
		<ore:dyeRed>,
		<ore:dyeGreen>,
		<ore:dyeBrown>,
		<ore:dyeBlue>,
		<ore:dyePurple>,
		<ore:dyeCyan>,
		<ore:dyeLightGray>,
		<ore:dyeGray>,
		<ore:dyePink>,
		<ore:dyeLime>,
		<ore:dyeYellow>,
		<ore:dyeLightBlue>,
		<ore:dyeMagenta>,
		<ore:dyeOrange>,
		<ore:dyeWhite>
	] as IOreDictEntry[];
	
	for x in dyeoredicts { genericdye.addAll(x); }
	//Conversions
	recipes.addShapeless("dyeconvert00", <minecraft:dye:0> * 3, [<ore:dyeBlack>, <ore:dyeBlack>, <ore:dyeBlack>]);              //Ink Sac
	recipes.addShapeless("dyeconvert01", <minecraft:dye:1> * 3, [<ore:dyeRed>, <ore:dyeRed>, <ore:dyeRed>]);                    //Rose Red
	recipes.addShapeless("dyeconvert02", <minecraft:dye:2> * 3, [<ore:dyeGreen>, <ore:dyeGreen>, <ore:dyeGreen>]);              //Cactus Green
	recipes.addShapeless("dyeconvert03", <minecraft:dye:3> * 3, [<ore:dyeBrown>, <ore:dyeBrown>, <ore:dyeBrown>]);              //Cocoa Beans
	recipes.addShapeless("dyeconvert04", <minecraft:dye:4> * 3, [<ore:dyeBlue>, <ore:dyeBlue>,  <ore:dyeBlue>]);                //Lapis Lazuli
	recipes.addShapeless("dyeconvert05", <minecraft:dye:5> * 3, [<ore:dyePurple>, <ore:dyePurple>, <ore:dyePurple>]);           //Purple Dye
	recipes.addShapeless("dyeconvert06", <minecraft:dye:6> * 3, [<ore:dyeCyan>, <ore:dyeCyan>, <ore:dyeCyan>]);                 //Cyan Dye
	recipes.addShapeless("dyeconvert07", <minecraft:dye:7> * 3, [<ore:dyeLightGray>, <ore:dyeLightGray>, <ore:dyeLightGray>]);  //Light Gray Dye
	recipes.addShapeless("dyeconvert08", <minecraft:dye:8> * 3, [<ore:dyeGray>, <ore:dyeGray>, <ore:dyeGray>]);                 //Gray Dye
	recipes.addShapeless("dyeconvert09", <minecraft:dye:9> * 3, [<ore:dyePink>, <ore:dyePink>, <ore:dyePink>]);                 //Pink Dye
	recipes.addShapeless("dyeconvert10", <minecraft:dye:10> * 3, [<ore:dyeLime>, <ore:dyeLime>, <ore:dyeLime>]);                //Lime Dye
	recipes.addShapeless("dyeconvert11", <minecraft:dye:11> * 3, [<ore:dyeYellow>, <ore:dyeYellow>, <ore:dyeYellow>]);          //Dandelion Yellow
	recipes.addShapeless("dyeconvert12", <minecraft:dye:12> * 3, [<ore:dyeLightBlue>, <ore:dyeLightBlue>, <ore:dyeLightBlue>]); //Light Blue Dye
	recipes.addShapeless("dyeconvert13", <minecraft:dye:13> * 3, [<ore:dyeMagenta>, <ore:dyeMagenta>, <ore:dyeMagenta>]);       //Magenta Dye
	recipes.addShapeless("dyeconvert14", <minecraft:dye:14> * 3, [<ore:dyeOrange>, <ore:dyeOrange>, <ore:dyeOrange>]);          //Orange Dye
	recipes.addShapeless("dyeconvert15", <minecraft:dye:15> * 3, [<ore:dyeWhite>, <ore:dyeWhite>, <ore:dyeWhite>]);             //Bone Meal
	
	//Because vanilla could just make 5 more "dye" items? >_>
	recipes.addShapeless("dyeconvert15bop", <biomesoplenty:white_dye> * 3, [<ore:dyeWhite>, <ore:dyeWhite>, <ore:dyeWhite>]);   //BoP Dye
	recipes.addShapeless("dyeconvert04bop", <biomesoplenty:blue_dye>  * 3, [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>]);      //BoP Dye
	recipes.addShapeless("dyeconvert03bop", <biomesoplenty:brown_dye> * 3, [<ore:dyeBrown>, <ore:dyeBrown>, <ore:dyeBrown>]);   //BoP Dye
    recipes.addShapeless("dyeconvert00bop", <biomesoplenty:black_dye> * 3, [<ore:dyeBlack>, <ore:dyeBlack>, <ore:dyeBlack>]);   //Bop Dye
    recipes.addShapeless("dyeconvert02bop", <biomesoplenty:green_dye> * 3, [<ore:dyeGreen>, <ore:dyeGreen>, <ore:dyeGreen>]);   //BoP Dye
  
//======= String =======
//
    <ore:cropFlax>.remove(<minecraft:string>);

//======= Wand of the Forest =======
//   
    val wandofforest = <ore:botaniawands>;

    wandofforest.add(<botania:twigwand>.withTag({color1: 0, color2: 0, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
    wandofforest.add(<botania:twigwand>.withTag({color1: 1, color2: 1, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
    wandofforest.add(<botania:twigwand>.withTag({color1: 2, color2: 2, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
    wandofforest.add(<botania:twigwand>.withTag({color1: 3, color2: 3, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
    wandofforest.add(<botania:twigwand>.withTag({color1: 4, color2: 4, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
    wandofforest.add(<botania:twigwand>.withTag({color1: 5, color2: 5, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
    wandofforest.add(<botania:twigwand>.withTag({color1: 6, color2: 6, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
    wandofforest.add(<botania:twigwand>.withTag({color1: 7, color2: 7, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
    wandofforest.add(<botania:twigwand>.withTag({color1: 8, color2: 8, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
    wandofforest.add(<botania:twigwand>.withTag({color1: 8, color2: 8, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
    wandofforest.add(<botania:twigwand>.withTag({color1: 9, color2: 9, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
    wandofforest.add(<botania:twigwand>.withTag({color1: 10, color2: 10, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
    wandofforest.add(<botania:twigwand>.withTag({color1: 11, color2: 11, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
    wandofforest.add(<botania:twigwand>.withTag({color1: 12, color2: 12, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
    wandofforest.add(<botania:twigwand>.withTag({color1: 13, color2: 13, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
    wandofforest.add(<botania:twigwand>.withTag({color1: 14, color2: 14, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
    wandofforest.add(<botania:twigwand>.withTag({color1: 15, color2: 15, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));

//======= Quartz =======
//
    <ore:gemQuartz>.add(<appliedenergistics2:material>);
    <ore:gemQuartz>.add(<appliedenergistics2:material:10>);
    <ore:gemQuartz>.add(<appliedenergistics2:material:11>);

//======= Certus Quartz =======
//
    <ore:crystalCertus>.add(<appliedenergistics2:material>);
    <ore:crystalCertus>.add(<appliedenergistics2:material:1>);
    <ore:crystalCertus>.add(<appliedenergistics2:material:10>);
	
    <ore:blockCertusQuartz>.add(<appliedenergistics2:quartz_block>);
    <ore:blockCertusQuartz>.add(<appliedenergistics2:quartz_pillar>);
    <ore:blockCertusQuartz>.add(<appliedenergistics2:chiseled_quartz_block>);

//======= Fluix Crystal =======
//
    <ore:crystalFluix>.add(<appliedenergistics2:material:12>);

//======= Block of Manasteel/Terrasteel/Elementium =======
//
    <ore:blockManasteel>.add(<botania:storage:0>);
    <ore:blockTerrasteel>.add(<botania:storage:1>);
    <ore:blockElementium>.add(<botania:storage:2>);

//======= Fix not being able to add light gray dye to AE2 color applicator =======
//
    <ore:dyeSilver>.addAll(<ore:dyeLightGray>);

//======= Boats =======
//
    val boats = [
		<minecraft:boat>,
		<minecraft:spruce_boat>,
		<minecraft:birch_boat>,
		<minecraft:jungle_boat>,
		<minecraft:acacia_boat>,
		<minecraft:dark_oak_boat>,
		<biomesoplenty:boat_sacred_oak>,
		<biomesoplenty:boat_cherry>,
		<biomesoplenty:boat_umbran>,
		<biomesoplenty:boat_fir>,
		<biomesoplenty:boat_ethereal>,
		<biomesoplenty:boat_magic>,
		<biomesoplenty:boat_mangrove>,
		<biomesoplenty:boat_palm>,
		<biomesoplenty:boat_redwood>,
		<biomesoplenty:boat_willow>,
		<biomesoplenty:boat_pine>,
		<biomesoplenty:boat_hellbark>,
		<biomesoplenty:boat_jacaranda>,
		<biomesoplenty:boat_mahogany>,
		<biomesoplenty:boat_ebony>,
		<biomesoplenty:boat_eucalyptus>
	] as IItemStack[];

	for boat in boats {
		<ore:boat>.add(boat);
	}

//======= Mycelium =======
//
    <ore:mycelium>.add(<biomesoplenty:grass:8>);

//======= Black Quartz =======
//
	<ore:blockBlackQuartz>.add(<actuallyadditions:block_misc>);
	<ore:blockBlackQuartz>.add(<actuallyadditions:block_misc:1>);
	<ore:blockBlackQuartz>.add(<actuallyadditions:block_misc:2>);

//======= Astral Sorcery Rock Crystals =======
//
    <ore:crystalAstralAny>.add(<astralsorcery:itemrockcrystalsimple>.withEmptyTag());
    <ore:crystalAstralAny>.add(<astralsorcery:itemtunedrockcrystal>.withEmptyTag());
    <ore:crystalAstralAny>.add(<astralsorcery:itemcelestialcrystal>.withEmptyTag());
    <ore:crystalAstralAny>.add(<astralsorcery:itemtunedcelestialcrystal>.withEmptyTag());

//======= Cake =======
//
	val cakes = [
		<minecraft:cake>,
		<actuallyadditions:item_food:8>,
		<harvestcraft:carrotcakeitem>,
		<harvestcraft:cheesecakeitem>,
		<harvestcraft:cherrycheesecakeitem>,
		<harvestcraft:chocolatesprinklecakeitem>,
		<harvestcraft:holidaycakeitem>,
		<harvestcraft:pineappleupsidedowncakeitem>,
		<harvestcraft:pumpkincheesecakeitem>,
		<harvestcraft:redvelvetcakeitem>,
		<harvestcraft:lemondrizzlecakeitem>
	] as IItemStack[];

	for cake in cakes {
		<ore:foodCake>.add(cake);
	}

//======= Wither Dust =======
//
	<ore:dustWither>.add(<darkutils:material>);
	<ore:dustWither>.add(<quark:black_ash>);

//======= Astral Sorcery compatibility for Chisel marble =======
//
	<ore:blockMarble>.add(<chisel:marble2:7>);

//======= Fertilizer =======
//
	var fertilizer = <ore:fertilizer>;
	fertilizer.add(<actuallyadditions:item_fertilizer>);
	fertilizer.add(<minecraft:dye:15>);
	fertilizer.add(<industrialforegoing:fertilizer>);

//======= OreDict (wood) =======
//
	val Chest = <ore:chest>;
	val ChestWood = <ore:chestWood>;
	val ChestTrapped = <ore:chestTrapped>;
	val Trapdoor = <ore:trapdoorWood>;
	val Door = <ore:doorWood>;
	val Bed = <ore:bed>;
	val Log = <ore:logWood>;
	val Plank = <ore:plankWood>;
	val WoodSlab = <ore:slabWood>;
	val WoodStair = <ore:stairWood>;
	val WoodButton = <ore:buttonWood>;
	val Stick = <ore:stickWood>;
	val Fence = <ore:fenceWood>;
	val Gate = <ore:fenceGateWood>;
	val Sapling = <ore:treeSapling>;
	val Seed = <ore:seed>;
	val FishRaw = <ore:listAllfishraw>;
	val FishCooked = <ore:listAllfishcooked>;

//

/*
//======= Template: Add to YYYYYY =======
//
	var XXXXX = [
		<>
	] as IItemStack[];
	YYYYYY.addItems(XXXXXX);
*/

//======= Add to Log =======
//
	var LogsToAdd = [
		<minecraft:log:*>,
		<minecraft:log2:*>,
		<biomesoplenty:log_0>,
		<biomesoplenty:log_1>,
		<biomesoplenty:log_2>,
		<biomesoplenty:log_3>,
		<biomesoplenty:log_4>,
		<thebetweenlands:log_hearthgrove:*>,
		<thebetweenlands:log_nibbletwig:*>,
		<thebetweenlands:weedwood:*>,
		<thebetweenlands:log_sap:*>,
		<twilightforest:twilight_log:*>,
		<twilightforest:magic_log:*>,
		<twilightforest:giant_log:*>,
		<twilightforest:cinder_log:*>
	] as IItemStack[];

	Log.addItems(LogsToAdd);
	

//======= Add to Plank =======
//
	var PlanksToAdd = [
		<biomesoplenty:planks_0:*>,
		<chisel:planks-acacia:*>,
		<chisel:planks-birch:*>,
		<chisel:planks-dark-oak:*>,
		<chisel:planks-jungle:*>,
		<chisel:planks-oak:*>,
		<chisel:planks-spruce:*>,
		<minecraft:planks:*>,
		<quark:stained_planks:*>,
		<quark:vertical_planks:*>,
		<quark:vertical_stained_planks:*>,
	] as IItemStack[];

	Plank.addItems(PlanksToAdd);

//====== Crafting Tables ======
//
	var TablesToAdd = [
		<actuallyadditions:item_crafter_on_a_stick>,
		<minecraft:crafting_table>
	] as IItemStack[];

	<ore:craftingTableWood>.addItems(TablesToAdd);
	<ore:crafterWood>.addItems(TablesToAdd);
	<ore:craftingTableWood>.addAll(<ore:crafterWood>);
	<ore:crafterWood>.addAll(<ore:craftingTableWood>);


//======= Add to Chest =======
//
	var ChestsToAdd = [
		<minecraft:chest:*>,
		<minecraft:ender_chest:*>,
		<minecraft:trapped_chest:*>,
		<actuallyadditions:block_treasure_chest:*>,
		<bibliocraft:framedchest:0>,
		<bibliocraft:framedchest:1>,
		<bibliocraft:framedchest:2>,
		<bibliocraft:framedchest:3>,
		<bibliocraft:framedchest:4>,
		<bibliocraft:framedchest:5>,
		<bibliocraft:framedchest:6>,
		<appliedenergistics2:sky_stone_chest>,
		<appliedenergistics2:smooth_sky_stone_chest>,
		<quark:custom_chest:*>,
		<quark:custom_chest_trap:*>,
	] as IItemStack[];

	Chest.addItems(ChestsToAdd);

//======= Add to chestWood =======
//
	var WoodChestToAdd = [
		<minecraft:chest:*>,
		<minecraft:trapped_chest:*>,
		<bibliocraft:framedchest:0>,
		<bibliocraft:framedchest:1>,
		<bibliocraft:framedchest:2>,
		<bibliocraft:framedchest:3>,
		<bibliocraft:framedchest:4>,
		<bibliocraft:framedchest:5>,
		<bibliocraft:framedchest:6>,
		<quark:custom_chest:*>,
		<quark:custom_chest_trap:*>,
	] as IItemStack[];

	ChestWood.addItems(WoodChestToAdd);

//======= Add to chestTrapped =======
//
	var TrappedChestToAdd = [
		<minecraft:trapped_chest:*>,
		<quark:custom_chest_trap:*>
	] as IItemStack[];

	ChestTrapped.addItems(TrappedChestToAdd);

//======= Add to Bed =======
//
	var BedToAdd = [
		<minecraft:bed:*>,
		<cyclicmagic:sleeping_mat:*>
	] as IItemStack[];

	Bed.addItems(BedToAdd);

//======= Add to WoodButton =======
//
	var ButtonsToAdd = [
		<minecraft:wooden_button>,
	] as IItemStack[];

	WoodButton.addItems(ButtonsToAdd);

//======= Add to Trapdoor =======
//
	var TrapdoorToAdd = [
		<minecraft:trapdoor:*>,
		<quark:dark_oak_trapdoor>,
		<quark:spruce_trapdoor>,
		<quark:birch_trapdoor>,
		<quark:jungle_trapdoor>,
		<quark:acacia_trapdoor>
	] as IItemStack[];

	Trapdoor.addItems(TrapdoorToAdd);

//======= Add to Door =======
//
	var DoorToAdd = [
		<minecraft:wooden_door:*>,
		<biomesoplenty:fir_door>,
		<biomesoplenty:cherry_door>,
		<biomesoplenty:ebony_door>,
		<biomesoplenty:ethereal_door>,
		<biomesoplenty:eucalyptus_door>,
		<biomesoplenty:hellbark_door>,
		<biomesoplenty:jacaranda_door>,
		<biomesoplenty:magic_door>,
		<biomesoplenty:mahogany_door>,
		<biomesoplenty:mangrove_door>,
		<biomesoplenty:palm_door>,
		<biomesoplenty:pine_door>,
		<biomesoplenty:redwood_door>,
		<biomesoplenty:sacred_oak_door>,
		<biomesoplenty:umbran_door>,
		<biomesoplenty:willow_door>,
		<minecraft:acacia_door:*>,
		<minecraft:jungle_door:*>,
		<minecraft:birch_door:*>,
		<minecraft:spruce_door:*>,
		<minecraft:dark_oak_door:*>
	] as IItemStack[];

	Door.addItems(DoorToAdd);

//======= Add to Seeds =======
//
	var SeedsToAdd= [
		<actuallyadditions:item_canola_seed:*>,
		<actuallyadditions:item_coffee_seed:*>,
		<actuallyadditions:item_flax_seed:*>,
		<actuallyadditions:item_misc:23>,
		<actuallyadditions:item_misc:24>,
		<actuallyadditions:item_rice_seed:*>,
		<cyclicmagic:sprout_seed:*>,
		<immersiveengineering:seed:*>,
		<minecraft:beetroot_seeds:*>,
		<minecraft:melon_seeds:*>,
		<minecraft:pumpkin_seeds:*>,
		<minecraft:wheat_seeds:*>,
		<randomthings:grassseeds:*>,
	] as IItemStack[];

	<ore:listAllSeed>.addItems(SeedsToAdd);
	<ore:listAllSeed>.addAll(Seed);

//======= Add to FishRaw =======
//
	var RawFishToAdd = [
	
		<minecraft:fish:*>
	] as IItemStack[];

	FishRaw.addItems(RawFishToAdd);
	<ore:fish>.addAll(FishRaw);

//======= Add to FishCooked =======
//
	var cookedFishMinecraft = [null] as IItemStack[];

	if(loadedMods in "minecraft"){
		cookedFishMinecraft = [
			<minecraft:cooked_fish:*>
		];
	}

	var cookedFishTinkers = [null] as IItemStack[];

	if(loadedMods in "tconstruct"){
		cookedFishTinkers = [
			<tconstruct:edible:20>,
			<tconstruct:edible:22>
		];
	}

	FishCooked.addItems(cookedFishMinecraft);
	FishCooked.addItems(cookedFishTinkers);
	<ore:fish>.addAll(FishCooked);

//====== Wood Dust/Pulp ======
//
	<ore:dustWood>.addItems([
		<mekanism:sawdust>,
		<thermalfoundation:material:800>
	]);

	<ore:dustSawDust>.addAll(<ore:dustWood>);
	<ore:pulpWood>.addAll(<ore:dustWood>);

//======= Conversion Recipes =======
//
	recipes.addShapeless("trapdoororedict1", <minecraft:trapdoor>, [Trapdoor]);
	recipes.addShapeless("trappedchestoredict1", <minecraft:trapped_chest>, [ChestTrapped]);
	recipes.addShapeless("chestoredict1", <minecraft:chest>, [Chest]);
	recipes.addShapeless("bedoredict1", <minecraft:bed>, [<ore:bed>]);
    recipes.addShapeless("wooddoororedict1", <minecraft:wooden_door>, [Door]);
  
//
