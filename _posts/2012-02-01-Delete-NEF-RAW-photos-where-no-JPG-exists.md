Sometimes I shoot my pictures with Nikons NEF/RAW format but keep also shooting JPEGs. To sort bad pictures out I only view the JPG and delete them if I don't like them. After this process I end up with sometimes very much NEF/RAW images which I don't want.

To delete the unwanted NEF/RAW files you could probably just find them in the file explorer and delete them.

If you are at a Linux Box, there are better ways to do this. If also using the zsh, you can use this simple command to print all NEF files where no JPG exist: 

    print *.NEF(e_'[[ ! -e $REPLY:r.JPG ]]'_)

or just delete them:

    rm *.NEF(e_'[[ ! -e $REPLY:r.JPG ]]'_)

Command based on http://grml.org/zsh/zsh-lovers.html

    # Show me all the .c files for which there doesn't exist a .o file.
    $ print *.c(e_'[[ ! -e $REPLY:r.o ]]'_)
