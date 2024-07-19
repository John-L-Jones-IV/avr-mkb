The goal for this project is a learning oportutnity for microcontrollers.

I have a general background in programming, but there are some gaps in my 
knowledge.

To begin, my general understanding is this:
C code is turned in to machine specific assembly code by the compiler, such as
GCC. The asembly code is then translated into machine (hex, bin, etc.) code by
an assemblier. The machine code is executable by the microcontoller, but first
you have to flash the code to a space in memory which is dedecate to hold such
executable code. 

Now, this is where some of my gaps start to show them selves and where I believe
many of the nuances in how your code gets from your screen to your device. The
machine code needs to be flashed by a specific program that thansfers the 
machine code via a seieral port, either good ol' RX and TX pairs or a something
like USB.

(side bar) in the case of USB an entire protocal and hard possibly hardware 
needs to be in place for this transfer to occur... we'll circle back to the USB
protocal later since I'm trying to build a USB keyboard.

This lack of knowledge has been a very massive achelies heel in past projects,
I was not certian how to build code to run on a Parrot Bebop. I was familar with
something like a hardware abstration layer (HAL) but didn't know where to find
it and didn't know where to look to learn what I did not know.
Since then I've heard some of the lingo that may point me in the general 
direction of what I don't know. Such as Cmake and Make files, linkers, etc.

I believe in many MCUs there are specifc addresses in memory that are actually
mapped to specialty hardware such as GPIOs that allow us to do things like 
enteract with other chips, or LEDs on certian ports etcs.

I am setting out to build a macro keyboard from scrath without any libraries or
existing dependencies. Not because this is the most effecient way to get a work
product, but as a lesson. 

List of Resources:

Microcontroller Firmware from Scratch
youtube.com/watch?v=vznYVh5ugnk
where

ARV GCC Blinky Example

# Tinking and Wandering
So I started down a journey to see what I don't know about the compiling high-
level languages and their associated tool chains.

My understanding now is as follows (for my notes only) here is a link to an
in-depth video:

1. Preprocess.
In the C language this is the "#" statements like #define #if #include...
The preprocessor will look at these and replace them with more C-code.

2. Compile.
Now that you have a complete block of C code the compiler can now turn that into
*machine specific* assembly language code. This will only work on 

3. Assemble.
Turn assemlby code into machine code.

4. Link.
Tie in all your pieces and their dependencies into a complete executable, 
including and other references they may need. 

Side bar story for libc and libm and include them with -lc and -lm respectivly.
HOWEVER, -lc is always there by default

Okay, so this seems great, but I've had my mcu dev board for a few days now and
I haven't even seen the thing blink yet...


# Just get something to work
Looking at
www.nongnu.org/avr-libc/user-manual/group__demo__project.html

as a base-line to get a blinky.c program to work.

first thing is inttypes.h not found

it was in the toolpath

so let's make the file simpler and remove it. let's just get somehting to compile.

now it says -lm and -lc aren't found. hello, old friend, we meet again.

first problem those pesky -lc and -lm files aren't appearing.

good ol' apt install avr-libc fixed that right up.

and now I'll even get #include <inttypes.h> to work.

avr-gcc -S main.c yields: commit 'init demo.s'

queue another tangent into AVR assemlby language....

## Searching for a Simulator
I wish MiSaSim was a thing for the AVR assembly language. Shout out to Linda
Wills.

The closest thing I settled on was Microchip Studio... Like the old one. And
I selected Atmega32 b/c the 32u4 did not have a simulator built. 

Hackaday has an excellent video on AVR's from the guy who made Wokwi, an online arduino simulator.

Somewhere along the way I stumbled across embeeded C standard to minimize errors and volitile should always be used for accessing registers.

# Back to Blinky.c
PD5 is the guy.

I understand where the registers are being defined now! I could use my own
(*(volitile uint8_t* 0Xff)) type definitons, but I think I know where they come
from good enough now.


got avr dude to work... but it was NOT straight forward... thank reddit for making
that clear... I don't understand ports.

And you have to play a very delicate game of press reset at the right time for all
the handshakes to occur properly.


An intersting experiment here:
https://stackoverflow.com/questions/67556902/convert-a-compiled-c-program-to-shellcode-hex
