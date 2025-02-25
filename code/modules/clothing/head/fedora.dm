/obj/item/clothing/head/fedora
	name = "fedora"
	icon = 'icons/obj/clothing/head/hats.dmi'
	worn_icon = 'icons/mob/clothing/head/hats.dmi'
	icon_state = "fedora"
	inhand_icon_state = "fedora"
	desc = "A really cool hat if you're a mobster. A really lame hat if you're not."

/obj/item/clothing/head/fedora/Initialize(mapload)
	. = ..()

	create_storage(type = /datum/storage/pockets/small/fedora)

/obj/item/clothing/head/fedora/white
	name = "white fedora"
	icon_state = "fedora_white"
	inhand_icon_state = null

/obj/item/clothing/head/fedora/beige
	name = "beige fedora"
	icon_state = "fedora_beige"
	inhand_icon_state = null

/obj/item/clothing/head/fedora/suicide_act(mob/user)
	if(user.gender == FEMALE)
		return 0
	var/mob/living/carbon/human/H = user
	user.visible_message(span_suicide("[user] is donning [src]! It looks like [user.p_theyre()] trying to be nice to girls."))
	user.say("M'lady.", forced = "fedora suicide")
	sleep(10)
	H.facial_hairstyle = "Neckbeard"
	return(BRUTELOSS)

/obj/item/clothing/head/fedora/carpskin
	name = "carpskin fedora"
	icon_state = "fedora_carpskin"
	inhand_icon_state = null
