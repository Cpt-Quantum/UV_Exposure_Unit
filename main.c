 /*
 * File:   main.C
 * Author: Connor
 *
 * Created on August 12, 2017, 5:21 PM
 */

/*************************************************/

// 'C' source line config statements

#include <xc.h>

/* PIC18F45K50 Configuration Bit Settings */
// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

// CONFIG1L
#pragma config PLLSEL = PLL4X   // PLL Selection (4x clock multiplier)
#pragma config CFGPLLEN = OFF   // PLL Enable Configuration bit (PLL Disabled (firmware controlled))
#pragma config CPUDIV = NOCLKDIV// CPU System Clock Postscaler (CPU uses system clock (no divide))
#pragma config LS48MHZ = SYS24X4// Low Speed USB mode with 48 MHz system clock (System clock at 24 MHz, USB clock divider is set to 4)

// CONFIG1H
#pragma config FOSC = INTOSCIO  // Oscillator Selection (Internal oscillator)
#pragma config PCLKEN = ON      // Primary Oscillator Shutdown (Primary oscillator enabled)
#pragma config FCMEN = OFF      // Fail-Safe Clock Monitor (Fail-Safe Clock Monitor disabled)
#pragma config IESO = OFF       // Internal/External Oscillator Switchover (Oscillator Switchover mode disabled)

// CONFIG2L
#pragma config nPWRTEN = OFF    // Power-up Timer Enable (Power up timer disabled)
#pragma config BOREN = SBORDIS  // Brown-out Reset Enable (BOR enabled in hardware (SBOREN is ignored))
#pragma config BORV = 190       // Brown-out Reset Voltage (BOR set to 1.9V nominal)
#pragma config nLPBOR = OFF     // Low-Power Brown-out Reset (Low-Power Brown-out Reset disabled)

// CONFIG2H
#pragma config WDTEN = ON       // Watchdog Timer Enable bits (WDT enabled in hardware (SWDTEN ignored))
#pragma config WDTPS = 32768    // Watchdog Timer Postscaler (1:32768)

// CONFIG3H
#pragma config CCP2MX = RC1     // CCP2 MUX bit (CCP2 input/output is multiplexed with RC1)
#pragma config PBADEN = OFF     // PORTB A/D Enable bit (PORTB<5:0> pins are configured as digital I/O on Reset)
#pragma config T3CMX = RC0      // Timer3 Clock Input MUX bit (T3CKI function is on RC0)
#pragma config SDOMX = RB3      // SDO Output MUX bit (SDO function is on RB3)
#pragma config MCLRE = ON       // Master Clear Reset Pin Enable (MCLR pin enabled; RE3 input disabled)

// CONFIG4L
#pragma config STVREN = ON      // Stack Full/Underflow Reset (Stack full/underflow will cause Reset)
#pragma config LVP = OFF        // Single-Supply ICSP Enable bit (Single-Supply ICSP disabled)
#pragma config ICPRT = OFF      // Dedicated In-Circuit Debug/Programming Port Enable (ICPORT disabled)
#pragma config XINST = OFF      // Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled)

// CONFIG5L
#pragma config CP0 = OFF        // Block 0 Code Protect (Block 0 is not code-protected)
#pragma config CP1 = OFF        // Block 1 Code Protect (Block 1 is not code-protected)
#pragma config CP2 = OFF        // Block 2 Code Protect (Block 2 is not code-protected)
#pragma config CP3 = OFF        // Block 3 Code Protect (Block 3 is not code-protected)

// CONFIG5H
#pragma config CPB = OFF        // Boot Block Code Protect (Boot block is not code-protected)
#pragma config CPD = OFF        // Data EEPROM Code Protect (Data EEPROM is not code-protected)

// CONFIG6L
#pragma config WRT0 = OFF       // Block 0 Write Protect (Block 0 (0800-1FFFh) is not write-protected)
#pragma config WRT1 = OFF       // Block 1 Write Protect (Block 1 (2000-3FFFh) is not write-protected)
#pragma config WRT2 = OFF       // Block 2 Write Protect (Block 2 (04000-5FFFh) is not write-protected)
#pragma config WRT3 = OFF       // Block 3 Write Protect (Block 3 (06000-7FFFh) is not write-protected)

// CONFIG6H
#pragma config WRTC = OFF       // Configuration Registers Write Protect (Configuration registers (300000-3000FFh) are not write-protected)
#pragma config WRTB = OFF       // Boot Block Write Protect (Boot block (0000-7FFh) is not write-protected)
#pragma config WRTD = OFF       // Data EEPROM Write Protect (Data EEPROM is not write-protected)

// CONFIG7L
#pragma config EBTR0 = OFF      // Block 0 Table Read Protect (Block 0 is not protected from table reads executed in other blocks)
#pragma config EBTR1 = OFF      // Block 1 Table Read Protect (Block 1 is not protected from table reads executed in other blocks)
#pragma config EBTR2 = OFF      // Block 2 Table Read Protect (Block 2 is not protected from table reads executed in other blocks)
#pragma config EBTR3 = OFF      // Block 3 Table Read Protect (Block 3 is not protected from table reads executed in other blocks)

// CONFIG7H
#pragma config EBTRB = OFF      // Boot Block Table Read Protect (Boot block is not protected from table reads executed in other blocks)

/* End of PIC18F45K50 Configuration Bit Settings */
/*************************************************/

#include <stdint.h>
#include "debounce.h"
#include "LCD.h"
#include "general.h"

//Define oscillator frequency for delay function use
#define _XTAL_FREQ 1000000

//Define the pins for the MOSFET switches
#define TOP_STATE           LATAbits.LATA7
#define BOTTOM_STATE        LATAbits.LATA6

//Global variable to save the set on_time between runs
uint8_t g_on_time = 30;

void main(void) {
    //Turn off comparitors
    CM1CON0 = 0x07;
    CM2CON0 = 0x07;

    //Turn off analogue functions to appropriate pins
    ANSELA = 0x00;
    ANSELC = 0x00;
    ANSELD = 0x00;
    ANSELE = 0x00;

    //Initialise the ports as needed
    debounce_initialise();
    TRISB = 0x00;

    //Initialise LCD
    LCD_Initialise(1, 0, 0, 0);

    //Move to start position on the LCD
    LCD_Cursor_Position(1, 1);

    //Start while loop to keep the program looping forever    
    while (1) {
        
        Reset_States();
        LCD_Clear();
        Set_On_Time(g_on_time);

        //Initialise states for the LED panels
        TOP_STATE = 0;
        BOTTOM_STATE = 0;

        //Button read state:
        //This is the initial state, the PIC waits for the user to push the ON_BTN
        // to put the PIC into the on state. This is also the state to set the timer
        // and which LED panels (top or bottom) to turn on.
        while (ON_State() == 0) {
            //Write "Select states" to LCD
            LCD_Cursor_Position(1, 1);
            LCD_Write_String("Select states", 13);
            //Display current set time on LCD
            LCD_Cursor_Position(1,2);
            LCD_Write_String("Timer:",6);
            //Now display current time that the system is set to run
            LCD_Cursor_Position(7,2);
            char ctime[] = "00m00s";
            LCD_Write_String(time(ctime,On_Time()),6);
            //Clear last 4 characters on the second row
            LCD_Write_String("    ",4);
            
            //Use an internal for loop to reduce the effect of the LCD functions'
            // wait times on the debounce functionality.
            for (int i = 0; i < 100; i++) {
                //Read the buttons and set the states accordingly
                debounce_ON_BTN();
                debounce_TOP_BTN();
                debounce_BOTTOM_BTN();
                debounce_TMR_SET_BTN();

                //If the timer set button has been activated, read the button states for
                // the up/down user inputs and wait until user presses the timer set 
                //button again.
                while (TMR_SET_State() == 1) {
                    //Prompt user to set time on the LCD and display current time that 
                    // the LED panels are set to be on for.
                    LCD_Cursor_Position(1,2);
                    LCD_Write_String("Set timer:", 10);
                    LCD_Write_String(time(ctime,On_Time()),6);
                    
                    //For loop to reduce effect of LCD functions on debouncing
                    for(int i = 0; i<100; i++){
                        //Set timer with buttons
                        debounce_TMR_DOWN_BTN();
                        debounce_TMR_UP_BTN();
                        debounce_TMR_SET_BTN();
                    }
                }
                __delay_ms(1);
            }
        }//End of button read state
        

        //On state:
        //This is the state where the PIC switches on the LED panels and counts up
        // to the set timer amount and then switches off the panels. It then goes
        //back in to the button read state. The system can also exit this state if
        // the user presses the on/off button
        
        //Firstly, store the current on_time so it is remembered after the timer 
        // expires.
        g_on_time = On_Time();
        
        //Switch on the MOSFETs according to the user set state (held in the LED 
        //states)
        TOP_STATE = TOP_State();
        BOTTOM_STATE = BOTTOM_State();
        
        LCD_Clear();
        LCD_Cursor_Position(1,1);
        LCD_Write_String("LED panels on!",14);
        LCD_Cursor_Position(1,2);
        LCD_Write_String("Time left:", 10);
        LCD_Cursor_Position(11,2);
        char ctime[] = "00m00s";
        LCD_Write_String(time(ctime,On_Time()),6);   
                
        //Begin counter
        while (On_Time()>=1){
            if (ON_State() == 0) break;
            for(int i = 0; i<1000; i++){
                debounce_ON_BTN();
                __delay_ms(1);
            }
            if (ON_State() == 0) break;
            Set_On_Time(On_Time()-1);
            //Update time left on the LCD
            LCD_Cursor_Position(11,2);
            LCD_Write_String(time(ctime,On_Time()),6);     
        }

    }//End program while loop
}//End of main