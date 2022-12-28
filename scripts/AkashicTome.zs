import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print(" =================== Akashic Tome =================== ");
print(" ==================================================== ");
/*
	Script just for the "default" Akashic Tome
*/

//====== Ahashic Tome ======

	recipes.remove(<akashictome:tome>);

	var completeTome = <akashictome:tome>.withTag(

	{
		"akashictome:is_morphing": 1 as byte,
		"akashictome:data": {
			tconstruct: {
				id: "tconstruct:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "tconstruct"
				},
				Damage: 0 as short
			},
			industrialforegoing: {
				id: "industrialforegoing:book_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "industrialforegoing"
				},
				Damage: 0 as short
			},
			immersiveengineering: {
				id: "immersiveengineering:tool",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "immersiveengineering"
				},
				Damage: 3 as short
			},
			improvableskills: {
				id: "improvableskills:skills_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "improvableskills"
				},
				Damage: 0 as short
			},
			rftools: {
				id: "rftools:rftools_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "rftools"
				},
				Damage: 0 as short
			},
			ebwizardry: {
				id: "ebwizardry:wizard_handbook",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "ebwizardry"
				},
				Damage: 0 as short
			},
			extrautils2: {
				id: "extrautils2:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "extrautils2"
				},
				Damage: 0 as short
			},
			solcarrot: {
				id: "solcarrot:food_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "solcarrot"
				},
				Damage: 0 as short
			},
			actuallyadditions: {
				id: "actuallyadditions:item_booklet",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "actuallyadditions"
				},
				Damage: 0 as short
			},
			techguns: {
				id: "patchouli:guide_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "techguns","patchouli:book":"techguns:techguns_manual"
				},
				Damage: 0 as short
			},
			ancientspellcraft: {
				id: "patchouli:guide_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "ancientspellcraft","patchouli:book":"ancientspellcraft:manual"
				},
				Damage: 0 as short
			},
			bigreactors: {
				id: "patchouli:guide_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "bigreactors","patchouli:book":"bigreactors:erguide"
				},
				Damage: 0 as short
			},
			twilightforest: {
				id: "patchouli:guide_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "twilightforest","patchouli:book":"twilightforest:guide"
				},
				Damage: 0 as short
			},
			lepidodendron: {
				id: "patchouli:guide_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "lepidodendron","patchouli:book":"lepidodendron:paleopedia"
				},
				Damage: 0 as short
			},
			engineersdecor: {
				id: "patchouli:guide_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "engineersdecor","patchouli:book":"engineersdecor:engineersdecor_manual"
				},
				Damage: 0 as short
			},			
			rftools1: {
				id: "rftools:rftools_shape_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "rftools1"
				},
				Damage: 0 as short
			},
			fossil: {
				id: "fossil:dinopedia",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "fossil"
				},
				Damage: 0 as short
			},
			thermalfoundation: {
				id: "thermalfoundation:tome_lexicon",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "thermalfoundation"
				},
				Damage: 0 as short
			},
			theoneprobe: {
				id: "theoneprobe:probenote",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "theoneprobe"
				},
				Damage: 0 as short
			},
			thebetweenlands: {
				id: "thebetweenlands:manual_hl",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "thebetweenlands"
				},
				Damage: 0 as short
			},
			rftoolscontrol: {
				id: "rftoolscontrol:rftoolscontrol_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "rftoolscontrol"
				},
				Damage: 0 as short
			},
			cookingforblockheads: {
				id: "cookingforblockheads:recipe_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "cookingforblockheads"
				},
				Damage: 0 as short
			},
			buildcraftlib: {
				id: "buildcraftlib:guide",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "buildcraftlib"
				},
				Damage: 0 as short
			},
			botania: {
				id: "botania:lexicon",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "botania"
				},
				Damage: 0 as short
			},
			xnet: {
				id: "xnet:xnet_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "xnet"
				},
				Damage: 0 as short
			},
			astralsorcery: {
				id: "astralsorcery:itemjournal",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "astralsorcery"
				},
				Damage: 0 as short
			},
			zawa: {
				id: "zawa:care_guide",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "zawa"
				},
				Damage: 0 as short
			},
			envtech: {
				id: "valkyrielib:guide",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "envtech"
				},
				Damage: 0 as short
			},
			draconicevolution: {
				id: "draconicevolution:info_tablet",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "draconicevolution"
				},
				Damage: 0 as short
			},
			exoticbirds: {
				id: "exoticbirds:bird_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "exoticbirds"
				},
				Damage: 0 as short
			},
			openblocks: {
				id: "openblocks:info_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "openblocks"
				},
				Damage: 0 as short
			}
		}
	}
	);

//======= Tooltip/Description =======

	completeTome.addTooltip(format.gold("Contains all basic mod manuals/guides already included"));
	mods.jei.JEI.addDescription(completeTome, 
		"The Akashic tome is a book for your books.",
		"This full book is ALREADY contain all modded manuals as a convenience for all players"
	);

//======= Add the full book to JEI =======

	mods.jei.JEI.addItem(completeTome);

//======= Recipe (1 stick = book) =======

	recipes.addShapeless(completeTome, [<minecraft:stick>]);
	
//======= Add the book as starting item =======

	mods.initialinventory.InvHandler.addStartingItem(completeTome);
	
//======= Add tooltip to included books =======

	var addedBooks = [
		<tconstruct:book>, 
		<industrialforegoing:book_manual>, 
		<immersiveengineering:tool:3>,
		<improvableskills:skills_book>,
		<rftools:rftools_manual>,
		<rftools:rftools_shape_manual>,
		<rftoolscontrol:rftoolscontrol_manual>,
		<ebwizardry:wizard_handbook>,
		<extrautils2:book>,
		<patchouli:guide_book>.withTag({"patchouli:book": "techguns:techguns_manual"}),
		<patchouli:guide_book>.withTag({"patchouli:book": "bigreactors:erguide"}),
		<patchouli:guide_book>.withTag({"patchouli:book": "ancientspellcraft:manual"}),
		<patchouli:guide_book>.withTag({"patchouli:book": "twilightforest:guide"}),
		<patchouli:guide_book>.withTag({"patchouli:book":"lepidodendron:paleopedia"}),
		<patchouli:guide_book>.withTag({"patchouli:book":"engineersdecor:engineersdecor_manual"}),
		<solcarrot:food_book>,
		<botania:lexicon>,
		<astralsorcery:itemjournal>,
		<thermalfoundation:tome_lexicon>, 
		<actuallyadditions:item_booklet>,
		<cookingforblockheads:recipe_book:1>, 
		<fossil:dinopedia>,
		<xnet:xnet_manual>,
		<buildcraftlib:guide>,
		<theoneprobe:probenote>,
		<thebetweenlands:manual_hl>,
		<zawa:care_guide>,
		<valkyrielib:guide>,
		<draconicevolution:info_tablet>,
		<exoticbirds:bird_book>,
		<openblocks:info_book>,
	] as IItemStack[];

	for itemBook in addedBooks {
		itemBook.addTooltip(format.green("Included within the \"default\" Akashic Tome"));
	}
//
