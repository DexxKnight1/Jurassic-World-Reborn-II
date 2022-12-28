import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.botania.RuneAltar;

print(" =================== BiblioCraft =================== ");
print(" =================================================== ");
/*
	This script is dedicated BiblioCraft recipes
*/

//======= Typesetting Table =======
//
    recipes.remove(<bibliocraft:typesettingtable>);

    recipes.addShaped("Typesetting Table", <bibliocraft:typesettingtable>, [
        [null,<bibliocraft:bibliochase>,null],
        [<ore:slabWood>,<ore:slabWood>,<ore:slabWood>],
        [<ore:plankWood>,<teslacorelib:machine_case>,<ore:plankWood>]
    ]);

//======= Printing Press =======
//
    recipes.remove(<bibliocraft:printingpress>);

    recipes.addShaped("Printing Press", <bibliocraft:printingpress>, [
        [<minecraft:iron_ingot>, <minecraft:blaze_rod>, <minecraft:iron_ingot>],
        [<ore:ingotDarkSteel>, <minecraft:heavy_weighted_pressure_plate>, <ore:ingotDarkSteel>],
        [<ore:blockDarkSteel>, <teslacorelib:machine_case>, <ore:blockDarkSteel>]
    ]);

//======= Creative Bookcase =======
//
	mods.botania.RuneAltar.addRecipe(<bibliocraft:bookcasecreative>, [
        <bibliocraft:bookcase:*>,
        <bibliocraft:bookcase:*>,
        <bibliocraft:printingpress:*>,
        <bibliocraft:bigbook>,
        <bibliocraft:bigbook>,
        <bibliocraft:bigbook>,
        <bibliocraft:bibliodrill>,
        <bibliocraft:bookcase:*>,
        <bibliocraft:bookcase:*>
    ], 200000);

//======= Converting between plank type =======
//
	recipes.addShapeless("Creative Bookcase0", <bibliocraft:bookcasecreative>, [<bibliocraft:bookcasecreative:6>]);
	recipes.addShapeless("Creative Bookcase6", <bibliocraft:bookcasecreative:6>, [<bibliocraft:bookcasecreative:5>]);
	recipes.addShapeless("Creative Bookcase5", <bibliocraft:bookcasecreative:5>, [<bibliocraft:bookcasecreative:4>]);
	recipes.addShapeless("Creative Bookcase4", <bibliocraft:bookcasecreative:4>, [<bibliocraft:bookcasecreative:3>]);
	recipes.addShapeless("Creative Bookcase3", <bibliocraft:bookcasecreative:3>, [<bibliocraft:bookcasecreative:2>]);
	recipes.addShapeless("Creative Bookcase2", <bibliocraft:bookcasecreative:2>, [<bibliocraft:bookcasecreative:1>]);
	recipes.addShapeless("Creative Bookcase1", <bibliocraft:bookcasecreative:1>, [<bibliocraft:bookcasecreative>]);

//
