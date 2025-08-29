

################################################
###  PHSLaunch2025: Probability Mini-game  ###
############################################


hunters <- cbind("Mira", "Zoey", "Rumi")
D8 <- cbind("Mira", "Zoey", "Rumi", "Jinu", "Abby", "Mystery", "Romance", "Baby")


total_wins <- 0

n <- 1 ## Number of game rounds 
for (i in 1:n) {
  Roll <- sample(1:length(D8), 1) ## Randomly selects a number 1 through 8
  Summon <- D8[[Roll]] ## Picks the character the number is  associated with
  round_win <- Summon %in% hunters 
  ## Checks if the rolled character is a hunter (i.e. are you saved)
  total_wins <- total_wins + round_win
  win_rate <- total_wins/n
}
win_rate


