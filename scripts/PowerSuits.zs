import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print(" =================== Modular Power Suits =================== ");
print(" =========================================================== ");
/*
	Modular Power Suits recipes
*/

//======= Power Armor Tinker Table =======
//
    recipes.remove(<powersuits:tinkertable>);

    recipes.addShaped(<powersuits:tinkertable>, [
        [<ore:ingotDarkSteel>, <techguns:itemshared:131>, <ore:ingotDarkSteel>],
        [<ore:ingotElectricalSteel>, <ore:itemEnhancedMachineChassi>, <ore:ingotElectricalSteel>],
        [<ore:ingotElectricalSteel>, <randomthings:advancedredstoneinterface>, <ore:ingotElectricalSteel>]
    ]);

//======= Power Armor Chestplate =======
//
    recipes.remove(<powersuits:powerarmor_torso>);

    recipes.addShaped("Power_Armor_Chestplate", <powersuits:powerarmor_torso>, [
        [<simplyjetpacks:metaitemmods:6>, null, <simplyjetpacks:metaitemmods:6>], 
        [<thermalexpansion:capacitor:4>, <enderio:item_end_steel_chestplate>, <thermalexpansion:capacitor:4>],
        [<simplyjetpacks:metaitemmods:6>, <ore:ingotEndSteel>, <simplyjetpacks:metaitemmods:6>]
    ]);

//======= Power Armor Helmet =======
//
    recipes.remove(<powersuits:powerarmor_head>);

    recipes.addShaped("Power_Armor_Helmet", <powersuits:powerarmor_head>, [
        [<simplyjetpacks:metaitemmods:6>, <ore:ingotEndSteel>, <simplyjetpacks:metaitemmods:6>],
        [<thermalexpansion:capacitor:4>, <enderio:item_end_steel_helmet>, <thermalexpansion:capacitor:4>]
    ]);

//======= Power Armor Leggings =======
//
    recipes.remove(<powersuits:powerarmor_legs>);

    recipes.addShaped("Power_Armor_Leggings", <powersuits:powerarmor_legs>, [
        [<simplyjetpacks:metaitemmods:6>, <ore:ingotEndSteel>, <simplyjetpacks:metaitemmods:6>], 
        [<thermalexpansion:capacitor:4>, <enderio:item_end_steel_leggings>, <thermalexpansion:capacitor:4>],
        [<simplyjetpacks:metaitemmods:6>, null, <simplyjetpacks:metaitemmods:6>]
    ]);

//======= Power Armor Boots =======
//
    recipes.remove(<powersuits:powerarmor_feet>);

    recipes.addShaped("Power_Armor_Boots", <powersuits:powerarmor_feet>, [
        [<thermalexpansion:capacitor:4>, <enderio:item_end_steel_boots>, <thermalexpansion:capacitor:4>],
        [<simplyjetpacks:metaitemmods:6>, null, <simplyjetpacks:metaitemmods:6>]
    ]); 

//======= Power Fist =======
//
    recipes.remove(<powersuits:power_fist>);

    recipes.addShaped("Power_Fist", <powersuits:power_fist>, [
        [<ore:ingotEndSteel>, <rftoolscontrol:cpu_core_2000>, <ore:ingotEndSteel>],
        [<thermalexpansion:capacitor:4>, <industrialforegoing:infinity_drill>.withTag({Energy: 0 as long, Fluid: {FluidName: "biofuel", Amount: 0}, Special: 0 as byte, Selected: "POOR"}), <thermalexpansion:capacitor:4>],
        [null, <ore:ingotVibrantAlloy>, null]
    ]);

//
