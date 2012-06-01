This time I am sharing a simple design for a H-Bridge with used parts and an mbed ARM Cortex-M0 controller.

I had a bit difficulties to control the PNP transistors with the controller. The deal was to lift the voltage for the base of the PNP.

My design is based on used parts out of old cheap 5.1 dvd / audio combination and other stuff. Basically I think it doesn't really matter which type of transistor you use unless you are dealing with high powered motors.

Not so much text, here is the schematic:

![](/assets/img/posts/mbed-h-bridge/schematic.jpg)

Here a picture of the breadboard prototype:

![](/assets/img/posts/mbed-h-bridge/breadboard.jpg)

To control the motor with the mbed you can write a program based on the following source:

{% highlight C %}
#include "mbed.h"

DigitalOut a(p17);
DigitalOut b(p18);
DigitalOut c(p23);
DigitalOut d(p24);

void rechts() {
    a = 0;
    b = 1;
    c = 0;
    d = 1;
}

void links() {
    a = 1;
    b = 0;
    c = 1;
    d = 0;
}

void stop() {
    a = 1;
    b = 0;
    c = 0;
    d = 1;
}
    

int main() {
    while(1) {
    rechts();
    wait(0.2);
    stop();
    wait(0.1);
    links();
    wait(0.2);
    stop();
    wait(3);
    }
}
{% endhighlight %}
