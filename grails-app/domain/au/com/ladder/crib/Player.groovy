package au.com.ladder.crib

class Player {

	String name
	String email
        

    //static hasMany = [teams: Team] // this needs work

    static constraints = {
        name(blank: false)
        email(email:true)
    }
}
