import mods.advancedmortars.Mortar;

mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond", "gold", "obsidian", "emerald"], <contenttweaker:kiln_clay> * 2, 20, [<minecraft:sand> * 2, <minecraft:clay_ball> * 2, <minecraft:dirt> * 1]);

recipes.remove(<advancedmortars:mortar>);

recipes.addShaped(<advancedmortars:mortar>,
    [
        [null, null, <ore:stickWood>],
        [<ore:plankTreatedWood>, <minecraft:flint>, <ore:plankTreatedWood>],
        [null, <ore:plankTreatedWood>, null]
    ]
);