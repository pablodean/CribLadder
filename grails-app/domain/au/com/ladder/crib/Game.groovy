package au.com.ladder.crib

class Game {

    Team winner
    Team loser
    Date date
    int winningMargin

    static constraints = {
        date(date:true, blank:false)
        winner(nullable:false)
        loser(nullable:false)
        winningMargin(min:1)
    }
}
