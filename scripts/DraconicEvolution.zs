import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.botania.RuneAltar;
import mods.thermalexpansion.Transposer;
import mods.actuallyadditions.Empowerer;
import moretweaker.draconicevolution.FusionCrafting;

FusionCrafting.BASIC;
FusionCrafting.WYVERN;
FusionCrafting.DRACONIC;
FusionCrafting.CHAOTIC;

print(" =================== Draconic Evolution =================== ");
print(" ========================================================== ");
/*
	This script is dedicated Draconic Evolution recipes
*/

//======= Mob Grinder =======
//
	recipes.remove(<draconicevolution:grinder>);

	recipes.addShaped("Mob Grinder", <draconicevolution:grinder>, [
        [<ore:ingotEndSteel>, <ore:blockDraconium>, <ore:ingotEndSteel>],
	    [<botania:elementiumsword>, <draconicevolution:draconic_core>, <botania:elementiumsword>], 
	    [<ore:ingotEndSteel>, <industrialforegoing:mob_slaughter_factory>, <ore:ingotEndSteel>]
    ]);

//======= Crystal Binder =======
//
	recipes.remove(<draconicevolution:crystal_binder>);

	recipes.addShaped("Crystal Binder", <draconicevolution:crystal_binder>, [
        [null, <ore:ingotDraconium>, <actuallyadditions:item_crystal_empowered:2>],
	    [null, <ore:rodBlaze>, <ore:ingotDraconium>], 
	    [<redstonearsenal:tool.wrench_flux>.withTag({Energy: 0}), null, null]
    ]);

//======= Wyvern Tools =======
//
    //Sword
	recipes.remove(<draconicevolution:wyvern_sword>);
	
	recipes.addShaped("Wyvern Sword", <draconicevolution:wyvern_sword>, [
        [<enderio:block_reinforced_obsidian>, <draconicevolution:wyvern_core>, <enderio:block_reinforced_obsidian>],
        [<ore:blockDraconium>, <redstonearsenal:tool.sword_flux>.withTag({Energy: 0}), <ore:blockDraconium>], 
        [<enderio:block_reinforced_obsidian>, <draconicevolution:wyvern_energy_core>, <enderio:block_reinforced_obsidian>]
    ]);

    //Shovel
    recipes.remove(<draconicevolution:wyvern_shovel>);

	recipes.addShaped("Wyvern Shovel", <draconicevolution:wyvern_shovel>, [
        [<enderio:block_reinforced_obsidian>, <draconicevolution:wyvern_core>, <enderio:block_reinforced_obsidian>],
        [<ore:blockDraconium>, <redstonearsenal:tool.shovel_flux>.withTag({Energy: 0}), <ore:blockDraconium>],
        [<enderio:block_reinforced_obsidian>, <draconicevolution:wyvern_energy_core>, <enderio:block_reinforced_obsidian>]
    ]);

    //Pickaxe
    recipes.remove(<draconicevolution:wyvern_pick>);

	recipes.addShaped("Wyvern Pickaxe", <draconicevolution:wyvern_pick>, [
        [<enderio:block_reinforced_obsidian>, <draconicevolution:wyvern_core>, <enderio:block_reinforced_obsidian>],
        [<ore:blockDraconium>, <redstonearsenal:tool.pickaxe_flux>.withTag({Energy: 0}), <ore:blockDraconium>],
        [<enderio:block_reinforced_obsidian>, <draconicevolution:wyvern_energy_core>, <enderio:block_reinforced_obsidian>]
    ]);

    //Bow
    recipes.remove(<draconicevolution:wyvern_bow>);

	recipes.addShaped("Wyvern Bow", <draconicevolution:wyvern_bow>, [
        [<enderio:block_reinforced_obsidian>, <draconicevolution:wyvern_core>, <enderio:block_reinforced_obsidian>],
        [<ore:blockDraconium>, <redstonearsenal:tool.bow_flux>.withTag({Energy: 0}), <ore:blockDraconium>],
        [<enderio:block_reinforced_obsidian>, <draconicevolution:wyvern_energy_core>, <enderio:block_reinforced_obsidian>]
    ]);

    //Axe
    recipes.remove(<draconicevolution:wyvern_axe>);

	recipes.addShaped("Wyvern Axe", <draconicevolution:wyvern_axe>, [
        [<enderio:block_reinforced_obsidian>, <draconicevolution:wyvern_core>, <enderio:block_reinforced_obsidian>],
        [<ore:blockDraconium>, <redstonearsenal:tool.axe_flux>.withTag({Energy: 0}), <ore:blockDraconium>],
        [<enderio:block_reinforced_obsidian>, <draconicevolution:wyvern_energy_core>, <enderio:block_reinforced_obsidian>]
    ]);

//======= Draconic Core =======
//
	recipes.remove(<draconicevolution:draconic_core>);

	recipes.addShaped("Draconic Core", <draconicevolution:draconic_core>, [
        [<ore:ingotDraconium>, <ore:ingotBlutonium>, <ore:ingotDraconium>],
        [<ore:alloyUltimate>, <actuallyadditions:item_crystal_empowered:2>, <ore:alloyUltimate>],
        [<ore:ingotDraconium>, <ore:ingotBlutonium>, <ore:ingotDraconium>]
    ]);

//======= Wyvern Core =======
//
	recipes.remove(<draconicevolution:wyvern_core>);

	recipes.addShaped("Wyvern Core", <draconicevolution:wyvern_core>, [
        [<ore:ingotLudicrite>, <draconicevolution:draconic_core>, <ore:ingotLudicrite>],
        [<draconicevolution:draconic_core>, <minecraft:nether_star>, <draconicevolution:draconic_core>],
        [<ore:ingotLudicrite>, <draconicevolution:draconic_core>, <ore:ingotLudicrite>]
    ]);

//======= Awakened Core ======
//
    FusionCrafting.remove(<minecraft:nether_star>);

    mods.botania.RuneAltar.addRecipe(<draconicevolution:awakened_core>, [
        <environmentaltech:ionite>,
        <draconicevolution:draconic_ingot>,
        <draconicevolution:wyvern_energy_core>,
        <draconicevolution:wyvern_core>,
        <draconicevolution:wyvern_core>,
        <draconicevolution:wyvern_core>,
        <draconicevolution:wyvern_energy_core>,
        <draconicevolution:draconic_ingot>,
        <environmentaltech:ionite>
    ], 700000);

//======= Wyvern Energy Core =======
//
	recipes.remove(<draconicevolution:wyvern_energy_core>);

	mods.thermalexpansion.Transposer.addFillRecipe (
        <draconicevolution:wyvern_energy_core>,
        <draconicevolution:wyvern_core>,
        <liquid:redstone> * 10000, 250000
    );

//======= Draconic Energy Core =======
//
	recipes.remove(<draconicevolution:draconic_energy_core>);

	recipes.addShaped("Draconic Energy Core",<draconicevolution:draconic_energy_core>, [
        [<ore:ingotDraconiumAwakened>, <draconicevolution:wyvern_energy_core>, <ore:ingotDraconiumAwakened>],[<draconicevolution:wyvern_energy_core>, <draconicevolution:energy_infuser>, <draconicevolution:wyvern_energy_core>],
        [<ore:ingotDraconiumAwakened>, <draconicevolution:wyvern_energy_core>, <ore:ingotDraconiumAwakened>]
    ]);

//======= Draconic Boots =======
//
    FusionCrafting.remove(<draconicevolution:wyvern_boots>);

    FusionCrafting.add(<draconicevolution:draconic_boots>, <draconicevolution:wyvern_boots>, FusionCrafting.DRACONIC, 128000, [
        <draconicevolution:awakened_core>,
        <draconicevolution:draconic_ingot>,
        <draconicevolution:draconic_energy_core>,
        <environmentaltech:aethium>,
        <draconicevolution:awakened_core>,
        <environmentaltech:aethium>,
        <draconicevolution:draconic_energy_core>,
        <draconicevolution:draconic_ingot>
    ]);

//======= Draconic Chestplate =======

    FusionCrafting.remove(<draconicevolution:wyvern_chest>);

    FusionCrafting.add(<draconicevolution:draconic_chest>, <draconicevolution:wyvern_chest>, FusionCrafting.DRACONIC, 1280000, [
        <draconicevolution:awakened_core>,
        <draconicevolution:draconic_ingot>,
        <draconicevolution:draconic_energy_core>,
        <environmentaltech:aethium>,
        <draconicevolution:awakened_core>,
        <environmentaltech:aethium>,
        <draconicevolution:draconic_energy_core>,
        <draconicevolution:draconic_ingot>
    ]);

//======= Draconic Helm =======
//
    FusionCrafting.remove(<draconicevolution:wyvern_helm>);

    FusionCrafting.add(<draconicevolution:draconic_helm>, <draconicevolution:wyvern_helm>, FusionCrafting.DRACONIC, 1280000,[
        <draconicevolution:awakened_core>,
        <draconicevolution:draconic_ingot>,
        <draconicevolution:draconic_energy_core>,
        <environmentaltech:aethium>,
        <draconicevolution:awakened_core>,
        <environmentaltech:aethium>,
        <draconicevolution:draconic_energy_core>,
        <draconicevolution:draconic_ingot>
    ]);

//======= Draconic Leggings =======
//
    FusionCrafting.remove(<draconicevolution:wyvern_legs>);

    FusionCrafting.add(<draconicevolution:draconic_legs>, <draconicevolution:wyvern_legs>, FusionCrafting.DRACONIC, 1280000, [
        <draconicevolution:awakened_core>,
        <draconicevolution:draconic_ingot>,
        <draconicevolution:draconic_energy_core>,
        <environmentaltech:aethium>,
        <draconicevolution:awakened_core>,
        <environmentaltech:aethium>,
        <draconicevolution:draconic_energy_core>,
        <draconicevolution:draconic_ingot>
    ]);

//======= Draconic Staff of Power =======
//
    FusionCrafting.remove(<draconicevolution:draconic_pick>);

    FusionCrafting.add(<draconicevolution:draconic_staff_of_power>, <draconicevolution:draconic_pick>, FusionCrafting.DRACONIC, 128000,[
        <draconicevolution:awakened_core>,
        <draconicevolution:draconic_ingot>,
        <draconicevolution:draconic_energy_core>,
        <environmentaltech:aethium>,
        <draconicevolution:awakened_core>,
        <environmentaltech:aethium>,
        <draconicevolution:draconic_energy_core>,
        <draconicevolution:draconic_ingot>
    ]);

//======= Draconium Chest =======
//
    var dracChest = <draconicevolution:draconium_chest>;
    var ingrChe as IItemStack[] = [
        <actuallyadditions:block_giant_chest_large>,
        <draconicevolution:wyvern_core>,
        <ironchest:iron_chest:5>,
        <draconicevolution:draconium_block>
    ] as IItemStack[];

    FusionCrafting.remove(<minecraft:chest>);

    FusionCrafting.add(<draconicevolution:draconium_chest>, <minecraft:chest>, FusionCrafting.WYVERN, 20000000, [
        <draconicevolution:wyvern_core>,
        <actuallyadditions:block_giant_chest_large>,
        <draconicevolution:wyvern_energy_core>,
        <ironchest:iron_chest:5>,
        <draconicevolution:wyvern_core>,
        <ironchest:iron_chest:5>,
        <draconicevolution:wyvern_energy_core>,
        <actuallyadditions:block_giant_chest_large>
    ]);

    mods.actuallyadditions.Empowerer.addRecipe(dracChest, <mekanism:basicblock:6>.withTag({tier: 3}),
        ingrChe[0], ingrChe[1], ingrChe[2], ingrChe[3],
        20000000/4, 400, [8.0, 0.1, 0.9]
    );

//======= Fusion Crafting Core =======
//
	recipes.remove(<draconicevolution:fusion_crafting_core>);

    recipes.addShaped("Fusion Crafting Core",<draconicevolution:fusion_crafting_core>, [
        [<ore:blockManasteel>, <draconicevolution:wyvern_energy_core>, <ore:blockManasteel>],
        [<actuallyadditions:block_empowerer>, <draconicevolution:draconic_core>, <actuallyadditions:block_empowerer>],
        [<ore:blockManasteel>, <draconicevolution:wyvern_energy_core>, <ore:blockManasteel>]
    ]);

//======= Potentiometer =======
//
    var ingrPot as IItemStack[] = [
        <enderio:item_alloy_ingot:3>,
        <randomthings:advancedredstonetorch_on>,
        <minecraft:stone_slab>,
        <minecraft:planks>
    ] as IItemStack[];
    
	recipes.remove(<draconicevolution:potentiometer>);

    mods.actuallyadditions.Empowerer.addRecipe(<draconicevolution:potentiometer>, <ore:dustDraconium>,
        ingrPot[0], ingrPot[1], ingrPot[2], ingrPot[3],
        200000, 100, [8.0, 0.1, 0.9]
    );

//======= Basic Energy Relay Crystal =======
//
	recipes.remove(<draconicevolution:energy_crystal>);

	recipes.addShaped("Basic Energy Relay Crystal", <draconicevolution:energy_crystal> * 4, [
        [<industrialforegoing:laser_lens:10>, <rebornmod:laser>, <industrialforegoing:laser_lens:10>],
        [<ore:ingotElectricalSteel>, <ore:itemWeatherCrystal>, <ore:ingotElectricalSteel>],
        [<industrialforegoing:laser_lens:10>, <rebornmod:laser>, <industrialforegoing:laser_lens:10>]
    ]);
	
//======= Basic Wireless Energy Crystal =======
//
	recipes.remove(<draconicevolution:energy_crystal:6>);

	recipes.addShaped("Basic Wireless Enegy Crystal", <draconicevolution:energy_crystal:6>, [
        [<ore:dustAstralStarmetal>,<extrautils2:powertransmitter>,<ore:dustAstralStarmetal>],
        [<appliedenergistics2:material:41>,<draconicevolution:energy_crystal:0>,<appliedenergistics2:material:41>],
        [<ore:dustAstralStarmetal>,<refinedstorage:wireless_transmitter>,<ore:dustAstralStarmetal>]
    ]);

//
