import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print(" =================== Mystical Agriculture =================== ");
print(" ============================================================ ");
/*
	This script is dedicated Mystical Agriculture recipes
*/

//====== Mystical Agriculture ======
//
    var enderEssence = <mysticalagriculture:enderman_essence>;
    var blankSkull = <mysticalagriculture:crafting:15>;
    var coal = <mysticalagriculture:coal_essence>;
    var redstone = <mysticalagriculture:redstone_essence>;
    var sulfur = <mysticalagriculture:sulfur_essence>;
    var uranium = <mysticalagriculture:uranium_essence>;

    //Enderman Skull
    recipes.addShaped("EndermanSkull", <enderio:block_enderman_skull>, [
        [enderEssence, enderEssence, enderEssence],
        [enderEssence, blankSkull,   enderEssence], 
        [enderEssence, enderEssence, enderEssence]
    ]);
    //Coal
    recipes.addShaped(<minecraft:coal> * 16, [
        [coal, coal, coal],
        [coal, null, coal],
        [coal, coal, coal]
    ]);
    //Redstone
    recipes.addShaped(<minecraft:redstone> * 16, [
        [redstone, redstone, redstone],
        [redstone, null, redstone],
        [redstone, redstone, redstone]
    ]);
    //Sulfur (The Betweenlands)
    recipes.addShaped(<thebetweenlands:items_misc:18> * 8, [
        [null, null, null],
        [sulfur, sulfur, sulfur],
        [null, null, null]
    ]);
    //Uranium
    recipes.addShaped(<immersiveengineering:metal:5> * 2, [
        [uranium, uranium, uranium],
        [uranium, null, uranium],
        [uranium, uranium, uranium]
    ]);

//======= Seeds conflict recipes =======
//
    //Marble Seeds
    recipes.remove(<mysticalagriculture:marble_seeds>);

    recipes.addShaped(<mysticalagriculture:marble_seeds>, [
        [<ore:blockMarble>, <mysticalagriculture:crafting:1>, <ore:blockMarble>],
        [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:18>, <mysticalagriculture:crafting:1>],
        [<ore:blockMarble>, <mysticalagriculture:crafting:1>, <ore:blockMarble>]
    ]);

//
