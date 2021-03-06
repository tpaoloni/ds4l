# DualShock 4 Linux
##### By Andrew Myers, Tom Paoloni, and Quinlan Deval
This project allows you to map a Sony DualShock 4 (Playstation 4) controller to keyboard input over USB. This can be used to play games, or even perform normal computer tasks with a controller rather than the standard keyboard. By configuring the layout of keys, you can specify how to make the controller fit your needs best.

This project was done for CSE2431 at The Ohio State University. It's functionality is not complete nor guaranteed.


## Install and Run
In order to use this project, you must install [libxdo-dev](https://www.semicomplete.com/projects/xdotool/). Xdo is a tool used for simulating keyboard input and is used for generating output from controller button presses. It can be installed using the following command:
```
apt-get install libxdo-dev
```
To make the project, run `make` and then to load the module and run the driver, run `make init`, both from the project's root folder. Be sure that the controller is plugged in and that you are a super user before running `make init`.

Finally, run `sh make_node.sh` as super user. This makes a device node that can be listened to for controller input.

To exit and unload the driver, run `make exit` as super user

## Configuration
To specify how the layout should be setup, go to the *key_map.config* file. Here, just type in the desired keyboard input for the appropriate DS4 buttons. Save the file, and restart the program if necessary.

