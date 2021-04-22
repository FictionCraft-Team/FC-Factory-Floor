import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*
To see all of the planks in the game, search:
planks -@applied -@arch -@chisel -treated
in JEI
*/

val vanilla = [
  [<minecraft:log>,    <minecraft:planks>], 
  [<minecraft:log:1>,  <minecraft:planks:1>],
  [<minecraft:log:2>,  <minecraft:planks:2>],
  [<minecraft:log:3>,  <minecraft:planks:3>],
  [<minecraft:log2>,   <minecraft:planks:4>],
  [<minecraft:log2:1>, <minecraft:planks:5>],
] as [IItemStack[]];

val bop = [
  [<biomesoplenty:log_0:4>, <biomesoplenty:planks_0>],
  [<biomesoplenty:log_0:5>, <biomesoplenty:planks_0:1>],
  [<biomesoplenty:log_0:6>, <biomesoplenty:planks_0:2>],
  [<biomesoplenty:log_0:7>, <biomesoplenty:planks_0:3>],
  [<biomesoplenty:log_1:4>, <biomesoplenty:planks_0:4>],
  [<biomesoplenty:log_1:5>, <biomesoplenty:planks_0:5>],
  [<biomesoplenty:log_1:6>, <biomesoplenty:planks_0:6>],
  [<biomesoplenty:log_2:4>, <biomesoplenty:planks_0:8>],
  [<biomesoplenty:log_2:5>, <biomesoplenty:planks_0:9>],
  [<biomesoplenty:log_2:6>, <biomesoplenty:planks_0:10>],
  [<biomesoplenty:log_2:7>, <biomesoplenty:planks_0:11>],
  [<biomesoplenty:log_3:4>, <biomesoplenty:planks_0:12>],
  [<biomesoplenty:log_3:5>, <biomesoplenty:planks_0:13>],
  [<biomesoplenty:log_3:6>, <biomesoplenty:planks_0:14>],
  [<biomesoplenty:log_3:7>, <biomesoplenty:planks_0:15>],
  [<biomesoplenty:log_1:7>, <biomesoplenty:planks_0:7>]
] as [IItemStack[]];

val pams = [
  [<harvestcraft:pamcinnamon>,  <minecraft:planks:3>],
  [<harvestcraft:pammaple>,     <minecraft:planks:1>],
  [<harvestcraft:pampaperbark>, <minecraft:planks:3>]
] as [IItemStack[]];

for recipe in vanilla{
    recipes.removeShaped(recipe[1], [[recipe[0]]]);
    recipes.addShapeless(recipe[1] * 2, [recipe[0]]);
}

for recipe in bop{
    recipes.removeShapeless(recipe[1], [recipe[0]]);
    recipes.addShapeless(recipe[1] * 2, [recipe[0]]);
}

for recipe in pams{
    recipes.removeShapeless(recipe[1], [recipe[0]]);
    recipes.addShapeless(recipe[1] * 2, [recipe[0]]);
}