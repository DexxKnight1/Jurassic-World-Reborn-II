import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.enchantments.IEnchantmentDefinition;

print(" =================== Tooltips =================== ");
print(" ================================================ ");
/*
	This script adding tooltips
*/

//======= Add Tooltip =======
//
    <extrautils2:bagofholding>.addTooltip(format.red("WARNING! Contents may be lost by switching gamemodes"));
    <ebwizardry:crystal_block:*>.addTooltip(format.gold("Can be used to ward off Nether Portal Corruption"));
    <cyclicmagic:inventory_food>.addTooltip(format.red("WARNING! Can delete items inside when the game crashes or closes unexpectedly"));
    <immersiveengineering:railgun>.addTooltip(format.yellow("Damage amplified to 40x"));
    <immersiveengineering:revolver>.addTooltip(format.yellow("Bullet Damage values amplified to ~15x"));
    <actuallyadditions:item_bag>.addTooltip(format.darkRed("Disabled due to bug!"));
    <quark:enderdragon_scale>.addTooltip(format.underline(format.aqua("Can be used to DUPLICATE an Elytra")));
    <xnet:controller>.addTooltip(format.underline(format.aqua("Does not need any power to operate or work.")));
    <mekanismgenerators:reactor>.addTooltip(format.green("Only requires one Chemical Reactor for recipe"));
    <appliedenergistics2:facade>.addTooltip(format.gold("Facades are not disabled, just hidden in JEI. To craft facades, place the block of your choice in the centre of the crafting grid (3x3) and 4x AE2 cable anchors on all adjacent sides of that block."));
    <torchmaster:mega_torch>.addTooltip(format.yellow("Stops Mob Spawns in a 64 Block Radius"));
    

//
