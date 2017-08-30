/*
 * File:   debounce.c
 * Author: Connor
 *
 * Created on August 12, 2017, 6:03 PM
 * 
 * This file handles the user inputs and states set by the user
 */


#include <xc.h>
#include "debounce.h"
#include <stdint.h>

//Define the pins for the buttons
#define ON_BTN_IN           PORTCbits.RC1    
#define TOP_BTN_IN          PORTCbits.RC2
#define BOTTOM_BTN_IN       PORTDbits.RD0
#define TMR_DOWN_BTN_IN     PORTDbits.RD1
#define TMR_UP_BTN_IN       PORTDbits.RD3
#define TMR_SET_BTN_IN      PORTDbits.RD2

//Define the pins for the status LEDs
#define ON_LED              LATDbits.LATD7
#define TOP_LED             LATDbits.LATD6
#define BOTTOM_LED          LATDbits.LATD5
#define SET_TIMER_LED       LATDbits.LATD4


//Variable to store the on time in seconds - default of 30 seconds
uint16_t on_time = 30;

//Debounce functions. Credit goes to Jack Ganssle for the original algorithm
//This function is called on a regular interrupt inside the latching function

void debounce_ON_BTN(){
    static uint16_t State1;              //Current debounce status
    State1 = (State1<<1 | !ON_BTN_IN | 0xE000);
    if(State1 == 0xF000){
        ON_LED=!ON_LED;
        State1 = 0x0000;
    }
}

void debounce_TOP_BTN(){
    static uint16_t State2;              //Current debounce status
    State2 = (State2<<1 | !TOP_BTN_IN | 0xE000);
    if(State2 == 0xF000){
        TOP_LED=!TOP_LED;
        State2 = 0x0000;
    }
}

void debounce_BOTTOM_BTN(){
    static uint16_t State3;              //Current debounce status
    State3 = (State3<<1 | !BOTTOM_BTN_IN | 0xE000);
    if(State3 == 0xF000){
        BOTTOM_LED=!BOTTOM_LED;
        State3 = 0x0000;
    }
}

void debounce_TMR_DOWN_BTN(){
    static uint16_t State4;              //Current debounce status
    State4 = (State4<<1 | !TMR_DOWN_BTN_IN | 0xE000);
    if(State4 == 0xF000){
        on_time = on_time - 1;
        State4 = 0x0000;
    }
}

void debounce_TMR_UP_BTN(){
    static uint16_t State5;              //Current debounce status
    State5 = (State5<<1 | !TMR_UP_BTN_IN | 0xE000);
    if(State5 == 0xF000){
        on_time = on_time + 1;
        State5 = 0x0000;
    }
}

void debounce_TMR_SET_BTN(){
    static uint16_t State6;              //Current debounce status
    State6 = (State6<<1 | !TMR_SET_BTN_IN | 0xE000);
    if(State6 == 0xF000){
        SET_TIMER_LED=!SET_TIMER_LED;
        State6 = 0x0000;
    }
}

//Initialisation function to set all outputs to zero
void debounce_initialise(){
    //Initialise relevant ports
    TRISD = 0x0F;
    TRISC = 0x0F;
    
    //Initialise the pins set as outputs to safe values
    ON_LED = 0;
    TOP_LED = 0;
    BOTTOM_LED = 0;
    SET_TIMER_LED = 0;
}

//State handling functions
uint8_t ON_State(){return ON_LED;}
uint8_t TMR_SET_State(){return SET_TIMER_LED;}
uint8_t TOP_State(){return TOP_LED;}
uint8_t BOTTOM_State(){return BOTTOM_LED;}

//Function to reset all states
void Reset_States(){
    ON_LED = SET_TIMER_LED = TOP_LED = BOTTOM_LED = 0;
}

//Function to return the set on_time
uint8_t On_Time(){return on_time;}

//Function to set the on time
void Set_On_Time(uint8_t set_on_time){on_time = set_on_time;}