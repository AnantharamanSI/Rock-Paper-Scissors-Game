compWins = 0
ties = 0

function getInput()
  println("Type in rock, paper, or scissors: ")
  print("Input: ")
  readline()
end
 
function enter()
  println("\nPress ENTER to continue.")
  readline()
end

function tie(compChoice)
  println("\nYou tied this, the computer chose $compChoice.")
  enter()
  clear()
  global ties += 1;
end

function loss(compChoice)
  println("\nYou lost this round, the computer chose $compChoice.")
  enter()
  clear()
  global compWins += 1;
end 

function win(compChoice)
  println("\nYou won this round, the computer chose $compChoice.")
  enter()
  clear()
end

function clear()
  print("\n")
  print("\n")
end

println("\nRock-Paper-Scissors Game")
println("\nJulia")
println("\n")
println("\nThis game consists of three rounds of rock-paper-scissors\nplayed against the computer.")

enter()
println("\n")


choices = ["rock", "paper", "scissors"]

for i = 1:3

  userChoice = getInput()
  compChoice = choices[rand(1:3)]

  userChoice == "rock" ? compChoice == "rock" ? tie(compChoice) : compChoice == "paper" ? loss(compChoice) : win(compChoice) : 
  
  userChoice == "paper" ? compChoice == "paper" ? tie(compChoice) : compChoice == "scissors" ? loss(compChoice) : win(compChoice) : 
  
  userChoice == "scissors" ? compChoice == "scissors" ? tie(compChoice) : compChoice == "rock" ? loss(compChoice) : win(compChoice) : print()

end

ties == 3 ? println("You and the computer tied!") : 
ties == 2 ? compWins == 1 ? println("You lost.") : println("You won!!") : 
ties == 1 ? compWins == 0 ? println("You won!!") : compWins == 1 ? println("You and the computer tied!") : println("You lost.") : 
compWins > 1 ? println("You lost.") : println("You won!!")
