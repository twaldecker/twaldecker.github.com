You know this situation you started eclipse in a terminal and after opening a few files you want to type some commands in the terminal but you forgot the `&` after the command.

You can kill the programm (eclipse) with `strg`+`c` or you can pause it with `strg`+`z` and send it to the background with the `bg` command. After that your programm is continuing normal and you can use the terminal.

    thomas@thinky ~ % eclipse
    ^Z
    [1]  + 5497 suspended  eclipse
    20 thomas@thinky ~ % bg
    [1]  + 5497 continued  eclipse
    thomas@thinky ~ %
