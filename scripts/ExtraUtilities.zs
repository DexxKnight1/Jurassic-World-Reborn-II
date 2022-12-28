import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print(" =================== Extra Utilities =================== ");
print(" ======================================================= ");
/*
	Extra Utilities recipes
*/

//======= Agel Ring =======
//
    var normalRing = <extrautils2:angelring:*>;
	var chestWithTag = <extrautils2:angelring:0>;
	var baubleRing = <flyringbaublemod:flyingring:*>;
	var batLasso = <extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}}).onlyWithTag({Animal: {id: "minecraft:bat"}});
	var ghastLasso = <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}}).onlyWithTag({Animal: {id: "minecraft:ghast"}});

    //Default Angel Ring recipe for reference
	/*
	recipes.addShaped("AngelRing", <extrautils2:angelring>, [
		[<minecraft:glass>, <minecraft:gold_ingot>, <minecraft:glass>],
		[<minecraft:gold_ingot>, <extrautils2:chickenring:1>, <minecraft:gold_ingot>],
		[batLasso, <minecraft:gold_ingot>, ghastLasso]]);
	*/
	recipes.removeShaped(normalRing);
	recipes.removeShaped(baubleRing);
    //=== Clear Ring ===
    recipes.remove(<extrautils2:angelring:0>);
    //=== Angel wings ===
    recipes.remove(<extrautils2:angelring:1>);
    //=== Fairy wings ===
    recipes.remove(<extrautils2:angelring:2>);
    //=== Dragon wings ===
    recipes.remove(<extrautils2:angelring:3>);
    //=== Golden wings ===
    recipes.remove(<extrautils2:angelring:4>);
    //=== Evil wings ===
    recipes.remove(<extrautils2:angelring:5>);

	recipes.addShaped("Angel_Ring", <extrautils2:angelring:0>, [
		[<ore:itemPrecientCrystal>, <ore:netherStar>, <ore:itemPrecientCrystal>],
		[<flyringbaublemod:pair:*>, <simplyjetpacks:itemjetpack:24>.withTag({Energy: 0, JetpackParticle: 0}), <flyringbaublemod:pair:*>],
		[batLasso, <actuallyadditions:item_wings_of_the_bats>, ghastLasso]
	]);
			
	//Making sure the wing-flavor recipes are still present -- should be redundant since we only did removeShaped for the ring recipe
	recipes.addShapeless("Clear_Ring", <extrautils2:angelring>, [<ore:fusedGlass>, <extrautils2:angelring:*>, <ore:fusedGlass>]);
	recipes.addShapeless("Angel_Wing", <extrautils2:angelring:1>, [<ore:clothManaweave>, <extrautils2:angelring:*>, <ore:clothManaweave>]);
	recipes.addShapeless("Fairy_Wing", <extrautils2:angelring:2>, [<ore:elvenPixieDust>, <extrautils2:angelring:*>, <enderio:item_soul_vial:1>.withTag({entityId: "botania:pixie"})]);
	recipes.addShapeless("Dragon_Wing", <extrautils2:angelring:3>, [<ore:elvenDragonstone>, <extrautils2:angelring:*>, <minecraft:skull:5>]);
	recipes.addShapeless("Golden_Wing", <extrautils2:angelring:4>, [<treasure2:gold_coin>, <extrautils2:angelring:*>, <ore:wireGold>]);
    recipes.addShapeless("Evil_Wing", <extrautils2:angelring:5>, [<ore:dropofevil>, <extrautils2:angelring:*>, <ore:ingotEvilMetal>]);

//======= Golden Lasso =======
//
    recipes.remove(<extrautils2:goldenlasso>);

    recipes.addShaped("Golden_Lasso", <extrautils2:goldenlasso>,
    [  
        [<ore:ingotGold>, <minecraft:web>, <ore:ingotGold>],
        [<minecraft:web>, <ore:pearlEnderEye>,<minecraft:web>], 
        [<ore:ingotGold>, <minecraft:web>, <ore:ingotGold>]
    ]);

//======= Quantum Quarry =======
//
    recipes.remove(<extrautils2:quarry>);

    recipes.addShaped("Quantum_Quarry", <extrautils2:quarry>, [
        [<botania:storage:1>, <astralsorcery:itemcraftingcomponent:4>, <botania:storage:1>],
        [<astralsorcery:itemcraftingcomponent:4>, <ore:magic_snow_globe>, <astralsorcery:itemcraftingcomponent:4>],
        [<botania:storage:1>, <astralsorcery:itemcraftingcomponent:4>, <botania:storage:1>]
    ]);

//======= Quantum Quarry Actuator =======
//
    recipes.remove(<extrautils2:quarryproxy>);

    recipes.addShaped("Quantum_Quarry_Actuator",<extrautils2:quarryproxy>, [  
        [<extrautils2:decorativesolid:3>,<ore:ingotEnderium>,<extrautils2:decorativesolid:3>],
        [<ore:ingotEnderium>,<minecraft:end_rod>,<ore:ingotEnderium>], 
        [<extrautils2:decorativesolid:3>,<ore:ingotEnderium>,<extrautils2:decorativesolid:3>]
    ]);

//======= Deep Dark Portal =======
//
    recipes.remove(<extrautils2:teleporter:1>);

    recipes.addShaped("Deep_Dark_Portal", <extrautils2:teleporter:1>, [
        [<ore:compressed4xCobblestone>, <ore:netherStar>, <ore:compressed4xCobblestone>],
        [<darkutils:material:1>, <darkutils:charm_portal>, <darkutils:material:1>],
        [<ore:compressed4xCobblestone>, <ore:netherStar>, <ore:compressed4xCobblestone>]
    ]);

//======= Bag of Holding =======
//
    recipes.remove(<extrautils2:bagofholding>);

    recipes.addShaped("Bag_of_Holding", <extrautils2:bagofholding>.withTag({Items: {}}), [  
        [<ore:blockWool>, <ore:blockGold>, <ore:blockWool>],
        [<ore:blockGold>, <thermalexpansion:strongbox>.withTag({Facing: 3 as byte, Level: 0 as byte}), <ore:blockGold>], 
        [<ore:blockWool>, <ore:blockGold>, <ore:blockWool>]
    ]);

//======= Slightly-Larger Chest =======
//
    recipes.remove(<extrautils2:largishchest>);

    recipes.addShaped("Slightly-Larger Chest", <extrautils2:largishchest>, [  
        [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
        [<ore:stickWood>, <ore:chest>, <ore:stickWood>], 
        [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
    ]);

//======= Mini Chest =======
//
    recipes.remove(<extrautils2:minichest>);

    recipes.addShapeless("Mini Chest", <extrautils2:minichest> * 9, [<ore:chestWood>]);

//
