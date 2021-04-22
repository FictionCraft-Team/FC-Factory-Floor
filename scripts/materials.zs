#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;

var titanium = MaterialSystem.getMaterialBuilder()
    .setName("Titanium")
    .setColor(Color.fromHex("ddd6ff") as Color)
    .build();

var materials = [titanium] as Material[];
var parts = ["ingot", "nugget", "dust", "plate", "gear", "rod", "ore", "molten"] as string[];


for i, mat in materials{
    mat.registerParts(parts);
    var blockData = mat.registerPart("block").getData();
	blockData.addDataValue("hardness", "5");
	blockData.addDataValue("resistance", "30");
	blockData.addDataValue("harvestTool", "pickaxe");
	blockData.addDataValue("harvestLevel", "2");
}

