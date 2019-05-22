import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;


val craftingToDisable =[
		// Tinker table
	<powersuits:tinkertable>,
		// Wiring
	<powersuits:powerarmorcomponent:0>,
		// Solenoid
	<powersuits:powerarmorcomponent:1>,
		// Servo
	<powersuits:powerarmorcomponent:2>,
		// Myofiber Gel
	<powersuits:powerarmorcomponent:16>,
		// Carbon myofiber
	<powersuits:powerarmorcomponent:14>,
		// Solar panel
	<powersuits:powerarmorcomponent:18>,
		// Computer chip
	<powersuits:powerarmorcomponent:20>,
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

recipes.removeByRecipeName("powersuits:vanilla/powerarmor_head");
recipes.removeByRecipeName("powersuits:vanilla/powerarmor_feet");
recipes.removeByRecipeName("powersuits:vanilla/powerarmor_torso");
recipes.removeByRecipeName("powersuits:vanilla/powerarmor_legs");
recipes.removeByRecipeName("powersuits:vanilla/power_fist");

# Adds new crafting recipes to all of the components listed above. These recipes are designed to require more machines, without a ton of microcrafting.

// Armor:

recipes.addShaped(<powersuits:powerarmor_head>,
	[[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
	 [<powersuits:powerarmorcomponent:0>, null, <powersuits:powerarmorcomponent:0>]]);

recipes.addShaped(<powersuits:power_fist>,
	[[null, <powersuits:powerarmorcomponent:0>, null],
	 [<powersuits:powerarmorcomponent:0>, <ore:plateSteel>, null],
	 [null, <ore:plateSteel>, <powersuits:powerarmorcomponent:0>]]);
	 
recipes.addShaped(<powersuits:powerarmor_feet>,
	[[<powersuits:powerarmorcomponent:0>, null, <powersuits:powerarmorcomponent:0>],
	 [<ore:plateSteel>, null, <ore:plateSteel>]]);
	 
recipes.addShaped(<powersuits:powerarmor_torso>,
	[[<ore:plateSteel>, null, <ore:plateSteel>],
	 [<powersuits:powerarmorcomponent:0>, <ore:plateSteel>, <powersuits:powerarmorcomponent:0>],
	 [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
	 
recipes.addShaped(<powersuits:powerarmor_legs>,
	[[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
	 [<powersuits:powerarmorcomponent:0>, null, <powersuits:powerarmorcomponent:0>],
	 [<ore:plateSteel>, null, <ore:plateSteel>]]);
	 
// Components:

	// Wiring:
recipes.addShaped(<powersuits:powerarmorcomponent:0>,
	[[null, <ore:wireElectrum>, null],
	 [<ore:wireElectrum>, <ore:ingotElectrum>, <ore:wireElectrum>,],
	 [null, <ore:wireElectrum>, null]]);
	 
recipes.addShaped(<powersuits:powerarmorcomponent:0>,
	[[null, <factorytech:machinepart:22>, null],
	 [<factorytech:machinepart:22>, <ore:ingotElectrum>, <factorytech:machinepart:22>,],
	 [null, <factorytech:machinepart:22>, null]]);
	 
	// Solenoid:
recipes.addShaped(<powersuits:powerarmorcomponent:1>,
	[[<powersuits:powerarmorcomponent:0>, <ore:ingotSteel>, <powersuits:powerarmorcomponent:0>],
	 [<powersuits:powerarmorcomponent:0>, <ore:ingotSteel>, <powersuits:powerarmorcomponent:0>],
	 [<powersuits:powerarmorcomponent:0>, <ore:ingotSteel>, <powersuits:powerarmorcomponent:0>]]);
	 
	// Servo:
recipes.addShaped(<powersuits:powerarmorcomponent:1>,
	[[null, <powersuits:powerarmorcomponent:1>, null],
	 [<powersuits:powerarmorcomponent:0>, <ore:ingotSteel>, <powersuits:powerarmorcomponent:0>],
	 [null, <powersuits:powerarmorcomponent:1>, null]]);

	// Carbon myofiber
recipes.addShaped(<powersuits:powerarmorcomponent:14>,
	[[<ore:blockCoke>, <ore:blockCoke>, <ore:blockCoke>],
	 [<ore:blockCoke>, <ore:blockCoke>, <ore:blockCoke>],
	 [<ore:blockCoke>, <ore:blockCoke>, <ore:blockCoke>]]);
	 
	// Myofiber Gel
recipes.addShaped(<powersuits:powerarmorcomponent:16>,
	[[null, <minecraft:magma_cream>, null],
	 [<ore:ingotSteel>, <minecraft:magma_cream>, <ore:ingotSteel>],
	 [<ore:ingotSteel>, <minecraft:magma_cream>, <ore:ingotSteel>]]);
	 
	// Solar panel
recipes.addShaped(<powersuits:powerarmorcomponent:18>,
	[[<projectred-expansion:solar_panel>, <projectred-expansion:solar_panel>, <projectred-expansion:solar_panel>],
	 [<ore:dustRedstone>, <thermalfoundation:material:514>, <ore:dustRedstone>]]);

	// Computer chip
recipes.addShaped(<powersuits:powerarmorcomponent:20>,
	[[<powersuits:powerarmorcomponent:0>, <powersuits:powerarmorcomponent:0>, <powersuits:powerarmorcomponent:0>],
	 [<appliedenergistics2:material:24>, <ore:plateSteel>, <appliedenergistics2:material:24>],
	 [<powersuits:powerarmorcomponent:0>, <powersuits:powerarmorcomponent:0>, <powersuits:powerarmorcomponent:0>]]);
	 
// Tinker table
recipes.addShaped(<powersuits:tinkertable>,
	[[<ore:plateSteel>, <ore:dyeBlue>, <ore:plateSteel>],
	 [<ore:dyeBlue>, <ore:gemEmerald>, <ore:dyeBlue>],
	 [<ore:plateSteel>, <ore:dyeBlue>, <ore:plateSteel>]]);