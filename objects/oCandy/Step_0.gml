
if (place_meeting(x, y, oPlayer)) {
    // Add points
    global.score += 10;
    
    
    var _msg = lore_messages[lore_index];
    array_push(global.lore_log, _msg);
    
    
    global.candy_timer = room_speed * 5;
    instance_destroy();
}