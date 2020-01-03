# Rock-Paper-Scissors Game


compWins = 0
userWins = 0

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
end

function loss(compChoice)
  println("\nYou lost this round, the computer chose $compChoice.")
  enter()
  clear()
  global compWins += 1
end 

function win(compChoice)
  println("\nYou won this round, the computer chose $compChoice.")
  enter()
  clear()
  global userWins+=1
end

function clear()
  print("\n")
  print("\n")
end

println("\nRock-Paper-Scissors Game")
println("\nJulia")
println("\n")
println("\nThis rock-paper-scissors game is a race to two wins\nplayed against the computer.")

enter()
println("\n")


choices = ["rock", "paper", "scissors"]

while userWins < 2 && compWins < 2
  userChoice = getInput()
  compChoice = choices[rand(1:3)]

  userChoice == "rock" ? compChoice == "rock" ? tie(compChoice) : compChoice == "paper" ? loss(compChoice) : win(compChoice) : 
  
  userChoice == "paper" ? compChoice == "paper" ? tie(compChoice) : compChoice == "scissors" ? loss(compChoice) : win(compChoice) : 
  
  userChoice == "scissors" ? compChoice == "scissors" ? tie(compChoice) : compChoice == "rock" ? loss(compChoice) : win(compChoice) : print()
  println("Current Score")
  println("You: ",userWins)
  println("Computer: ",compWins)
  println()


end

compWins == 2 ? println("You lost.") : println("You win!!")
