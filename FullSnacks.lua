snacks_counter = 0

script.register_looped("Always Full Snacks", function (script)
    if snacks_counter == 0 then
        stats.set_int("MPX_NO_BOUGHT_YUM_SNACKS", 30)
        stats.set_int("MPX_NO_BOUGHT_HEALTH_SNACKS", 15)
        stats.set_int("MPX_NO_BOUGHT_EPIC_SNACKS", 5)
        stats.set_int("MPX_NUMBER_OF_CHAMP_BOUGHT", 5)
        stats.set_int("MPX_NUMBER_OF_ORANGE_BOUGHT", 10)
        stats.set_int("MPX_NUMBER_OF_BOURGE_BOUGHT", 10)
        stats.set_int("MPX_NUMBER_OF_SPRUNK_BOUGHT", 10)
        stats.set_int("MPX_MP_CHAR_ARMOUR_1_COUNT", 10)
        stats.set_int("MPX_MP_CHAR_ARMOUR_2_COUNT", 10)
        stats.set_int("MPX_MP_CHAR_ARMOUR_3_COUNT", 10)
        stats.set_int("MPX_MP_CHAR_ARMOUR_4_COUNT", 10)
        stats.set_int("MPX_MP_CHAR_ARMOUR_5_COUNT", 10)
        stats.set_int("MPX_CIGARETTES_BOUGHT", 20)
        stats.set_int("MPX_BREATHING_APPAR_BOUGHT", 20)
        stats.set_int("MPX_CLUB_POPULARITY", 1000)
        stats.set_float("MPX_PLAYER_MENTAL_STATE", 0)
        local mental_state_global = globals.get_uint(2738587 + 4699)
        mental_state_global = mental_state_global | (1 << 0)
        globals.set_uint(2738587 + 4699, mental_state_global)
        stats.set_packed_stat_int(26363, 0) --Casino Penthouse Cleanliness stat.
        stats.set_packed_stat_bool(27214, false) --Casino Penthouse has thrown party.
        PED.SET_PED_ARMOUR(PLAYER.PLAYER_PED_ID(), PLAYER.GET_PLAYER_MAX_ARMOUR(PLAYER.PLAYER_ID()))
        snacks_counter = 500
    else
        snacks_counter = snacks_counter - 1
    end
end)