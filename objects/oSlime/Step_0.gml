if (global.game_over) exit;
movement_speed = 1;
mp_potential_step(oPlayer.x, oPlayer.y, movement_speed, true);

if (place_meeting(x, y, oPlayer)) {
    global.game_over = true;
    instance_create_layer(room_width / 2, room_height / 2, "Instances", oGameOver);
}