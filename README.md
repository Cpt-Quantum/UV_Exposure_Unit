# UV_Exposure_Unit
A directory for my UV exposure unit with code for a PIC16F877A, and schematics.

Due to the nature of the electronic arrangement for this project a picture will be provided of the finished project to show how it is all assembled. The boards are all quite small and were designed to be modular, none of which are particularly complicated individually. The reason I went for an active control system for this project was so that it was self timing and then would shut off, so that it does not need to be managed, as the circuit board being exposed can be quite sensitive as to how much UV exposure it recieves.

A quick note: The software isn't completed yet as there is a problem with pin RB5 not coming under software control. This will require delving into the datasheet some more as I haven't been able to find the root cause of the issue. This means that the LCD part of the code is not yet functioning as RB5 is connected to the register select pin on the LCD. The debounce code also needs to be tidied away into its own header file with associated functions.

The credit for the debouncing algorithm goes to Jack Ganssle. I do recommend reading his document on button debouncing (http://www.ganssle.com/debouncing.htm) as it goes into a lot of detail behind button bounce. The algorithm is particularly well designed to be called on an interrupt to minimise load on the CPU caused by traditional methods which use __delay(...). I have not implemented it this way for this project as the load on the CPU is relatively low.
