/// @description Insert description here
// You can write your code in this editor
if((room_get_name(room) == "rFight1" or room_get_name(room) == "rFight2" or room_get_name(room) == "rFight3") and instance_number(oEnemy) == 0){
	room_goto_next();	
}