/*
 * File:   general.c
 * Author: Connor
 *
 * Created on August 26, 2017, 8:31 PM
 */


#include <xc.h>
#include <stdint.h>
#include "general.h"

//Function to calculate number of tens for an integer input
uint8_t tens (uint8_t number_in){
    //Buffer the input value
    uint8_t number = number_in;
    
    uint8_t tens = 0;
    
    while (number >= 10){
        number = number - 10;
        tens++;
    }
    return tens;
}

//Function to return the character corresponding to a digit between 0 and 9
char tochar(uint8_t num) {
	char char_num;
	if (num == 0) {
		char_num = '0';
	}
	else if (num == 1) {
		char_num = '1';
	}
	else if (num == 2) {
		char_num = '2';
	}
	else if (num == 3) {
		char_num = '3';
	}
	else if (num == 4) {
		char_num = '4';
	}
	else if (num == 5) {
		char_num = '5';
	}
	else if (num == 6) {
		char_num = '6';
	}
	else if (num == 6) {
		char_num = '6';
	}
	else if (num == 7) {
		char_num = '7';
	}
	else if (num == 8) {
		char_num = '8';
	}
	else if (num == 9) {
		char_num = '9';
	}
	return char_num;
}

//Function to translate a time input in seconds (sss) to (mm/ss)
char *time(char *char_time, uint8_t time){
	uint8_t minutes = 0;
	uint8_t seconds = 0;
	uint8_t time_buffer = time;
    
    //Variable to hold the individual digits for mm/ss
    uint8_t tens_minutes = 0;
    uint8_t digits_minutes = 0;
    uint8_t tens_seconds = 0;
    uint8_t digits_seconds = 0;

    //Calculate number of minutes    
	while (time_buffer >= 60)
	{
		time_buffer = time_buffer - 60;
		minutes++;
	}
    //Calculate the number of seconds
    seconds = time - minutes * 60;
    
    //Calculate the number of tens of minutes and seconds
    tens_minutes = tens(minutes);
    tens_seconds = tens(seconds);
    
    //Calculate the digits of minutes and seconds
    digits_minutes = minutes - 10 * tens_minutes;
    digits_seconds = seconds - 10 * tens_seconds;

	char_time[0] = tochar(tens_minutes);
    char_time[1] = tochar(digits_minutes);
    char_time[2] = 'm';
    char_time[3] = tochar(tens_seconds);
    char_time[4] = tochar(digits_seconds);
    char_time[5] = 's';
            
	return char_time;
}