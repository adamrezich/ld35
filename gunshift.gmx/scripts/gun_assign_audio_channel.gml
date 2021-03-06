// Description: This function will loop through any endpoint guns on the screen and assign that audio channel to have it's gun type
// This script is called every time a gun is attached to the player (or detached)

global.current_gun_channel = 0; // reset all of the gun sfx channels each collision

with (objGun_base) { //loop through each gun once:
    if ( 
    (global.current_gun_channel < MAX_GUN_CHANNELS) && // short circuiting saves processing time
    ancestor == objP.id &&  // if it's attached to the player
    (x >= view_xview[0] && // if it's on the screen
    x <= view_xview[0] + view_wview[0] && 
    y >= view_yview[0] && 
    y <= view_yview[0] + view_hview[0]) && 
    (ds_list_size(children) == 0) // if it is shootable
    ) {
        assigned_audio_channel = global.current_gun_channel; // make "if" logic in that gun step event to emit the sound
        global.current_gun_channel++;
    }
    else assigned_audio_channel = -1;
}

while (global.current_gun_channel < MAX_GUN_CHANNELS) {
    //clear audio channels?
    global.current_gun_channel++;
}


    




