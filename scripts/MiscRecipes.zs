import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print(" =================== Miscellaneous =================== ");
print(" ===================================================== ");
/*
	This script is dedicated Miscellaneous recipes
*/

//======= Project Vibrant Journey "Bones" =======
//
    recipes.addShapeless("PVJ Bones", <pvj:bones> * 2, [<minecraft:bone>, <minecraft:bone>]);

//======= Adding Funace fuels =======
//
    furnace.setFuel(<ore:dustSulfur>, 300);
	furnace.setFuel(<thermalfoundation:material:832>, 800);

//======= MrCrayfish's Vehicle Mod "Workstation" ======
//
    recipes.remove(<vehicle:workstation>);

	recipes.addShaped("Workstation", <vehicle:workstation>, [
		[<minecraft:concrete:8>, <minecraft:concrete:8>, <minecraft:concrete:8>],
		[<minecraft:concrete:14>, <ore:craftingTableWood>, <minecraft:concrete:14>],
		[<minecraft:concrete:14>, <ore:chest>, <minecraft:concrete:14>]
    ]);

//======= TorchMaster "Terrain Lighter" ======
//
    recipes.remove(<torchmaster:terrain_lighter>);

	recipes.addShaped("Terrain Lighter", <torchmaster:terrain_lighter>, [
		[<ore:stickWood>, <minecraft:torch>, <ore:stickWood>],
		[<ore:logWood>, <ore:chest>, <ore:logWood>],
		[<ore:stone>, <ore:stone>, <ore:stone>]
    ]);

//======= Techguns "Machine Upgrade (Stack Operation)" ======
//
    recipes.remove(<techguns:itemshared:94>);

	recipes.addShaped("Machine Upgrade (Stack Operation)", <techguns:itemshared:94>, [
		[<ore:plateIron>, <ore:dyeGreen>, <ore:plateIron>],
		[<ore:ingotGold>, <ore:chest>, <ore:ingotGold>],
		[<ore:plateIron>, <ore:ingotGold>, <ore:plateIron>]
    ]);

//======= Simple Storage Network "Storage Link Cable" ======
//
    recipes.remove(<storagenetwork:storage_kabel>);

	recipes.addShaped("Storage Link Cable", <storagenetwork:storage_kabel> * 4, [
		[null, <storagenetwork:kabel>, null],
		[<storagenetwork:kabel>, <ore:chest>, <storagenetwork:kabel>],
		[null, <storagenetwork:kabel>, null]
    ]);

//======= Loot Bags "Bag Storage" ======
//
    recipes.remove(<lootbags:loot_storage>);

	recipes.addShaped("Bag Storage", <lootbags:loot_storage>, [
		[<ore:stone>, <ore:stone>, <ore:stone>],
		[<ore:ingotIron>, <ore:chest>, <ore:ingotIron>],
		[<ore:stone>, <ore:stone>, <ore:stone>]
    ]);

//======= Loot Bags "Loot Recycler" ======
//
    recipes.remove(<lootbags:loot_recycler>);

	recipes.addShaped("Loot Recycler", <lootbags:loot_recycler>, [
		[<ore:stone>, <ore:stone>, <ore:stone>],
		[<ore:stone>, <ore:chest>, <ore:stone>],
		[<ore:stone>, <ore:ingotIron>, <ore:stone>]
    ]);

//======= Loot Bags "Bag Opener" ======
//
    recipes.remove(<lootbags:loot_opener>);

	recipes.addShaped("Bag Opener", <lootbags:loot_opener>, [
		[<ore:stone>, <ore:ingotIron>, <ore:stone>],
		[<ore:stone>, <ore:chest>, <ore:stone>],
		[<ore:stone>, <ore:stone>, <ore:stone>]
    ]);

//======= Pam's HarvestCraft "Ground Trap" ======
//
    recipes.remove(<harvestcraft:groundtrap>);

	recipes.addShaped("Ground Trap", <harvestcraft:groundtrap>, [
		[<ore:stickWood>, <ore:trapdoorWood>, <ore:stickWood>],
		[<ore:string>, <ore:chest>, <ore:string>],
		[<ore:stickWood>, <ore:string>, <ore:stickWood>]
    ]);

//======= Pam's HarvestCraft "Water Trap" ======
//
    recipes.remove(<harvestcraft:watertrap>);

	recipes.addShaped("Water Trap", <harvestcraft:watertrap>, [
		[<ore:stickWood>, <minecraft:fishing_rod>, <ore:stickWood>],
		[<ore:string>, <ore:chest>, <ore:string>],
		[<ore:stickWood>, <ore:string>, <ore:stickWood>]
    ]);

//======= BuildCraft Factory "Chute" ======
//
    recipes.remove(<buildcraftfactory:chute>);

	recipes.addShaped("Chute", <buildcraftfactory:chute>, [
		[<ore:ingotIron>, <ore:chest>, <ore:ingotIron>],
		[<ore:ingotIron>, <ore:gearStone>, <ore:ingotIron>],
		[null, <ore:ingotIron>, null]
    ]);

//======= BuildCraft Transport "Filtered Buffer" ======
//
    recipes.remove(<buildcrafttransport:filtered_buffer>);

	recipes.addShaped("Filtered Buffer", <buildcrafttransport:filtered_buffer>, [
		[<ore:plankWood>, <buildcrafttransport:pipe_diamond_item:0>, <ore:plankWood>],
		[<ore:plankWood>, <ore:chest>, <ore:plankWood>],
		[<ore:plankWood>, <minecraft:piston>, <ore:plankWood>]
    ]);

//======= QuantumStorage "Trash Can" ======
//
    recipes.remove(<quantumstorage:trashcan>);

	recipes.addShaped("Trash Can", <quantumstorage:trashcan>, [
		[<ore:slabStone>, <ore:slabStone>, <ore:slabStone>],
		[<ore:cobblestone>, <ore:chest>, <ore:cobblestone>],
		[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
    ]);

//======= Biomes O' Plenty =======
//
	//Mycelial Netherrack
	recipes.addShaped("Mycelial Netherrack", <biomesoplenty:grass:8> * 8, [
		[<ore:netherrack>, <ore:netherrack>, <ore:netherrack>],
		[<ore:netherrack>, <minecraft:mycelium>, <ore:netherrack>],
		[<ore:netherrack>, <ore:netherrack>, <ore:netherrack>]
	]);
	//Flowering Grass
	recipes.addShaped("Flowering Grass", <biomesoplenty:grass:7> * 8, [
		[<minecraft:double_plant:*>, <ore:grass>, <minecraft:double_plant:*>],
		[<ore:grass>, <minecraft:red_flower:8>, <ore:grass>],
		[<minecraft:double_plant:*>, <ore:grass>, <minecraft:double_plant:*>]
	]);
	//Overgrown Netherrack
	recipes.addShaped("Overgrown Netherrack", <biomesoplenty:grass:6> * 8, [
		[<ore:netherrack>, <ore:netherrack>, <ore:netherrack>],
		[<ore:netherrack>, <ore:vine>, <ore:netherrack>],
		[<ore:netherrack>, <ore:netherrack>, <ore:netherrack>]
	]);
	//Origin Grass
	recipes.addShaped("Origin Grass", <biomesoplenty:grass:5> * 16, [
		[<ore:sand>, <ore:grass>, <ore:sand>],
		[<biomesoplenty:sapling_1>, <biomesoplenty:sapling_1>, <biomesoplenty:sapling_1>],
		[<ore:sand>, <ore:grass>, <ore:sand>]
	]);
	//Silty Grass
	recipes.addShaped("Silty Grass", <biomesoplenty:grass:4> * 8, [
		[<ore:sand>, <ore:grass>, <ore:sand>],
		[<ore:gravel>, <ore:dirt>, <ore:gravel>],
		[<ore:sand>, <ore:grass>, <ore:sand>]
	]);
	//Sandy Grass
	recipes.addShaped("Sandy Grass", <biomesoplenty:grass:3> * 8, [
		[<ore:sand>, <ore:grass>, <ore:sand>],
		[<ore:grass>, <ore:dirt>, <ore:grass>],
		[<ore:sand>, <ore:grass>, <ore:sand>]
	]);
	//Loamy Grass
	recipes.addShaped("Loamy Grass", <biomesoplenty:grass:2> * 8, [
		[<ore:grass>, <ore:grass>, <ore:grass>],
		[<ore:grass>, <ore:listAllwater>, <ore:grass>],
		[<ore:grass>, <ore:grass>, <ore:grass>]
	]);
	//Silty Dirt
	recipes.addShaped("Silty Dirt", <biomesoplenty:dirt:2> * 8, [
		[<ore:sand>, <ore:dirt>, <ore:sand>],
		[<ore:gravel>, <ore:dirt>, <ore:gravel>],
		[<ore:sand>, <ore:dirt>, <ore:sand>]
	]);
	//Sandy Dirt
	recipes.addShaped("Sandy Dirt", <biomesoplenty:dirt:1> * 8, [
		[<ore:sand>, <ore:dirt>, <ore:sand>],
		[<ore:dirt>, <ore:dirt>, <ore:dirt>],
		[<ore:sand>, <ore:dirt>, <ore:sand>]
	]);
	//Loamy Dirt
	recipes.addShaped("Loamy Dirt", <biomesoplenty:dirt> * 8, [
		[<ore:dirt>, <ore:dirt>, <ore:dirt>],
		[<ore:dirt>, <ore:listAllwater>, <ore:dirt>],
		[<ore:dirt>, <ore:dirt>, <ore:dirt>]
	]);

//======= Pam's Harvestcraft =======
//
	recipes.remove(<harvestcraft:lavendershortbreaditem>);

	recipes.addShapeless("Lavender Shortbread", <harvestcraft:lavendershortbreaditem>, [<ore:toolBakeware>, <ore:foodDough>,<ore:flowerLavender>]);
//
