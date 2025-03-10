/obj/item/clothing/under/roguetown
	slot_flags = ITEM_SLOT_PANTS
	fitted = NO_FEMALE_UNIFORM
	can_adjust = FALSE
	body_parts_covered = GROIN|LEGS
	icon = 'icons/roguetown/clothing/pants.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/pants.dmi'
	equip_sound = 'sound/blank.ogg'
	drop_sound = 'sound/blank.ogg'
	pickup_sound =  'sound/blank.ogg'
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_pants.dmi'
	sleevetype = "leg"
	equip_delay_self = 30
	bloody_icon_state = "bodyblood"
	sewrepair = TRUE
	r_sleeve_zone = BODY_ZONE_R_LEG
	l_sleeve_zone = BODY_ZONE_L_LEG
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	flags_inv = HIDECROTCH

/obj/item/clothing/under/roguetown/AdjustClothes(mob/user)
#ifdef MATURESERVER
	if(loc == user)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			icon_state = "[initial(icon_state)]_t"
			body_parts_covered = null
			slowdown += 2
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_pants()
		else if(adjustable == CADJUSTED)
			ResetAdjust(user)
			if(user)
				if(ishuman(user))
					var/mob/living/carbon/H = user
					H.update_inv_pants()
#else
	return
#endif

/obj/item/clothing/under/roguetown/tights
	name = "tights"
	desc = "A pair of form fitting tights."
	gender = PLURAL
	icon_state = "tights"
	item_state = "tights"
//	adjustable = CAN_CADJUST

/obj/item/clothing/under/roguetown/tights/random/Initialize()
	color = pick("#544236", "#435436", "#543836", "#79763f")
	..()

/obj/item/clothing/under/roguetown/tights/black
	color = CLOTHING_BLACK

/obj/item/clothing/under/roguetown/tights/red
	color = CLOTHING_RED

/obj/item/clothing/under/roguetown/tights/purple
	color = CLOTHING_PURPLE

/obj/item/clothing/under/roguetown/tights/jester
	desc = "Funny tights!"
	color = "#1E3B20"

/obj/item/clothing/under/roguetown/tights/lord
	color = "#865c9c"

/obj/item/clothing/under/roguetown/tights/vagrant
	r_sleeve_status = SLEEVE_TORN
	body_parts_covered = GROIN|LEG_LEFT

/obj/item/clothing/under/roguetown/tights/vagrant/l
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_TORN
	body_parts_covered = GROIN|LEG_RIGHT

/obj/item/clothing/under/roguetown/tights/vagrant/Initialize()
	color = pick("#6b5445", "#435436", "#704542", "#79763f")
	..()

/obj/item/clothing/under/roguetown/tights/sailor
	name = "pants"
	icon_state = "sailorpants"

/obj/item/clothing/under/roguetown/webs
	name = "webbing"
	desc = "a fine webbing made from spidersilk, popular fashion within the underdark"
	gender = PLURAL
	icon_state = "webs"
	item_state = "webs"
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD

/obj/item/clothing/under/roguetown/trou
	name = "work trousers"
	desc = "Good quality trousers worn by laborers."
	gender = PLURAL
	icon_state = "trou"
	item_state = "trou"
//	adjustable = CAN_CADJUST
	sewrepair = TRUE
	armor = list("blunt" = 40, "slash" = 20, "stab" = 10, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT)
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	armor_class = ARMOR_CLASS_LIGHT
	salvage_amount = 1
	salvage_result = /obj/item/natural/hide/cured

/obj/item/clothing/under/roguetown/trou/leather
	name = "leather trousers"
	armor = list("blunt" = 80, "slash" = 50, "stab" = 40, "fire" = 0, "acid" = 0)
	icon_state = "leathertrou"
	prevent_crits = list(BCLASS_CUT, BCLASS_BLUNT, BCLASS_SMASH)
	max_integrity = 150
	resistance_flags = FIRE_PROOF

/obj/item/clothing/under/roguetown/heavy_leather_pants
	name = "hardened leather trousers"
	desc = "Thick hide cut and sewn into a pair of very protective trousers. The dense leather can \
	turn away errant chops."
	gender = PLURAL
	icon_state = "roguepants"
	item_state = "roguepants"
	sewrepair = TRUE
	armor = list("blunt" = 100, "slash" = 70, "stab" = 50, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_SMASH)
	blocksound = SOFTHIT
	max_integrity = 200
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD
	resistance_flags = FIRE_PROOF
	armor_class = ARMOR_CLASS_LIGHT
	salvage_result = /obj/item/natural/hide/cured

/obj/item/clothing/under/roguetown/heavy_leather_pants/shorts
	name = "hardened leather shorts"
	desc = "A thick hide pair of shorts, favored by some for their ease of motion in spite of \
	being less protective than full trousers."
	icon_state = "rogueshorts"
	item_state = "rogueshorts"
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_SMASH)
	body_parts_covered = GROIN

/obj/item/clothing/under/roguetown/trou/otavan
	name = "fancy leather trousers"
	desc = "padded leather armor made by tailors, its quality is remarkable."
	icon_state = "fencerpants"
	resistance_flags = FIRE_PROOF
	armor = list("blunt" = 100, "slash" = 70, "stab" = 50, "piercing" = 20, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_SMASH)
	blocksound = SOFTHIT
	max_integrity = 200
	blade_dulling = DULLING_BASHCHOP
	sewrepair = TRUE
	allowed_race = NON_DWARVEN_RACE_TYPES

/obj/item/clothing/under/roguetown/trou/leather/mourning
	name = "mourning trousers"
	icon_state = "leathertrou"
	color = "#151615"

/obj/item/clothing/under/roguetown/trou/shadowpants
	name = "silk tights"
	desc = "Form-fitting legwear. Almost too form-fitting."
	icon_state = "shadowpants"
	allowed_race = NON_DWARVEN_RACE_TYPES

/obj/item/clothing/under/roguetown/trou/beltpants
	name = "belt-buckled trousers"
	desc = "Dark leather trousers adorned with far too many buckles to be pragmatic."
	icon_state = "beltpants"
	item_state = "beltpants"

/obj/item/clothing/under/roguetown/trou/apothecary
	name = "apothecary trousers"
	desc = "Heavily padded trousers. They're stained by countless herbs."
	icon_state = "apothpants"
	item_state = "apothpants"

/obj/item/clothing/under/roguetown/trou/artipants
	name = "artificer trousers"
	desc = "Thick leather trousers to protect from sparks or stray gear projectiles. Judging by the wear, its had plenty of use."
	icon_state = "artipants"
	item_state = "artipants"

/obj/item/clothing/under/roguetown/trou/leathertights
	name = "leather tights"
	desc = "Classy leather tights, form-fitting but tasteful."
	icon_state = "leathertights"
	item_state = "leathertights"

/obj/item/clothing/under/roguetown/skirt
	name = "skirt"
	desc = "Long, flowing, and modest."
	icon_state = "skirt"
	item_state = "skirt"
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/pants.dmi'

/obj/item/clothing/under/roguetown/skirt/random
	name = "skirt"

/obj/item/clothing/under/roguetown/skirt/random/Initialize()
	color = pick("#6b5445", "#435436", "#704542", "#79763f", CLOTHING_BLUE)
	..()

/obj/item/clothing/under/roguetown/skirt/blue
	color = CLOTHING_BLUE

/obj/item/clothing/under/roguetown/skirt/green
	color = CLOTHING_GREEN

/obj/item/clothing/under/roguetown/skirt/red
	color = CLOTHING_RED

/obj/item/clothing/under/roguetown/chainlegs
	name = "steel chain chausses"
	desc = "Chain leggings composed of interlinked metal rings."
	gender = PLURAL
	icon_state = "chain_legs"
	item_state = "chain_legs"
	sewrepair = FALSE
	armor = list("blunt" = 60, "slash" = 100, "stab" = 80, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT)
	blocksound = CHAINHIT
	max_integrity = 300
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD
	resistance_flags = FIRE_PROOF
	armor_class = ARMOR_CLASS_MEDIUM

/obj/item/clothing/under/roguetown/chainlegs/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/item_equipped_movement_rustle)

/obj/item/clothing/under/roguetown/splintlegs
	name = "brigandine chausses"
	desc = "Splint mail and brigandine chausses, designed to protect the legs while still providing almost complete free range of movement."
	icon_state = "splintlegs"
	item_state = "splintlegs"
	max_integrity = 250
	armor = list("blunt" = 60, "slash" = 70, "stab" = 70, "bullet" = 60, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT)
	blocksound = SOFTHIT
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	anvilrepair = /datum/skill/craft/blacksmithing
	smeltresult = /obj/item/ingot/iron
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD
	armor_class = ARMOR_CLASS_MEDIUM
	w_class = WEIGHT_CLASS_NORMAL
	resistance_flags = FIRE_PROOF
	sewrepair = FALSE

/obj/item/clothing/under/roguetown/splintlegs/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/item_equipped_movement_rustle, SFX_PLATE_COAT_STEP)

/obj/item/clothing/under/roguetown/brayette
	name = "brayette"
	desc = ""
	gender = PLURAL
	icon_state = "chain_bootyshorts"
	item_state = "chain_bootyshorts"
	sewrepair = FALSE
	armor = list("blunt" = 70, "slash" = 100, "stab" = 80, "bullet" = 50, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT)
	body_parts_covered = GROIN
	blocksound = CHAINHIT
	max_integrity = 300
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD
	resistance_flags = FIRE_PROOF
	armor_class = ARMOR_CLASS_LIGHT

/obj/item/clothing/under/roguetown/chainlegs/iron
	name = "iron chain chausses"
	icon_state = "ichain_legs"
	max_integrity = 250
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/iron

/obj/item/clothing/under/roguetown/platelegs
	name = "steel plate chausses"
	desc = "Reinforced armor to protect the legs."
	gender = PLURAL
	icon_state = "plate_legs"
	item_state = "plate_legs"
//	adjustable = CAN_CADJUST
	sewrepair = FALSE
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 50, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT)
	blocksound = PLATEHIT
	max_integrity = 400
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD
	smelt_bar_num = 2
	resistance_flags = FIRE_PROOF
	armor_class = ARMOR_CLASS_HEAVY

/obj/item/clothing/under/roguetown/platelegs/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/item_equipped_movement_rustle, SFX_PLATE_STEP)

/obj/item/clothing/under/roguetown/chainlegs/skirt
	name = "steel chain skirt"
	desc = "Interlinked metal rings that drape down to the crotch and no farther."
	icon_state = "chain_skirt"
	item_state = "chain_skirt"
	body_parts_covered = GROIN
	armor_class = ARMOR_CLASS_LIGHT

/obj/item/clothing/under/roguetown/platelegs/skirt
	name = "steel plate skirt"
	desc = "Reinforced armor that doesn't even protect the legs."
	icon_state = "plate_skirt"
	item_state = "plate_skirt"
	body_parts_covered = GROIN
	armor_class = ARMOR_CLASS_LIGHT

/obj/item/clothing/under/roguetown/loincloth
	name = "loincloth"
	desc = ""
	icon_state = "loincloth"
	item_state = "loincloth"
//	adjustable = CAN_CADJUST
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD

/obj/item/clothing/under/roguetown/loincloth/brown
	color = CLOTHING_BROWN

/obj/item/clothing/under/roguetown/loincloth/pink
	color = "#b98ae3"

/obj/item/clothing/under/roguetown/grenzelpants
	name = "mercenary paumpers"
	desc = "Padded pants for extra comfort and protection, adorned in vibrant colors."
	icon_state = "grenzelpants"
	item_state = "grenzelpants"
	sleeved = 'icons/roguetown/clothing/onmob/helpers/stonekeep_merc.dmi'
	detail_tag = "_detail"
	armor = list("blunt" = 30, "slash" = 10, "stab" = 20, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_BLUNT)
	var/picked = FALSE
	armor_class = ARMOR_CLASS_LIGHT

/obj/item/clothing/under/roguetown/grenzelpants/attack_right(mob/user)
	..()
	if(!picked)
		var/list/colors = list(
		"Swan White"="#ffffff",
		"Lavender"="#865c9c",
		"Royal Purple"="#5E4687",
		"Wine Rouge"="#752B55",
		"Sow's skin"="#CE929F",
		"Knight's Red"="#933030",
		"Madroot Red"="#AD4545",
		"Marigold Orange"="#E2A844",
		"Politely, Yuck"="#685542",
		"Astrata's Yellow"="#FFFD8D",
		"Bog Green"="#375B48",
		"Seafoam Green"="#49938B",
		"Woad Blue"="#395480",
		"Cornflower Blue"="#749EE8",
		"Adamantine Grey"="#404040",)

		var/choice = input(user, "Choose a color.", "Grenzelhoft colors") as anything in colors
		var/playerchoice = colors[choice]
		picked = TRUE
		detail_color = playerchoice
		detail_tag = "_detail"
		update_icon()
		if(loc == user && ishuman(user))
			var/mob/living/carbon/H = user
			H.update_inv_pants()

/obj/item/clothing/under/roguetown/grenzelpants/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

//----------------- ADAMANTINE---------------------

/obj/item/clothing/under/roguetown/platelegs/adamantine
	name = "Adamantine Plate Chausses"
	desc = "Reinforced leg plates forged of durable adamantine."
	gender = PLURAL
	icon = 'icons/roguetown/clothing/special/blkknight.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/special/onmob/blkknight.dmi'
	icon_state = "bklegs"
	item_state = "bklegs"
	sewrepair = FALSE
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 50, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT)
	blocksound = PLATEHIT
	max_integrity = 500
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/adamantine
	smelt_bar_num = 2

/obj/item/clothing/under/roguetown/trou/leather/pontifex
	name = "pontifex's chaqchur"
	desc = "A handmade pair of baggy, thin leather pants. They end in a tight stocking around the calf, ballooning out around the thigh."
	icon_state = "monkpants"
	item_state = "monkpants"
	naledicolor = TRUE
/obj/item/clothing/under/roguetown/splintlegs
	name = "brigandine chausses"
	desc = "Splint mail and brigandine chausses, designed to protect the legs while still providing almost complete free range of movement."
	icon_state = "splintlegs"
	item_state = "splintlegs"
	max_integrity = 250
	armor = list("blunt" = 60, "slash" = 70, "stab" = 70, "bullet" = 60, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT)
	blocksound = SOFTHIT
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	anvilrepair = /datum/skill/craft/blacksmithing
	smeltresult = /obj/item/ingot/iron
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD
	armor_class = ARMOR_CLASS_MEDIUM
	w_class = WEIGHT_CLASS_NORMAL
	resistance_flags = FIRE_PROOF
	sewrepair = FALSE

///////////////////////////////////////////////////////////////////
// Part of Kaizoku project that is still yet to be finished.     //
// The Demo usage is meant for Stonekeep and Warmongers.		 //
// If the usage for other sources is desired, before it finishes,//
// ask monochrome9090 for permission. Respect the artists's will.//
// If you want this quality content, COMMISSION me instead. 	 //
// For this project, requirements are low, and mostly lore-based.//
// I just do not desire for the Abyssariads to be butchered.	 //
///////////////////////////////////////////////////////////////////

/obj/item/clothing/under/roguetown/chainlegs/iron/haidate_tatami
	name = "haidate tatami"
	desc = "Flexible thigh guard with interlocking scales sewn into the fabric. Ideal for agility during battle."
	gender = PLURAL
	icon = 'icons/roguetown/kaizoku/clothingicon/pants.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/pants.dmi'
	icon_state = "haidate_tatami"
	item_state = "haidate_tatami"
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_pants.dmi'
	alternate_worn_layer = SHOESLEEVE_LAYER

/obj/item/clothing/under/roguetown/chainlegs/sendan
	name = "haidate sendan"
	desc = "Segmented thigh armor with overlapping plates that allows engagement in prolonged combat, without causing mobility issues."
	icon_state = "haidate_sendan"
	icon = 'icons/roguetown/kaizoku/clothingicon/pants.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/pants.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_pants.dmi'
	alternate_worn_layer = SHOESLEEVE_LAYER

/obj/item/clothing/under/roguetown/chainlegs/sendan/cursed/Initialize()
	. = ..()
	name = "soulbinded kote"
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT)

/obj/item/clothing/under/roguetown/platelegs/yoroihakama
	name = "yoroihakama"
	desc = "Hakama with extreme plate reinforcement, with protuding plates protecting the hips, and many interlocking steel plates under the cloth."
	gender = PLURAL
	icon = 'icons/roguetown/kaizoku/clothingicon/pants.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/pants.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_pants.dmi'
	icon_state = "yoroihakama"
	item_state = "yoroihakama"
	alternate_worn_layer = SHOESLEEVE_LAYER

/obj/item/clothing/under/roguetown/kaizoku/yoroihakama/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

/obj/item/clothing/under/roguetown/trou/tobi
	name = "tobi pants"
	desc = "Baggy pants of Kara-tur design. Suitable for those who works the field and avoid horseback."
	icon_state = "tobi"
	item_state = "tobi"
	icon = 'icons/roguetown/kaizoku/clothingicon/pants.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/pants.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_pants.dmi'

/obj/item/clothing/under/roguetown/trou/tobi/random/Initialize()
	color = pick("#544236", "#435436", "#543836", "#79763f")
	..()

/obj/item/clothing/under/roguetown/trou/tobi/thunder
	name = "thunder tobi pants"
	color = CLOTHING_THUNDER

/obj/item/clothing/under/roguetown/trou/tobi/storm
	name = "storm tobi pants"
	color = CLOTHING_STORM

/obj/item/clothing/under/roguetown/trou/tobi/ocean
	name = "ocean tobi pants"
	color = CLOTHING_OCEAN

/obj/item/clothing/under/roguetown/trou/tobi/island
	name = "island tobi pants"
	color = CLOTHING_ISLAND

/obj/item/clothing/under/roguetown/trou/tobi/kabukimono
	color = CLOTHING_KABUKIMONO

/obj/item/clothing/under/roguetown/trou/tobi/dragonslayer
	desc = "Baggy pants of Kara-tur design. This one is coated in asbestos, and may be just as dangerous."
	color = "#3d4681"
	armor = list("melee" = 20, "bullet" = 0, "laser" = 75,"energy" = 75, "bomb" = 75, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/under/roguetown/trou/leather/fur
	name = "thick tobi"
	icon_state = "furpants"
	desc = "A tobi made out of the easts beloved guardians - so the easts beloved guardians can use it."
	icon = 'icons/roguetown/kaizoku/clothingicon/pants.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/pants.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_pants.dmi'

/obj/item/clothing/under/roguetown/trou/leather/fur/random/Initialize()
	color = pick("#544236", "#435436", "#543836", "#79763f")
	..()

/obj/item/clothing/under/roguetown/tights/hakama
	name = "hakama"
	icon_state = "hakama"
	alternate_worn_layer = SHOESLEEVE_LAYER
	desc = "Suitable for the Kara-tur cultured, in which large battle-skirts does not hurt their masculinity, differently of the frail Imperial counterpart."
	icon = 'icons/roguetown/kaizoku/clothingicon/pants.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/pants.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_pants.dmi'

/obj/item/clothing/under/roguetown/tights/hakama/random/Initialize()
	color = pick("#544236", "#435436", "#543836", "#79763f")
	..()


/obj/item/clothing/under/roguetown/tights/hakama/eidolon
	color = CLOTHING_EIDOLON

/obj/item/clothing/under/roguetown/heavy_leather_pants/shinobizubon
	name = "shinobi zubon"
	desc = "Traditional flexible pants with loose fit around the legs with hardened leather tied under the cloth and ankles to prevent snagging and noise."
	gender = PLURAL
	icon = 'icons/roguetown/kaizoku/clothingicon/pants.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/pants.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_pants.dmi'
	icon_state = "shinobizubon"
	item_state = "shinobizubon"
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/under/roguetown/trou/otavan/ceramic
	name = "marauder chausses"
	desc = "Bone chausses chiseled into a mimicry of shells, equal to a lamellar of mollusk shells, so it better absorb and disperse impact."
	gender = PLURAL
	icon = 'icons/roguetown/kaizoku/clothingicon/pants.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/pants.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_pants.dmi'
	icon_state = "marauder_leg"
	item_state = "marauder_leg"
	max_integrity = 400
	alternate_worn_layer = SHOESLEEVE_LAYER

/obj/item/clothing/under/roguetown/platelegs/weepershanwenkai
	name = "god-patterned championage lowerhalf"
	desc = "Lower part of a godwenkai armor, relics of Kara-tur championage for those of high-ranking deeply bound to Abyssanctum. Usually made of bronze, the grasp of the current era brought high-quality steel to the table."
	icon = 'icons/roguetown/kaizoku/clothingicon/pants.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/pants.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_pants.dmi'
	icon_state = "weepershanwenkai"
	item_state = "weepershanwenkai"
	gender = PLURAL
	alternate_worn_layer = SHOESLEEVE_LAYER

/obj/item/clothing/under/roguetown/heavy_leather_pants/lightivory
	name = "ivory leg plates"
	desc = "The leg protection proper for the easts warriors."
	icon = 'icons/roguetown/kaizoku/clothingicon/pants.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/pants.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_pants.dmi'
	gender = PLURAL
	icon_state = "ivory_legs"
	item_state = "ivory_legs"

/obj/item/clothing/under/roguetown/kaizoku/tribal
	name = "tribal lowerhalf"
	desc = "piece of clothings usually used by the easts tribesmen of all genders."
	icon_state = "tribalcloth"
	icon = 'icons/roguetown/kaizoku/clothingicon/pants.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/pants.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_pants.dmi'
