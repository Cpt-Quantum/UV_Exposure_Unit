# UV_Exposure_Unit
A directory for my UV exposure unit with code for a PIC18F45K50, and schematics.

Due to the nature of the electronic arrangement for this project a picture will be provided of the finished project to show how it is all assembled. The boards are all quite small and were designed to be modular, none of which are particularly complicated individually. The reason I went for an active control system for this project was so that it was self timing and then would shut off, so that it does not need to be managed, as the circuit board being exposed can be quite sensitive as to how much UV exposure it recieves.

A quick note: The PIC had to be changed midway through development due to one of the ports on my PIC16F877A being damaged, this made setting the individual bits on port B clear the states of the other pins in port B. This made my LCD library non-functional since it sets the individual bits. I have now changed the project to use the PIC18F45K50, I will be updating the schematics accordingly when I get round to finishing them.

The credit for the debouncing algorithm goes to Jack Ganssle. I do recommend reading his document on button debouncing (http://www.ganssle.com/debouncing.htm) as it goes into a lot of detail behind button bounce. The algorithm is particularly well designed to be called on an interrupt to minimise load on the CPU caused by traditional methods which use __delay(...). I have not implemented it this way for this project as the load on the CPU is relatively low.
