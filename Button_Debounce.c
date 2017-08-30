/*
 * File:   Button_Debounce.c
 * Author: Connor
 *
 * Created on August 3, 2017, 9:34 PM
 */

#include <xc.h>
#include <stdint.h>
//#include "Button_Debounce.h"

//Define the pins for the buttons
#define ON_BTN_IN           RA5         
#define TOP_BTN_IN          RA4
#define BOTTOM_BTN_IN       RA3
#define TMR_DOWN_BTN_IN     RA2
#define TMR_UP_BTN_IN       RA1
#define TMR_SET_BTN_IN      RA0

//Define the pins for the status LEDs
#define ON_LED              RC3
#define TOP_LED             RC2
#define BOTTOM_LED          RC1
#define SET_TIMER_LED       RC0

//Define the pins for the MOSFET switches
#define TOP_STATE           RA7
#define BOTTOM_STATE        RA6

//Debounce functions. Credit goes to Jack Ganssle for the original algorithm
//This function is called on a regular interrupt inside the latching function

void debounce1(){
    static uint16_t State1;              //Current debounce status
    State1 = (State1<<1 | !ON_BTN_IN | 0xE000);
    if(State1 == 0xF000){
        ON_LED=!ON_LED;
        State1 = 0x0000;
    }
}

void debounce2(){
    static uint16_t State2;              //Current debounce status
    State2 = (State2<<1 | !TOP_BTN_IN | 0xE000);
    if(State2 == 0xF000){
        TOP_LED=!TOP_LED;
        State2 = 0x0000;
    }
}

void debounce3(){
    static uint16_t State3;              //Current debounce status
    State3 = (State3<<1 | !BOTTOM_BTN_IN | 0xE000);
    if(State3 == 0xF000){
        BOTTOM_LED=!BOTTOM_LED;
        State3 = 0x0000;
    }
}

void debounce4(){
    static uint16_t State4;              //Current debounce status
    State4 = (State4<<1 | !TMR_DOWN_BTN_IN | 0xE000);
    if(State4 == 0xF000){
        on_time = on_time - 1;
        State4 = 0x0000;
    }
}

void debounce5(){
    static uint16_t State5;              //Current debounce status
    State5 = (State5<<1 | !TMR_UP_BTN_IN | 0xE000);
    if(State5 == 0xF000){
        TOP_LED=!TOP_LED;
        State5 = 0x0000;
    }
}

void debounce6(){
    static uint16_t State6;              //Current debounce status
    State6 = (State6<<1 | !TMR_SET_BTN_IN | 0xE000);
    if(State6 == 0xF000){
        SET_TIMER_LED=!SET_TIMER_LED;
        State6 = 0x0000;
    }
}