import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print(" =================== RFTools =================== ");
print(" =============================================== ");
/*
	This script is dedicated RFTools recipes
*/

//======= RFT builder =======
//
	recipes.remove(<rftools:builder>);

	recipes.addShaped("Builder", <rftools:builder>, [
		[<minecraft:brick_block>, <ore:manaPearl>, <minecraft:brick_block>],
		[<actuallyadditions:block_miner>, <rftools:machine_frame>, <cyclicmagic:builder_block>],
		[<minecraft:brick_block>, <ore:xuUpgradeMining>, <minecraft:brick_block>]
	]);

//======= Shape Card (Quarry) =======
//
    recipes.remove(<rftools:shape_card:2>);

    recipes.addShaped("Shape Card (Quarry)", <rftools:shape_card:2>, [
        [<techguns:oredrill:2>, <mekanism:controlcircuit:3>, <techguns:oredrill:2>],
        [<mekanism:machineblock:15>, <techguns:itemshared:142>, <mekanism:machineblock:15>],
        [<techguns:oredrill:2>, <mekanism:teleportationcore>, <techguns:oredrill:2>]
    ]);

//======= Workbench =======
//
    recipes.remove(<rftoolscontrol:workbench>);

    recipes.addShaped("Workbench", <rftoolscontrol:workbench>, [
        [null, <ore:craftingTableWood>, null],
        [null, <rftools:machine_frame>, null],
        [null, <ore:chest>, null]
    ]);

//
