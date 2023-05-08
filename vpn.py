import sys
import time
import os

# Define a function to simulate a loading screen with typewriter effect
def loading_screen(display_animation):
    if not display_animation:
        return

    message = "Connecting To Ghost Database"
    for i in range(len(message)):
        sys.stdout.write(message[i])
        sys.stdout.flush()
        time.sleep(0.1)
    for i in range(6):
        sys.stdout.write(".")
        sys.stdout.flush()
        time.sleep(0.2)
    print("")

# Define a function to send messages to an IP address
def send_messages(ip_address, messages):
    for message in messages:
        print(f"| Ghost Console | ", end="")
        for i in range(len(message)):
            sys.stdout.write(message[i])
            sys.stdout.flush()
            time.sleep(0.1)
        print(f" | Successfully Connected | {ip_address}")
        time.sleep(1)

    # Clear the console and print the ASCII art after the messages are sent
    os.system('cls' if os.name == 'nt' else 'clear')
    print(""" 
               _.-, 
              _ .-'  / .._
           .-:'/ - - \:::::-.
         .::: '  e e  ' '-::::.
        ::::'(    ^    )_.::::::
       ::::.' '.  o   '.::::'.'/_
   .  :::.'       -  .::::'_   _.:
 .-''---' .'|      .::::'   '''::::
'. ..-:::'  |    .::::'        ::::
 '.' ::::    \ .::::'          ::::
      ::::   .::::'           ::::
       ::::.::::'._          ::::
        ::::::' /  '-      .::::
         '::::-/__    __.-::::'
           '-::::::::::::::-'
jrei           '''::::'''
    """)

while True:
    # Call the loading_screen function to display a loading animation
    loading_screen(True)

    # Prompt the user to enter their IP address
    ip_address = input("Enter your IP address: ")

    # Check if the user wants to quit
    if ip_address == "exit":
        break

    # Define a list of example messages
    messages = ["Accessing Database Defineries", "Accessing User Console Database", "Extracting User Debrief", "Downloading Console AxiomCom.py", "Accessing Axiom Server Functions", "Dowloading Axiom Telnet Drivers"]

    # Call the send_messages function to send the example messages to the IP address entered by the user
    send_messages(ip_address, messages)

    # Call the loading_screen function to display the ASCII art without the loading animation
    loading_screen(False)

    print(f"Connected Client To Address {ip_address}")

# Say goodbye to the user
print("Goodbye!")
