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



***
So I started down a rabit hole, and now I'm here...



