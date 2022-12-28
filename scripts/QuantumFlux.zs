import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print(" =================== Quantum Flux =================== ");
print(" ==================================================== ");
/*
	This script is dedicated Quantum Flux recipes
*/

//======= Amplification Crystal =======
//
    recipes.remove(<quantumflux:craftingpiece:2>);

    recipes.addShaped("Amplification Crystal", <quantumflux:craftingpiece:2>, [
        [<ore:ingotEnergeticAlloy>, <enderio:item_basic_capacitor:1>, <ore:ingotEnergeticAlloy>],
        [null,<ore:manaDiamond>,null],
        [<quantumflux:darkstone>, <quantumflux:darkstone>, <quantumflux:darkstone>]
    ]);

//======= Exciter Upgrade =======
//
    recipes.remove(<quantumflux:exciterupgrade>);

    recipes.addShaped("Exciter Upgrade", <quantumflux:exciterupgrade> * 2, [
        [<quantumflux:darkstone>, <ore:ingotRedstoneAlloy>, <quantumflux:darkstone>],
        [<quantumflux:craftingpiece>, <quantumflux:craftingpiece:2> ,<quantumflux:craftingpiece>],
        [<quantumflux:darkstone>, <ore:ingotRedstoneAlloy>, <quantumflux:darkstone>]
    ]);

//======= Gold Casing =======
//
    recipes.remove(<quantumflux:craftingpiece:1>);

    recipes.addShaped("Gold Casing", <quantumflux:craftingpiece:1> * 2, [
        [<ore:ingotVibrantAlloy>, <ore:ingotGold>, <ore:ingotVibrantAlloy>],
        [<ore:ingotGold>, <teslacorelib:machine_case>, <ore:ingotGold>],
        [<ore:ingotVibrantAlloy>, <ore:ingotGold>, <ore:ingotVibrantAlloy>]
    ]);

//======= Quibit Crystal =======
//
    recipes.remove(<quantumflux:craftingpiece>);

    recipes.addShaped("Quibit Crystal", <quantumflux:craftingpiece> * 2, [
        [<ore:crystalPureNetherQuartz>, <ore:ingotElectricalSteel>, <ore:crystalPureNetherQuartz>],
        [<ore:crystalAstralAny>, <ore:manaDiamond>, <ore:crystalAstralAny>],
        [<ore:ingotEnergeticAlloy>, <ore:ingotElectricalSteel>, <ore:ingotEnergeticAlloy>]
    ]);

//======= Quibit Cell =======
//
    recipes.remove(<quantumflux:quibitcell>);

    recipes.addShaped("Quibit Cell", <quantumflux:quibitcell>, [
        [null, <quantumflux:craftingpiece>, null],
        [<quantumflux:craftingpiece:1>, <quantumflux:quibitcluster:5>, <quantumflux:craftingpiece:1>],
        [<enderio:item_basic_capacitor:2>, <quantumflux:craftingpiece:5>, <enderio:item_basic_capacitor:2>]
    ]);

//======= RF Entagler =======
//
    recipes.remove(<quantumflux:rfentangler>);

    recipes.addShaped("RF Entagler", <quantumflux:rfentangler>, [
        [<quantumflux:craftingpiece>, <ore:netherStar>, <quantumflux:craftingpiece>],
        [<thermalfoundation:storage_alloy>, <quantumflux:quibitcluster:5>, <thermalfoundation:storage_alloy>],
        [<quantumflux:craftingpiece:1>, <quantumflux:craftingpiece:5>, <quantumflux:craftingpiece:1>]
    ]);

//======= Zero Point Extractor =======
//
    recipes.remove(<quantumflux:zeropointextractor>);

    recipes.addShaped("Zero Point Extractor", <quantumflux:zeropointextractor>, [
        [<quantumflux:craftingpiece:2>, <actuallyadditions:item_crystal_empowered:3>, <quantumflux:craftingpiece:2>],
        [<quantumflux:craftingpiece>, <quantumflux:quibitcluster:5>, <quantumflux:craftingpiece>],
        [<enderio:block_alloy:6>, <draconicevolution:dislocator_receptacle>, <enderio:block_alloy:6>]
    ]);

//======= Imaginary Time Block =======
//
    recipes.remove(<quantumflux:imaginarytime>);

    recipes.addShaped("Imaginary Time Block", <quantumflux:imaginarytime>, [
        [<randomthings:timeinabottle>, <draconicevolution:celestial_manipulator>, <randomthings:timeinabottle>],
        [<ore:netherStar>, <quantumflux:quibitcluster:5>, <ore:netherStar>],
        [<quantumflux:craftingpiece>, <appliedenergistics2:quartz_growth_accelerator>, <quantumflux:craftingpiece>]
    ]);

//======= Quantum Entropy Accelerator =======
//
    recipes.remove(<quantumflux:entropyaccelerator>);

    recipes.addShaped("Quantum Entropy Accelerator", <quantumflux:entropyaccelerator>, [
        [<quantumflux:craftingpiece>, <quantumflux:craftingpiece>, <quantumflux:craftingpiece>],
        [<quantumflux:darkstone>, <techguns:simplemachine:11>, <quantumflux:darkstone>],
        [<ore:ingotIron>, <extrautils2:terraformer:4>, <ore:ingotIron>]
    ]);

//
