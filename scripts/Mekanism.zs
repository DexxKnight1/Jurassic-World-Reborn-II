import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print(" =================== Mekanism =================== ");
print(" ================================================ ");
/*
	Mecanism recipes
*/

//======= Starmetal Ingots =======
//
	mods.mekanism.smelter.addRecipe(<astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:1>);
	
//======= Increasing Stacksize =======
//
	<mekanism:tierinstaller>.maxStackSize = 16;
	<mekanism:tierinstaller:1>.maxStackSize = 16;
	<mekanism:tierinstaller:2>.maxStackSize = 16;
	<mekanism:tierinstaller:3>.maxStackSize = 16;

	<mekanism:filterupgrade>.maxStackSize = 64;
	<mekanism:energyupgrade>.maxStackSize = 64;
	<mekanism:speedupgrade>.maxStackSize = 64;
	<mekanism:mufflingupgrade>.maxStackSize = 64;
    <mekanism:gasupgrade>.maxStackSize = 64;
    <mekanism:anchorupgrade>.maxStackSize = 16;

//======= Metallurgic Infuser =======
//    
    recipes.remove(<mekanism:machineblock:8>);
    
    recipes.addShaped("Metallurgic_Infuser", <mekanism:machineblock:8>, [
        [<thermalfoundation:material:32>, <actuallyadditions:block_coal_generator>, <thermalfoundation:material:32>], 
        [<actuallyadditions:item_crystal>, <mekanism:basicblock>, <actuallyadditions:item_crystal>],
        [<thermalfoundation:material:32>, <actuallyadditions:block_coal_generator>, <thermalfoundation:material:32>]
    ]);

//======= Digital Miner =======
//   
    recipes.remove(<mekanism:machineblock:4>);

    recipes.addShaped("Digital_Miner", <mekanism:machineblock:4>, [
        [<mekanism:atomicalloy>, <ore:circuitUltimate>, <mekanism:atomicalloy>],
        [<mekanism:machineblock:15>, <mekanism:robit>, <mekanism:machineblock:15>],
        [<mekanism:teleportationcore>, <actuallyadditions:block_miner>, <mekanism:teleportationcore>]
    ]);

//======= Reactor Controller =======
//
    recipes.remove(<mekanismgenerators:reactor>);

    recipes.addShaped("Reactor_Controller", <mekanismgenerators:reactor>, [
        [<ore:circuitUltimate>, <thermalfoundation:glass_alloy:7>, <ore:circuitUltimate>],
        [<mekanismgenerators:reactor:1>, <mekanism:gastank>.withTag({tier: 0}), <mekanismgenerators:reactor:1>],
        [<mekanismgenerators:reactor:1>, <mysticalagriculture:ultimate_furnace>, <mekanismgenerators:reactor:1>]
    ]);

//======= Gas-Burning Generator =======
//
    recipes.remove(<mekanismgenerators:generator:3>);

    recipes.addShaped("Gas_Burning_Generator", <mekanismgenerators:generator:3>, [
        [<thermalfoundation:material:326>, <mekanism:atomicalloy>, <thermalfoundation:material:326>],
        [<mekanism:basicblock:8>, <mekanism:electrolyticcore>, <mekanism:basicblock:8>],
        [<thermalfoundation:material:326>, <mekanism:atomicalloy>, <thermalfoundation:material:326>]
    ]);

//======= Cardboard Box ======
//
    recipes.remove(<mekanism:cardboardbox>);

	recipes.addShaped("CardboardBox", <mekanism:cardboardbox>, [
		[<thermalfoundation:material:801>, <storagedrawers:tape>.anyDamage(), <thermalfoundation:material:801>],
		[<thermalfoundation:material:801>, null, <thermalfoundation:material:801>],
		[<thermalfoundation:material:801>, <thermalfoundation:material:801>, <thermalfoundation:material:801>]
	]);

//======= Salt =======
//
    recipes.remove(<mekanism:salt>);
    
    recipes.addShapeless("Mecanism/Salt", <mekanism:salt> * 9, [<mekanism:saltblock>]);

//======= Pam's HarvestCraft Plants, Seeds, and Saplings -> biofuel =======
//
    val biofuel = <mekanism:biofuel>;
    mods.mekanism.crusher.addRecipe(<harvestcraft:blackberryitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:blackberryseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:blueberryitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:blueberryseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:candleberryitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:candleberryseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:raspberryitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:raspberryseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:strawberryitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:strawberryseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cactusfruititem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cactusfruitseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:almond_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:almonditem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:apple_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:apricot_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:apricotitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:artichokeitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:artichokeseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:asparagusitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:asparagusseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:avocado_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:avocadoitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:bambooshootitem>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:bambooshootseeditem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:banana_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:bananaitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:barleyitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:barleyseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:beanitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:beanseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:beetitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:beetseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:bellpepperitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:bellpepperseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:broccoliitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:broccoliseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:brusselsproutitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:brusselsproutseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cabbageitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cabbageseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cantaloupeitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cantaloupeseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cashew_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cashewitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:caulifloweritem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cauliflowerseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:celeryitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:celeryseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cherry_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cherryitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:chestnut_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:chestnutitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:chilipepperitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:chilipepperseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cinnamon_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cinnamonitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:coconut_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:coconutitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:coffeebeanitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:coffeeseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cornitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cornseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cottonitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cottonseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cranberryitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cranberryseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cucumberitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:cucumberseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:curryleafitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:curryleafseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:date_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:dateitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:dragonfruit_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:dragonfruititem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:durian_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:durianitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:ediblerootitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:eggplantitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:eggplantseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:fig_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:figitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:garlicitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:garlicseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:gingeritem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:gingerseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:gooseberry_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:gooseberryitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:grapefruit_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:grapefruititem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:grapeitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:grapeseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:kiwiitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:kiwiseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:leekitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:leekseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:lemon_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:lemonitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:lettuceitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:lettuceseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:lime_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:limeitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:mango_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:mangoitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:maple_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:nutmeg_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:nutmegitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:oatsitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:oatsseeditem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:okraitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:okraseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:olive_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:oliveitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:onionitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:onionseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:orange_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:orangeitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamalmond>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamapple>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamapricot>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamavocado>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pambanana>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamcashew>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamcherry>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamchestnut>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamcinnamon>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamcoconut>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamdate>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamdragonfruit>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamdurian>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamfig>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamgooseberry>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamgrapefruit>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamlemon>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamlime>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pammango>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pammaple>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamnutmeg>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamolive>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamorange>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pampapaya>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pampaperbark>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pampeach>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pampear>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pampecan>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pampersimmon>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pampistachio>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamplum>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pampomegranate>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamspiderweb>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamstarfruit>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamvanillabean>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pamwalnut>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:papaya_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:papayaitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:paperbark_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:parsnipitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:parsnipseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:peach_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:peachitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:peanutitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:peanutseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pear_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pearitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:peasitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:peasseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pecan_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pecanitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:persimmon_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:persimmonitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pineappleitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pineappleseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:plum_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:plumitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pomegranate_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:pomegranateitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:radishitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:radishseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:raisinsitem>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:rhubarbitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:rhubarbseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:riceitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:riceseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:rutabagaitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:rutabagaseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:ryeitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:ryeseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:scallionitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:scallionseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:seaweeditem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:seaweedseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:soybeanitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:soybeanseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:spiceleafitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:spiceleafseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:spiderweb_sapling>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:spinachitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:spinachseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:starfruit_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:starfruititem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:sunflowerseedsitem>, biofuel *5);
    mods.mekanism.crusher.addRecipe(<harvestcraft:sweetpotatoitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:sweetpotatoseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:tealeafitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:teaseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:turnipitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:turnipseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:vanillabean_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:vanillabeanitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:walnut_sapling>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:walnutitem>, biofuel *4);
    mods.mekanism.crusher.addRecipe(<harvestcraft:waterchestnutitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:waterchestnutseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:whitemushroomitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:whitemushroomseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:wintersquashitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:wintersquashseeditem>, biofuel *2);
    mods.mekanism.crusher.addRecipe(<harvestcraft:zucchiniitem>, biofuel *3);
    mods.mekanism.crusher.addRecipe(<harvestcraft:zucchiniseeditem>, biofuel *2);

//
