# zyboz7-20-led-arcade
Small Zybo board project.

## Features
! RGB LEDs: The game uses RGB LEDs available on the Zybo Z7-20 board.
* **Button Input**: There are four buttons corresponding to each LED, allowing players to make their guesses.
* **Speed Control**: Two switches (S0 and S1) enable players to adjust the blinking speed of LEDs.
* **Feedback LEDs**: Green RGB LED lights up for a correct guess, red RGB LED lights up for a wrong guess, and two red LEDs light up if more than 1 button are pressed simultaneously.
* **Freeze and Reset**: After a guess is made, the LEDs freeze until the player resets the game using switch S3.
* **Processig  System**: The PS is added so we can load the bitstream from for exapmple Petalinux.
  
![image](https://github.com/majaszturmaj/zyboz7-20-led-arcade/assets/63556516/f8478406-7786-4e53-a9db-96cdb9e58a12)
