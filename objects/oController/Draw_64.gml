// Draw score
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(-1);
draw_text(10, 10, "Score: " + string(global.score));
draw_text(10, 30, "Lore found: " + string(array_length(global.lore_log)) + "/" + string(6));
draw_text(10, 50, "[TAB] Journal");

// Draw lore journal overlay
if (global.lore_open) {
    var _w = display_get_gui_width();
    var _h = display_get_gui_height();
    
    draw_set_alpha(0.85);
    draw_set_color(c_black);
    draw_rectangle(50, 50, _w - 50, _h - 50, false);
    draw_set_alpha(1);
    
    draw_set_color(c_yellow);
    draw_set_halign(fa_center);
    draw_text(_w / 2, 70, "=== JOURNAL ===");
    
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    
    if (array_length(global.lore_log) == 0) {
        draw_text(70, 110, "No entries yet. Find candy.");
    } else {
        for (var i = 0; i < array_length(global.lore_log); i++) {
            draw_text(70, 110 + (i * 40), "> " + global.lore_log[i]);
        }
    }
    
    draw_set_color(c_gray);
    draw_set_halign(fa_center);
    draw_text(_w / 2, _h - 70, "[TAB] Close");
}