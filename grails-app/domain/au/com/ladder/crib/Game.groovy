package au.com.ladder.crib

class Game {

    Team winner
    Team loser
    Date date
    int winningMargin

    static constraints = {
        winningMargin(min:1)
    }
}
