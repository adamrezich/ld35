parent = noone;
ancestor = noone;

children = ds_list_create();
frozen_angle = 0;
frozen_len = 0;
frozen_dir = 0;

generation = 0;

can_shoot = true;

shot_delay = 5;
bullet_spread = 5;
bullet_speed = 7;
barrel_length = 24;


// audio
assigned_audio_channel = -1; // -1 is the default null value (no audio channel assigned currently)
