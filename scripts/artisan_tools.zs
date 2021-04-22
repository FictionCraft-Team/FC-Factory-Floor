import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("engineer")
    .setShaped([
        [null, null, <thermalfoundation:material:227>],
        [<immersiveengineering:wirecoil>, <thermalfoundation:material:355>, null],
        [<jaopca:item_sticktin>, <contenttweaker:resistor>, null]])
    .addOutput(<artisanworktables:artisans_solderer_bronze>)
    .create();