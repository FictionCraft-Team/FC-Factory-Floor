import mods.artisanworktables.builder.RecipeBuilder;

//////////////////////////////////////////////////
// COMPONENTS
//////////////////////////////////////////////////

RecipeBuilder.get("engineer")
    .setShaped([
        [<minecraft:paper>, <minecraft:clay_ball>, <minecraft:paper>],
        [<ore:wireCopper>, <ore:nuggetBronze>, <ore:wireCopper>],
        [<minecraft:paper>, <minecraft:clay_ball>, <minecraft:paper>]])
    .addOutput(<contenttweaker:resistor> * 4)
    .create();

//////////////////////////////////////////////////
// CIRCUITS
//////////////////////////////////////////////////

RecipeBuilder.get("engineer")
    .setShaped([
        [<contenttweaker:resistor>, <immersiveengineering:material:20>, <contenttweaker:resistor>],
        [<thermalfoundation:material:321>, <thermalfoundation:material:321>, <thermalfoundation:material:321>],
        [<contenttweaker:resistor>, <immersiveengineering:material:20>, <contenttweaker:resistor>]])
    .addTool(<artisanworktables:artisans_solderer_bronze>, 1)
    .addOutput(<contenttweaker:primitive_circuit>)
    .create();