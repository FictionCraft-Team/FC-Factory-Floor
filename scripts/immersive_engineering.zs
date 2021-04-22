import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

recipes.remove(<immersiveengineering:tool>);
recipes.remove(<immersiveengineering:tool:1>);

recipes.addShaped(<immersiveengineering:tool>,
    [
        [null, <ore:ingotTin>, <ore:string>],
        [null, <ore:stickWood>, <ore:ingotTin>],
        [<ore:stickWood>, null, null]
    ]
);

recipes.addShaped(<immersiveengineering:tool:1>,
    [
        [null, <ore:plateBronze>, null],
        [<ore:plateBronze>, <ore:stickTreatedWood>, <ore:stickTreatedWood>],
        [null, <ore:stickTreatedWood>, null]
    ]
);

furnace.addRecipe(<contenttweaker:kiln_brick>, <contenttweaker:kiln_clay>);

recipes.removeShaped(<immersiveengineering:stone_decoration:10>, [[<ore:sandstone>, <minecraft:brick>], [<minecraft:brick>, <ore:sandstone>]]);

recipes.addShaped(<immersiveengineering:stone_decoration:10>,
    [
        [<contenttweaker:kiln_brick>, <contenttweaker:kiln_brick>],
        [<contenttweaker:kiln_brick>, <contenttweaker:kiln_brick>]
    ]
);

/*
To see all of the plates in the game, search:
plate -chest -@tinkers -pressure -@enderio -template -@thermaldy -@simply -@gauge -press -shield -tome
in JEI
*/

val plates = [
    [<immersiveengineering:sheetmetal>,    <thermalfoundation:material:320>],
    [<immersiveengineering:sheetmetal:1>,  <thermalfoundation:material:324>], 
    [<immersiveengineering:sheetmetal:2>,  <thermalfoundation:material:323>], 
    [<immersiveengineering:sheetmetal:3>,  <thermalfoundation:material:322>], 
    [<immersiveengineering:sheetmetal:4>,  <thermalfoundation:material:325>], 
    [<immersiveengineering:sheetmetal:5>,  <immersiveengineering:metal:35>], 
    [<immersiveengineering:sheetmetal:6>,  <thermalfoundation:material:356>], 
    [<immersiveengineering:sheetmetal:7>,  <thermalfoundation:material:353>], 
    [<immersiveengineering:sheetmetal:8>,  <thermalfoundation:material:352>], 
    [<immersiveengineering:sheetmetal:9>,  <thermalfoundation:material:32>],
    [<immersiveengineering:sheetmetal:10>, <thermalfoundation:material:33>]
] as [IItemStack[]];

for recipe in plates{
    recipes.addShapeless(recipe[1] * 4, [recipe[0]]);
}

/*val wires = [
    <immersiveengineering:material:20>,
    <immersiveengineering:material:21>,
    <immersiveengineering:material:22>,
    <immersiveengineering:material:23>,
] as IItemStack[];

for wire in wires{
    recipes.remove(wire);
}*/

recipes.addShapeless(<thermalfoundation:material:321>, [<ore:ingotTin>, <ore:ingotTin>, <immersiveengineering:tool>.reuse()]);
recipes.addShapeless(<thermalfoundation:material:320>, [<ore:ingotCopper>, <ore:ingotCopper>, <immersiveengineering:tool>.reuse()]);
recipes.addShapeless(<thermalfoundation:material:355>, [<ore:ingotBronze>, <ore:ingotBronze>, <immersiveengineering:tool>.reuse()]);