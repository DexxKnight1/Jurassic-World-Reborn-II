import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import moretweaker.draconicevolution.FusionCrafting;
import mods.industrialforegoing.BioReactor;
import mods.industrialforegoing.ProteinReactor;
import mods.industrialforegoing.FluidDictionary;

FusionCrafting.BASIC;
FusionCrafting.WYVERN;
FusionCrafting.DRACONIC;
FusionCrafting.CHAOTIC;

print(" =================== Industrial Foregoing =================== ");
print(" ============================================================ ");
/*
	This script is dedicated Industrial Foregoing recipes
*/

//======= Add several missing items to the Bio Reactors =======
//
    //Remov Lapis Lazuli
    BioReactor.remove(<minecraft:dye:4>);

    //Vanilla materials
    mods.industrialforegoing.BioReactor.add(<minecraft:apple>);
    mods.industrialforegoing.BioReactor.add(<minecraft:reeds>);
    mods.industrialforegoing.BioReactor.add(<minecraft:melon>);
    mods.industrialforegoing.BioReactor.add(<minecraft:wheat>);
    mods.industrialforegoing.BioReactor.add(<minecraft:beetroot>);
    mods.industrialforegoing.BioReactor.add(<minecraft:pumpkin>);
    mods.industrialforegoing.BioReactor.add(<minecraft:poisonous_potato>);
    mods.industrialforegoing.BioReactor.add(<minecraft:chorus_fruit>);
    mods.industrialforegoing.BioReactor.add(<minecraft:waterlily>);
    
    //Extra Utilities 2 materials
    mods.industrialforegoing.BioReactor.add(<extrautils2:redorchid>);
    mods.industrialforegoing.BioReactor.add(<extrautils2:enderlilly>);

//======= Black Hole Controller V2.0 =======
//
    recipes.remove(<industrialforegoing:black_hole_controller_reworked>);

    FusionCrafting.add(<industrialforegoing:black_hole_controller_reworked>, <rftools:space_chamber_controller>, FusionCrafting.BASIC, 10000, [
        <ore:itemRubber>,
        <ore:blockPlatinum>,
        <ore:itemRubber>,
        <industrialforegoing:pink_slime_ingot>,
        <industrialforegoing:pink_slime_ingot>, 
        <ore:itemRubber>,
        <enderio:item_material:54>,
        <ore:itemRubber>
    ]);

//======= Black Hole Tank =======
//
    recipes.remove(<industrialforegoing:black_hole_tank>);

    recipes.addShaped("Black Hole Tank1", <industrialforegoing:black_hole_tank>, [
        [<ore:itemRubber>, <enderstorage:ender_storage:1>, <ore:itemRubber>],
        [<mekanism:machineblock2:11>.withTag({tier: 3}), <thermalfoundation:upgrade:3>, <mekanism:machineblock2:11>.withTag({tier: 3})],
        [<ore:itemRubber>,<enderio:item_material:54>,<ore:itemRubber>]
    ]);

    recipes.addShapeless("Black Hole Tank2", <industrialforegoing:black_hole_tank>, [<industrialforegoing:black_hole_tank>]);

//======= Black Hole Unit =======
//
    recipes.remove(<industrialforegoing:black_hole_unit>);

    recipes.addShaped("Black Hole Unit1", <industrialforegoing:black_hole_unit>, [
        [<ore:itemRubber>,<enderstorage:ender_storage>, <ore:itemRubber>],
        [<ironchest:iron_chest:5>, <thermalfoundation:upgrade:3>,<ironchest:iron_chest:5>],
        [<ore:itemRubber>,<enderio:item_material:54>,<ore:itemRubber>]
    ]);

    recipes.addShapeless("Black Hole Unit2", <industrialforegoing:black_hole_unit>, [<industrialforegoing:black_hole_unit>]);

//======= Wither Builder =======
//
    recipes.remove(<industrialforegoing:wither_builder>);

    recipes.addShaped("IndustrialForegoing Wither Builder", <industrialforegoing:wither_builder>, [
        [<ore:itemRubber>, <ore:blockEvilMetal>, <ore:itemRubber>],
        [<minecraft:skull:1>, <enderio:item_material:55>, <minecraft:skull:1>],
        [<ore:soulSand>, <ore:soulSand>, <ore:soulSand>]
    ]);

//======= FluidDictionary =======
//
	FluidDictionary.add("seed.oil", "seed_oil", 1);
	FluidDictionary.add("sulfuric_acid", "sulfuricacid", 1);
	FluidDictionary.add("hydrogen", "liquidhydrogen", 1);

//======= Protein Reactor =======
//
	for item in <ore:listAllmeatraw>.items {
		ProteinReactor.add(item);
	}
	
//======= Bio Reactor ======
//
	val otherCrops = [
		<harvestcraft:breadfruititem>,
		<harvestcraft:mustardseedsitem>,
		<harvestcraft:spiceleafitem>,
		<harvestcraft:gingeritem>,
		<harvestcraft:garlicitem>,
		<harvestcraft:peanutitem>,
		<harvestcraft:oatsitem>,
		<harvestcraft:barleyitem>,
		<harvestcraft:chilipepperitem>,
		<harvestcraft:pecanitem>,
		<harvestcraft:pistachioitem>,
		<harvestcraft:almonditem>,
		<harvestcraft:kenafitem>,
		<harvestcraft:milletitem>,
		<harvestcraft:cashewitem>,
		<harvestcraft:sisalitem>,
		<harvestcraft:quinoaitem>,
		<harvestcraft:juteitem>,
		<harvestcraft:flaxitem>,
		<harvestcraft:amaranthitem>,
		<harvestcraft:kaleitem>,
		<harvestcraft:chestnutitem>,
		<harvestcraft:walnutitem>
	] as IItemStack[];

	for crop in otherCrops {
		mods.industrialforegoing.BioReactor.add(crop);
	}

    for seed in <ore:listAllseed>.items {
        mods.industrialforegoing.BioReactor.add(seed);
    }
	
	for veggie in <ore:listAllveggie>.items {
		mods.industrialforegoing.BioReactor.add(veggie);
	}
	
	for fruit in <ore:listAllfruit>.items {
		mods.industrialforegoing.BioReactor.add(fruit);
	}

//
