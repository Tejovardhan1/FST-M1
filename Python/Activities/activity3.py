
player1 = input("player 1, enter the choice(rock, paper, scissors): ").lower()
player2 = input("player 2, enter the choice(rock, paper, scissors): ").lower()

if player1 == player2:
    print("its a tie")
elif player1 == "rock":
    if player2 == "scissors":
        print ("player1 wins")
    else:
        print ("player2 wins")
elif player1 == "paper":
    if player2 == "rock":
        print ("player1 wins")
    else:
        print ("player2 wins")
elif player1 == "scissors":
    if player2 == "paper":
        print ("player1 wins")
    else:
        print ("player2 wins")
else:
    print("Invalid input")