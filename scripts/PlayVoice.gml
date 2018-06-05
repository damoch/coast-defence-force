/// @description PlayVoice(snd)
/// @param snd
/// @param top_priority 
 
// Plays snd if no other sound is played
// 
//      
 

if(!obj_Controller.is_playing_sound || argument1){
    obj_Controller.is_playing_sound = true;
    audio_sound_gain(argument0, 0.1,1);
    audio_play_sound(argument0, 1, false);
    var timeout_length = audio_sound_length(argument0) * room_speed;
    obj_Controller.alarm[4] = timeout_length;
}
    
