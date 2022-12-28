import crafttweaker.item.IIngredient as IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDict as IOreDict;
import crafttweaker.oredict.IOreDictEntry as IOreDictEntry;

print(" =================== Vanilla Recipes =================== ");
print(" ======================================================= ");
/*
    This script is dedicated Vanilla recipes
*/

//======= S H A P E D   R E C E P I E S =======

//====== Variables ======
//
	var planks = <ore:plankWood>;
	val logs = <ore:logWood>;

//======= Chest Variances =======
//
	recipes.addShaped("MC_Chest", <minecraft:chest>, [
		[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
		[<ore:plankWood>, null, <ore:plankWood>], 
		[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
	]);

    recipes.addShaped("MC_Chest_4x", <minecraft:chest> * 4, [
		[<ore:logWood>, <ore:logWood>, <ore:logWood>],
		[<ore:logWood>, null, <ore:logWood>], 
		[<ore:logWood>, <ore:logWood>, <ore:logWood>]
	]);

//======= Bookshelf Recipe =======
//
   recipes.addShaped("MC_Bookshelf", <minecraft:bookshelf>, [
      [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
      [<minecraft:book>, <minecraft:book>, <minecraft:book>], 
      [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
    ]);

    # Bookshelf to Oak Bookshelf conversion
	recipes.addShapeless("Bookshelf Conversion", <minecraft:bookshelf>, [<ore:bookshelf>]);
   
//======= Map Recipe =======
//
   recipes.addShaped("MC_Map", <minecraft:map>, [
      [<ore:paper>, <ore:paper>, <ore:paper>],
      [<ore:paper>, <minecraft:compass>, <ore:paper>], 
      [<ore:paper>, <ore:paper>, <ore:paper>]
    ]);
   
//======= Nether Star recipe =======
//
    recipes.addShaped("Nether_Star", <minecraft:nether_star>, [
        [<ore:blockTerrasteel>, <ore:blockEnderium>, <ore:blockTerrasteel>],
        [<ore:blockEnderium>, <ore:ingotAstralStarmetal>, <ore:blockEnderium>],
        [<ore:blockTerrasteel>, <ore:blockEnderium>, <ore:blockTerrasteel>]
    ]);

//======= Sponge recipe =======
//
    recipes.addShaped("Sponge", <minecraft:sponge>, [
        [<minecraft:wool>, <mysticalagriculture:water_essence>, <minecraft:wool>],
        [<mysticalagriculture:water_essence>, <minecraft:dye:11>, <mysticalagriculture:water_essence>],
        [<minecraft:wool>, <mysticalagriculture:water_essence>, <minecraft:wool>]
    ]);

//======= Gravel recipe =======
//
    recipes.addShaped("Gravel", <minecraft:gravel>, [
        [<minecraft:flint>, <minecraft:flint>],
        [<minecraft:flint>, <minecraft:flint>]
    ]);

//======= Dragon's Breath recipe =======
//
    recipes.addShaped("Dragons_Breath", <minecraft:dragon_breath>, [
        [null, <mysticalagradditions:dragon_egg_essence>, null],
        [<botania:rune:3>, <minecraft:glass_bottle>, <botania:rune:3>],
        [null, <mysticalagradditions:dragon_egg_essence>, null]
    ]);

//======= Elytra recipe =======
//
    recipes.addShaped("MC_Elytra", <minecraft:elytra>, [
        [<actuallyadditions:item_wings_of_the_bats>, <minecraft:nether_star>, <actuallyadditions:item_wings_of_the_bats>],
        [<botania:manaresource:16>, <simplyjetpacks:itemjetpack:3>, <botania:manaresource:16>],
        [<mysticalagriculture:crafting:24>, null, <mysticalagriculture:crafting:24>]
    ]);

//======= Totem of Undying recipe =======
//
    recipes.addShaped("Totem_Of_Undying", <minecraft:totem_of_undying>, [
        [<minecraft:emerald_block>, <minecraft:magma>, <minecraft:emerald_block>],
        [<minecraft:magma>, <enderio:item_material:81>, <minecraft:magma>],
        [<mysticalagradditions:stuff:1>, <minecraft:magma>, <mysticalagradditions:stuff:1>]
    ]);

//====== Bread recipe ======
//
	recipes.addShaped("Bread", <minecraft:bread>, [
        [<ore:cropWheat>, <ore:cropWheat>, <ore:cropWheat>]
    ]);

//====== Cookie recipe ======
//
	recipes.addShaped("Cookie", <minecraft:cookie>, [
        [<minecraft:wheat>, <minecraft:dye:3>, <minecraft:wheat>]
    ]);

//======= Packed Ice recipe =======
//
    recipes.addShaped("Packed_Ice", <minecraft:packed_ice>, [
        [<ore:blockIce>, <ore:blockIce>, <ore:blockIce>],
        [<ore:blockIce>, <ore:blockIce>, <ore:blockIce>],
        [<ore:blockIce>, <ore:blockIce>, <ore:blockIce>]
    ]);

//======= Stained Glass recipe =======
//
    recipes.addShaped("White_Stained_Glass", <minecraft:stained_glass> * 8, [
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:dyeWhite>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);
    recipes.addShaped("Orange_Stained_Glass", <minecraft:stained_glass:1> * 8, [
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:dyeOrange>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);
    recipes.addShaped("Magenta_Stained_Glass", <minecraft:stained_glass:2> * 8, [
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:dyeMagenta>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);
    recipes.addShaped("Light_Blue_Stained_Glass", <minecraft:stained_glass:3> * 8, [
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:dyeLightBlue>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);
    recipes.addShaped("Yellow_Stained_Glass", <minecraft:stained_glass:4> * 8, [
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:dyeYellow>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);
    recipes.addShaped("Lime_Stained_Glass", <minecraft:stained_glass:5> * 8, [
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:dyeLime>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);
    recipes.addShaped("Pink_Stained_Glass", <minecraft:stained_glass:6> * 8, [
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:dyePink>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);
    recipes.addShaped("Gray_Stained_Glass", <minecraft:stained_glass:7> * 8, [
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:dyeGray>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);
    recipes.addShaped("Light_Gray_Stained_Glass", <minecraft:stained_glass:8> * 8, [
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:dyeLightGray>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);
    recipes.addShaped("Cyan_Stained_Glass", <minecraft:stained_glass:9> * 8, [
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:dyeCyan>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);
    recipes.addShaped("Purple_Stained_Glass", <minecraft:stained_glass:10> * 8, [
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:dyePurple>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);
    recipes.addShaped("Blue_Stained_Glass", <minecraft:stained_glass:11> * 8, [
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:dyeBlue>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);
    recipes.addShaped("Brown_Stained_Glass", <minecraft:stained_glass:12> * 8, [
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:dyeBrown>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);
    recipes.addShaped("Green_Stained_Glass", <minecraft:stained_glass:13> * 8, [
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:dyeGreen>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);
    recipes.addShaped("Red_Stained_Glass", <minecraft:stained_glass:14> * 8, [
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:dyeRed>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);
    recipes.addShaped("Black_Stained_Glass", <minecraft:stained_glass:15> * 8, [
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:dyeBlack>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);

//======= Stained Glass Pane recipe =======
//
    recipes.addShaped("White_Stained_Glass_Pane", <minecraft:stained_glass_pane> * 16, [
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:dyeWhite>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
    ]);
    recipes.addShaped("Orange_Stained_Glass_Pane", <minecraft:stained_glass_pane:1> * 16, [
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:dyeOrange>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
    ]);
    recipes.addShaped("Magenta_Stained_Glass_Pane", <minecraft:stained_glass_pane:2> * 16, [
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:dyeMagenta>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
    ]);
    recipes.addShaped("Light_Blue_Stained_Glass_Pane", <minecraft:stained_glass_pane:3> * 16, [
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:dyeLightBlue>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
    ]);
    recipes.addShaped("Yellow_Stained_Glass_Pane", <minecraft:stained_glass_pane:4> * 16, [
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:dyeYellow>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
    ]);
    recipes.addShaped("Lime_Stained_Glass_Pane", <minecraft:stained_glass_pane:5> * 16, [
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:dyeLime>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
    ]);
    recipes.addShaped("Pink_Stained_Glass_Pane", <minecraft:stained_glass_pane:6> * 16, [
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:dyePink>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
    ]);
    recipes.addShaped("Gray_Stained_Glass_Pane", <minecraft:stained_glass_pane:7> * 16, [
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:dyeGray>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
    ]);
    recipes.addShaped("Light_Gray_Stained_Glass_Pane", <minecraft:stained_glass_pane:8> * 16, [
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:dyeLightGray>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
    ]);
    recipes.addShaped("Cyan_Stained_Glass_Pane", <minecraft:stained_glass_pane:9> * 16, [
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:dyeCyan>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
    ]);
    recipes.addShaped("Purple_Stained_Glass_Pane", <minecraft:stained_glass_pane:10> * 16, [
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:dyePurple>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
    ]);
    recipes.addShaped("Blue_Stained_Glass_Pane", <minecraft:stained_glass_pane:11> * 16, [
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:dyeBlue>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
    ]);
    recipes.addShaped("Brown_Stained_Glass_Pane", <minecraft:stained_glass_pane:12> * 16, [
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:dyeBrown>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
    ]);
    recipes.addShaped("Green_Stained_Glass_Pane", <minecraft:stained_glass_pane:13> * 16, [
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:dyeGreen>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
    ]);
    recipes.addShaped("Red_Stained_Glass_Pane", <minecraft:stained_glass_pane:14> * 16, [
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:dyeRed>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
    ]);
    recipes.addShaped("Black_Stained_Glass_Pane", <minecraft:stained_glass_pane:15> * 16, [
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
        [<ore:paneGlass>, <ore:dyeBlack>, <ore:panekGlass>],
        [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
    ]);

//======= Concrete Powder recipe =======
//
    recipes.addShaped("White_Concrete_Powder", <minecraft:concrete_powder> * 8, [
        [<ore:dyeWhite>, <ore:sand>, <ore:sand>],
        [<ore:sand>, <ore:sand>, <ore:gravel>],
        [<ore:gravel>, <ore:gravel>, <ore:gravel>]
    ]);
    recipes.addShaped("Orange_Concrete_Powder", <minecraft:concrete_powder:1> * 8, [
        [<ore:dyeOrange>, <ore:sand>, <ore:sand>],
        [<ore:sand>, <ore:sand>, <ore:gravel>],
        [<ore:gravel>, <ore:gravel>, <ore:gravel>]
    ]);
    recipes.addShaped("Magenta_Concrete_Powder", <minecraft:concrete_powder:2> * 8, [
        [<ore:dyeMagenta>, <ore:sand>, <ore:sand>],
        [<ore:sand>, <ore:sand>, <ore:gravel>],
        [<ore:gravel>, <ore:gravel>, <ore:gravel>]
    ]);
    recipes.addShaped("Light_Blue_Concrete_Powder", <minecraft:concrete_powder:3> * 8, [
        [<ore:dyeLightBlue>, <ore:sand>, <ore:sand>],
        [<ore:sand>, <ore:sand>, <ore:gravel>],
        [<ore:gravel>, <ore:gravel>, <ore:gravel>]
    ]);
    recipes.addShaped("Yellow_Concrete_Powder", <minecraft:concrete_powder:4> * 8, [
        [<ore:dyeYellow>, <ore:sand>, <ore:sand>],
        [<ore:sand>, <ore:sand>, <ore:gravel>],
        [<ore:gravel>, <ore:gravel>, <ore:gravel>]
    ]);
    recipes.addShaped("Lime_Concrete_Powder", <minecraft:concrete_powder:5> * 8, [
        [<ore:dyeLime>, <ore:sand>, <ore:sand>],
        [<ore:sand>, <ore:sand>, <ore:gravel>],
        [<ore:gravel>, <ore:gravel>, <ore:gravel>]
    ]);
    recipes.addShaped("Pink_Concrete_Powder", <minecraft:concrete_powder:6> * 8, [
        [<ore:dyePink>, <ore:sand>, <ore:sand>],
        [<ore:sand>, <ore:sand>, <ore:gravel>],
        [<ore:gravel>, <ore:gravel>, <ore:gravel>]
    ]);
    recipes.addShaped("Gray_Concrete_Powder", <minecraft:concrete_powder:7> * 8, [
        [<ore:dyeGray>, <ore:sand>, <ore:sand>],
        [<ore:sand>, <ore:sand>, <ore:gravel>],
        [<ore:gravel>, <ore:gravel>, <ore:gravel>]
    ]);
    recipes.addShaped("Light_Gray_Concrete_Powder", <minecraft:concrete_powder:8> * 8, [
        [<ore:dyeLightGray>, <ore:sand>, <ore:sand>],
        [<ore:sand>, <ore:sand>, <ore:gravel>],
        [<ore:gravel>, <ore:gravel>, <ore:gravel>]
    ]);
    recipes.addShaped("Cyan_Concrete_Powder", <minecraft:concrete_powder:9> * 8, [
        [<ore:dyeCyan>, <ore:sand>, <ore:sand>],
        [<ore:sand>, <ore:sand>, <ore:gravel>],
        [<ore:gravel>, <ore:gravel>, <ore:gravel>]
    ]);
    recipes.addShaped("Purple_Concrete_Powder", <minecraft:concrete_powder:10> * 8, [
        [<ore:dyePurple>, <ore:sand>, <ore:sand>],
        [<ore:sand>, <ore:sand>, <ore:gravel>],
        [<ore:gravel>, <ore:gravel>, <ore:gravel>]
    ]);
    recipes.addShaped("Blue_Concrete_Powder", <minecraft:concrete_powder:11> * 8, [
        [<ore:dyeBlue>, <ore:sand>, <ore:sand>],
        [<ore:sand>, <ore:sand>, <ore:gravel>],
        [<ore:gravel>, <ore:gravel>, <ore:gravel>]
    ]);
    recipes.addShaped("Brown_Concrete_Powder", <minecraft:concrete_powder:12> * 8, [
        [<ore:dyeBrown>, <ore:sand>, <ore:sand>],
        [<ore:sand>, <ore:sand>, <ore:gravel>],
        [<ore:gravel>, <ore:gravel>, <ore:gravel>]
    ]);
    recipes.addShaped("Green_Concrete_Powder", <minecraft:concrete_powder:13> * 8, [
        [<ore:dyeGreen>, <ore:sand>, <ore:sand>],
        [<ore:sand>, <ore:sand>, <ore:gravel>],
        [<ore:gravel>, <ore:gravel>, <ore:gravel>]
    ]);
    recipes.addShaped("Red_Concrete_Powder", <minecraft:concrete_powder:14> * 8, [
        [<ore:dyeRed>, <ore:sand>, <ore:sand>],
        [<ore:sand>, <ore:sand>, <ore:gravel>],
        [<ore:gravel>, <ore:gravel>, <ore:gravel>]
    ]);
    recipes.addShaped("Black_Concrete_Powder", <minecraft:concrete_powder:15> * 8, [
        [<ore:dyeBlack>, <ore:sand>, <ore:sand>],
        [<ore:sand>, <ore:sand>, <ore:gravel>],
        [<ore:gravel>, <ore:gravel>, <ore:gravel>]
    ]);

//======= Concrete recipe =======
//
    recipes.addShaped("White_Concrete", <minecraft:concrete> * 8, [
        [<minecraft:concrete_powder>, <minecraft:concrete_powder>, <minecraft:concrete_powder>],
        [<minecraft:concrete_powder>, <minecraft:water_bucket>, <minecraft:concrete_powder>],
        [<minecraft:concrete_powder>, <minecraft:concrete_powder>, <minecraft:concrete_powder>]
    ]);
    recipes.addShaped("Orange_Concrete", <minecraft:concrete:1> * 8, [
        [<minecraft:concrete_powder:1>, <minecraft:concrete_powder:1>, <minecraft:concrete_powder:1>],
        [<minecraft:concrete_powder:1>, <minecraft:water_bucket>, <minecraft:concrete_powder:1>],
        [<minecraft:concrete_powder:1>, <minecraft:concrete_powder:1>, <minecraft:concrete_powder:1>]
    ]);
    recipes.addShaped("Magenta_Concrete", <minecraft:concrete:2> * 8, [
        [<minecraft:concrete_powder:2>, <minecraft:concrete_powder:2>, <minecraft:concrete_powder:2>],
        [<minecraft:concrete_powder:2>, <minecraft:water_bucket>, <minecraft:concrete_powder:2>],
        [<minecraft:concrete_powder:2>, <minecraft:concrete_powder:2>, <minecraft:concrete_powder:2>]
    ]);
    recipes.addShaped("Light_Blue_Concrete", <minecraft:concrete:3> * 8, [
        [<minecraft:concrete_powder:3>, <minecraft:concrete_powder:3>, <minecraft:concrete_powder:3>],
        [<minecraft:concrete_powder:3>, <minecraft:water_bucket>, <minecraft:concrete_powder:3>],
        [<minecraft:concrete_powder:3>, <minecraft:concrete_powder:3>, <minecraft:concrete_powder:3>]
    ]);
    recipes.addShaped("Yellow_Concrete", <minecraft:concrete:4> * 8, [
        [<minecraft:concrete_powder:4>, <minecraft:concrete_powder:4>, <minecraft:concrete_powder:4>],
        [<minecraft:concrete_powder:4>, <minecraft:water_bucket>, <minecraft:concrete_powder:4>],
        [<minecraft:concrete_powder:4>, <minecraft:concrete_powder:4>, <minecraft:concrete_powder:4>]
    ]);
    recipes.addShaped("Lime_Concrete", <minecraft:concrete:5> * 8, [
        [<minecraft:concrete_powder:5>, <minecraft:concrete_powder:5>, <minecraft:concrete_powder:5>],
        [<minecraft:concrete_powder:5>, <minecraft:water_bucket>, <minecraft:concrete_powder:5>],
        [<minecraft:concrete_powder:5>, <minecraft:concrete_powder:5>, <minecraft:concrete_powder:5>]
    ]);
    recipes.addShaped("Pink_Concrete", <minecraft:concrete:6> * 8, [
        [<minecraft:concrete_powder:6>, <minecraft:concrete_powder:6>, <minecraft:concrete_powder:6>],
        [<minecraft:concrete_powder:6>, <minecraft:water_bucket>, <minecraft:concrete_powder:6>],
        [<minecraft:concrete_powder:6>, <minecraft:concrete_powder:6>, <minecraft:concrete_powder:6>]
    ]);
    recipes.addShaped("Gray_Concrete", <minecraft:concrete:7> * 8, [
        [<minecraft:concrete_powder:7>, <minecraft:concrete_powder:7>, <minecraft:concrete_powder:7>],
        [<minecraft:concrete_powder:7>, <minecraft:water_bucket>, <minecraft:concrete_powder:7>],
        [<minecraft:concrete_powder:7>, <minecraft:concrete_powder:7>, <minecraft:concrete_powder:7>]
    ]);
    recipes.addShaped("Light_Gray_Concrete", <minecraft:concrete:8> * 8, [
        [<minecraft:concrete_powder:8>, <minecraft:concrete_powder:8>, <minecraft:concrete_powder:8>],
        [<minecraft:concrete_powder:8>, <minecraft:water_bucket>, <minecraft:concrete_powder:8>],
        [<minecraft:concrete_powder:8>, <minecraft:concrete_powder:8>, <minecraft:concrete_powder:8>]
    ]);
    recipes.addShaped("Cyan_Concrete", <minecraft:concrete:9> * 8, [
        [<minecraft:concrete_powder:9>, <minecraft:concrete_powder:9>, <minecraft:concrete_powder:9>],
        [<minecraft:concrete_powder:9>, <minecraft:water_bucket>, <minecraft:concrete_powder:9>],
        [<minecraft:concrete_powder:9>, <minecraft:concrete_powder:9>, <minecraft:concrete_powder:9>]
    ]);
    recipes.addShaped("Purple_Concrete", <minecraft:concrete:10> * 8, [
        [<minecraft:concrete_powder:10>, <minecraft:concrete_powder:10>, <minecraft:concrete_powder:10>],
        [<minecraft:concrete_powder:10>, <minecraft:water_bucket>, <minecraft:concrete_powder:10>],
        [<minecraft:concrete_powder:10>, <minecraft:concrete_powder:10>, <minecraft:concrete_powder:10>]
    ]);
    recipes.addShaped("Blue_Concrete", <minecraft:concrete:11> * 8, [
        [<minecraft:concrete_powder:11>, <minecraft:concrete_powder:11>, <minecraft:concrete_powder:11>],
        [<minecraft:concrete_powder:11>, <minecraft:water_bucket>, <minecraft:concrete_powder:11>],
        [<minecraft:concrete_powder:11>, <minecraft:concrete_powder:11>, <minecraft:concrete_powder:11>]
    ]);
    recipes.addShaped("Brown_Concrete", <minecraft:concrete:12> * 8, [
        [<minecraft:concrete_powder:12>, <minecraft:concrete_powder:12>, <minecraft:concrete_powder:12>],
        [<minecraft:concrete_powder:12>, <minecraft:water_bucket>, <minecraft:concrete_powder:12>],
        [<minecraft:concrete_powder:12>, <minecraft:concrete_powder:12>, <minecraft:concrete_powder:12>]
    ]);
    recipes.addShaped("Green_Concrete", <minecraft:concrete:13> * 8, [
        [<minecraft:concrete_powder:13>, <minecraft:concrete_powder:13>, <minecraft:concrete_powder:13>],
        [<minecraft:concrete_powder:13>, <minecraft:water_bucket>, <minecraft:concrete_powder:13>],
        [<minecraft:concrete_powder:13>, <minecraft:concrete_powder:13>, <minecraft:concrete_powder:13>]
    ]);
    recipes.addShaped("Red_Concrete", <minecraft:concrete:14> * 8, [
        [<minecraft:concrete_powder:14>, <minecraft:concrete_powder:14>, <minecraft:concrete_powder:14>],
        [<minecraft:concrete_powder:14>, <minecraft:water_bucket>, <minecraft:concrete_powder:14>],
        [<minecraft:concrete_powder:14>, <minecraft:concrete_powder:14>, <minecraft:concrete_powder:14>]
    ]);
    recipes.addShaped("Black_Concrete", <minecraft:concrete:15> * 8, [
        [<minecraft:concrete_powder:15>, <minecraft:concrete_powder:15>, <minecraft:concrete_powder:15>],
        [<minecraft:concrete_powder:15>, <minecraft:water_bucket>, <minecraft:concrete_powder:15>],
        [<minecraft:concrete_powder:15>, <minecraft:concrete_powder:15>, <minecraft:concrete_powder:15>]
    ]);

//======= Daylight Sensor recipe =======
//
    recipes.addShaped("Daylight_Sensor", <minecraft:daylight_detector>, [
        [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
        [<ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>],
        [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
    ]);

//======= Coal =======
//
    recipes.addShaped("Coal", <minecraft:coal>, [
        [<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>],
        [<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>],
        [<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>]
    ]);

//======= Bottle o' Enchanting =======
//
    recipes.addShaped("Bottle_of_Experience", <minecraft:experience_bottle> * 32, [
        [<enderio:item_xp_transfer>, <randomthings:imbue:2>, <enderio:item_xp_transfer>],
        [<extrautils2:suncrystal>, <cyclicmagic:exp_pylon>, <extrautils2:suncrystal>],
        [<ore:ingotRefinedGlowstone>, <ore:blockGlowstone>, <ore:ingotRefinedGlowstone>]
    ]);

//======= Name Tag =======
//
    recipes.addShaped("Name_Tag", <minecraft:name_tag>, [
        [null, <ore:wireAluminum>, <bibliocraft:label:*>],
        [null, <ore:paper>, <ore:wireAluminum>],
        [<ore:paper>, null, null]
    ]);

//======= Paper =======
//
    recipes.addShaped("PaperShaped", <minecraft:paper> * 1, [
        [<ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>]
    ]);

	recipes.addShapedMirrored("PaperShapedMirror", <minecraft:paper> * 3, [
		[<ore:cropRice>, null, null],
		[null, <ore:cropRice>, null],
		[null, null, <ore:cropRice>]
	]);

//

//======= S H A P E L E S S   R E C E P I E S =======

//======= Bone recipe =======
//
    recipes.addShapeless("Bone", <minecraft:bone> * 3, [<minecraft:bone_block>]);

//======= Blaze Rod recipe =======
//
    recipes.addShapeless("Blaze_Rod", <minecraft:blaze_rod>, [<minecraft:blaze_powder>, <minecraft:blaze_powder>]);

//====== Blaze Rod Burn Times ======
//
	//Blaze rods to 16 "items" smelt time (up from 12)
	furnace.setFuel(<minecraft:blaze_rod>, 3200);
	//Add burn time for blaze lantern - 64 items
	furnace.setFuel(<quark:blaze_lantern>, 12800);

//======= Brick recipe =======
//
    recipes.addShapeless("Brick", <minecraft:brick> * 4, [<minecraft:brick_block>]);

//======= Moss Stone recipe =======
//
    recipes.addShapeless("Mossy_Cobblestone", <minecraft:mossy_cobblestone>, [<ore:cobblestone>, <ore:itemMossForStone>]);

//======= Ice recipe =======
//
    recipes.addShapeless("MC_Ice", <minecraft:ice> * 9, [<ore:blockPackedIce>]);

//======= Magma Cream =======
//
    recipes.addShapeless("MC_Magma_Cream", <minecraft:magma_cream> * 4, [<minecraft:magma>]);

//======= Redstone =======
//
    recipes.addShapeless("MC_Redstone", <minecraft:redstone> * 9, [<ore:blockRedstone>]);

//======= Coal =======
//
    recipes.addShapeless("MC_Coal", <minecraft:coal> * 9, [<ore:blockCoal>]);

//======= String =======
//
    recipes.addShapeless("MC_String", <minecraft:string> * 4, [<ore:wool>]);

//======= Bed =======
//
    recipes.addShapeless("MC_White_Bed", <minecraft:bed>, [<ore:bed>, <ore:dyeWhite>]);
    recipes.addShapeless("MC_Orange_Bed", <minecraft:bed:1>, [<ore:bed>, <ore:dyeOrange>]);
    recipes.addShapeless("MC_Magenta_Bed", <minecraft:bed:2>, [<ore:bed>, <ore:dyeMagenta>]);
    recipes.addShapeless("MC_Light_Blue_Bed", <minecraft:bed:3>, [<ore:bed>, <ore:dyeLightBlue>]);
    recipes.addShapeless("MC_Yellow_Bed", <minecraft:bed:4>, [<ore:bed>, <ore:dyeYellow>]);
    recipes.addShapeless("MC_Lime_Bed", <minecraft:bed:5>, [<ore:bed>, <ore:dyeLime>]);
    recipes.addShapeless("MC_Pink_Bed", <minecraft:bed:6>, [<ore:bed>, <ore:dyePink>]);
    recipes.addShapeless("MC_Gray_Bed", <minecraft:bed:7>, [<ore:bed>, <ore:dyeGray>]);
    recipes.addShapeless("MC_Light_Gray_Bed", <minecraft:bed:8>, [<ore:bed>, <ore:dyeLightGray>]);
    recipes.addShapeless("MC_Cyan_Bed", <minecraft:bed:9>, [<ore:bed>, <ore:dyeCyan>]);
    recipes.addShapeless("MC_Purple_Bed", <minecraft:bed:10>, [<ore:bed>, <ore:dyePurple>]);
    recipes.addShapeless("MC_Blue_Bed", <minecraft:bed:11>, [<ore:bed>, <ore:dyeBlue>]);
    recipes.addShapeless("MC_Brown_Bed", <minecraft:bed:12>, [<ore:bed>, <ore:dyeBrown>]);
    recipes.addShapeless("MC_Green_Bed", <minecraft:bed:13>, [<ore:bed>, <ore:dyeGreen>]);
    recipes.addShapeless("MC_Red_Bed", <minecraft:bed:14>, [<ore:bed>, <ore:dyeRed>]);
    recipes.addShapeless("MC_Black_Bed", <minecraft:bed:15>, [<ore:bed>, <ore:dyeBlack>]);

//======= Paper =======
//
    recipes.addShapeless("PaperShapeless", <minecraft:paper>*1, [<ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <ore:dustWood>]);

//
