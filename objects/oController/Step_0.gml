if (global.game_over) exit;
show_debug_message("timer: " + string(global.candy_timer) + " | candy exists: " + string(instance_exists(oCandy)));
if (!instance_exists(oCandy)) {
    if (global.candy_timer > 0) {
        global.candy_timer--;
    } else {
        
        var _x = random(room_width);
        var _y = random(room_height);
        instance_create_layer(_x, _y, layer, oCandy);
    }
}


if (keyboard_check_pressed(vk_tab)) {
    global.lore_open = !global.lore_open;
}