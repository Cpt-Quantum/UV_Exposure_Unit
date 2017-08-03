/*
 * File:   UV_Control.c
 * Author: Connor
 *
 * Created on April 14, 2017, 3:02 PM
 */


// PIC16F886 Configuration Bit Settings

// 'C' source line config statements

#include <xc.h>
#include "LCD.h"

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

// CONFIG1
#pragma config FOSC = INTRC_NOCLKOUT// Oscillator Selection bits (INTOSCIO oscillator: I/O function on RA6/OSC2/CLKOUT pin, I/O function on RA7/OSC1/CLKIN)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled and can be enabled by SWDTEN bit of the WDTCON register)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config MCLRE = ON       // RE3/MCLR pin function select bit (RE3/MCLR pin function is MCLR)
#pragma config CP = OFF         // Code Protection bit (Program memory code protection is disabled)
#pragma config CPD = OFF        // Data Code Protection bit (Data memory code protection is disabled)
#pragma config BOREN = ON       // Brown Out Reset Selection bits (BOR enabled)
#pragma config IESO = ON        // Internal External Switchover bit (Internal/External Switchover mode is enabled)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor Enabled bit (Fail-Safe Clock Monitor is enabled)
#pragma config LVP = OFF        // Low Voltage Programming Enable bit (RB3 pin has digital I/O, HV on MCLR must be used for programming)

// CONFIG2
#pragma config BOR4V = BOR40V   // Brown-out Reset Selection bit (Brown-out Reset set to 4.0V)
#pragma config WRT = OFF        // Flash Program Memory Self Write Enable bits (Write protection off)

#include <stdint.h>

//Define oscillator frequency for delay function use
#define _XTAL_FREQ 4000000

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

//Variable to store the on time in seconds - default of 30 seconds
uint16_t on_time = 30;

//Prototype function declarations
//Debounce and latching function for each button
void debounce1();
void debounce2();
void debounce3();
void debounce4();
void debounce5();
void debounce6();

void main(void) {
    //Turn off the comparators and analogue inputs
    ANSEL = 0x00;
    CM1CON0 = 0x07;
    CM2CON0 = 0x07;
   
    //Initialise the ports as needed
    TRISC = 0xF0;   //Set RC0-3 as outputs and 4-7 as inputs
    TRISA = 0x3F;   //Set RA0-5 as inputs and 6&7 as outputs
    TRISB = 0xC0;   //Set RB0-5 as outputs and 6&7 as inputs
  
    //Initialise LCD
//    LCD_Initialise(1,0,1,1);
    
    //Move to start position
//    LCD_Cursor_Position(1,1);
    
//    LCD_Write_Char("H");
    
    RB0=1;
    RB1=1;
    RB2=1;
    RB3=1;
    RB4=1;
    RB5=1;
    
    //Start while loop to keep the program looping forever    
    while(1){
    
    //Initialise the pins set as outputs to safe values
    ON_LED = 0;
    TOP_LED = 0;
    BOTTOM_LED = 0;
    SET_TIMER_LED = 0;
    TOP_STATE = 0;
    BOTTOM_STATE = 0;


    
    //Button read state:
    //This is the initial state, the PIC waits for the user to push the ON_BTN
    // to put the PIC into the on state. This is also the state to set the timer
    // and which LED panels (top or bottom) to turn on.
    while (ON_LED == 0) {
        //Read the buttons and set the states accordingly
        debounce1();
        debounce2();
        debounce3();
        debounce6();
        
        //If the timer set button has been activated, read the button states for
        // the up/down user inputs and wait until user presses the timer set 
        //button again.
        while (SET_TIMER_LED == 1){
            //Set timer with buttons
            debounce4();
            debounce5();
            debounce6();
        }
        __delay_ms(1);
    }
    
    
    //On state:
    //This is the state where the PIC switches on the LED panels and counts up
    // to the set timer amount and then switches off the panels. It then goes
    //back in to the button read state. The system can also exit this state if
    // the user presses the on/off button
    
    //Switch on the MOSFETs according to the user set state (held in the LED 
    //states)
    TOP_STATE=TOP_LED;
    BOTTOM_STATE=BOTTOM_LED;
    
    //Begin counter
    for(int i=0; (i<(1000*on_time)); i++){
        debounce1();
        if (ON_LED == 0) break;
        __delay_ms(1);
    }
    
    }//End program while loop
}

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
