---
layout: default
title: Fedora17 getopt not in cstdlib
---

In our current c++ program we used getopt for the argument processing. Compiling the program with Fedora16 was no problem. Today the code didn't compile with Fedora17. The error was

{% highlight sh %}
thomas@thinky ~/FH/cs/3/cg/pr/3/Debug (git)-[master] % make
Building file: ../Cli.cpp
Invoking: GCC C++ Compiler
g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"Cli.d" -MT"Cli.d" -o "Cli.o" "../Cli.cpp"
../Cli.cpp: In constructor ‘Cli::Cli(int, char**)’:
../Cli.cpp:7:42: error: ‘getopt’ was not declared in this scope
../Cli.cpp:20:7: error: ‘optind’ was not declared in this scope
../Cli.cpp:25:19: error: ‘optind’ was not declared in this scope
make: *** [Cli.o] Error 1
{% endhighlight %}

getopt is not in cstdlib anymore. The includes are extended with getopt.

{% highlight c %}
#include <cstdlib>
#include <getopt.h>
{% endhighlight %}
