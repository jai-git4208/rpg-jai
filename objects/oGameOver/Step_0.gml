if (keyboard_check_pressed(ord("R"))) {
    global.game_over = false;
    global.score = 0;
    global.lore_log = [];
    global.candy_timer = 0;
    global.lore_open = false;
    room_restart();
}