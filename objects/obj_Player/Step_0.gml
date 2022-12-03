/// @description PlayerMovement
// You can write your code in this editor


//Idle State
if(isIdle == true) 
{
	isWalking = false;
	isRunning = false;
	sprite_index = spr_PlayerIdlePlaceholder;
}

//Walking State
if(isWalking == true)
{
	isIdle = false;
	isRunning = false;
	sprite_index = spr_PlayerWalkingPlaceholder;
}

//Running State
if(isRunning == true)
{
	isIdle = false;
	isWalking = false;
	sprite_index = spr_PlayerRunningPlaceholder;
}



//Walking
	//Walking left
if(keyboard_check(ord("A")))
{ 
	isWalking = true;
	sprite_index = spr_PlayerWalkingPlaceholder;
	x -= 3;
}
	//Walking right
if(keyboard_check(ord("D")))
{
	isWalking = true;
	sprite_index = spr_PlayerWalkingPlaceholder;
	x += 3;
}
	//Walking up
if(keyboard_check(ord("W")))
{
	isWalking = true;
	sprite_index = spr_PlayerWalkingPlaceholder;
	y -= 3;
} 
	//Walking down
if(keyboard_check(ord("S")))
{
	isWalking = true;
	sprite_index = spr_PlayerWalkingPlaceholder;
	y += 3;
} 
	//Returning to Idle State
if(keyboard_check_released(ord("A")))
{
	isIdle = true;
}
if(keyboard_check_released(ord("D")))
{
	isIdle = true;
}
if(keyboard_check_released(ord("W")))
{
	isIdle = true;
}
if(keyboard_check_released(ord("S")))
{
	isIdle = true;
}



//Running 
	//Running left
if(keyboard_check(ord("A")) && keyboard_check(vk_lshift))
{ 
	
	isRunning = true;
	sprite_index = spr_PlayerRunningPlaceholder;
	x -= 5;
}
	//Running Right
if(keyboard_check(ord("D")) && keyboard_check(vk_lshift))
{ 
	
	isRunning = true;
	sprite_index = spr_PlayerRunningPlaceholder;
	x += 5;
}
	//Running Up
if(keyboard_check(ord("W")) && keyboard_check(vk_lshift))
{ 
	
	isRunning = true;
	sprite_index = spr_PlayerRunningPlaceholder;
	y -= 5;
}
	//Running Down
if(keyboard_check(ord("S")) && keyboard_check(vk_lshift))
{ 
	
	isRunning = true;
	sprite_index = spr_PlayerRunningPlaceholder;
	y += 5;
}