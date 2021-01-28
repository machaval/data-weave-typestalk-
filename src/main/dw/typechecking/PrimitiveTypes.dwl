%dw 2.0

var id = true


//On function accepts all types and it will do the discrimination at runtime
fun typeOfIdWithMatch(id) =
  id match {
    case s is String -> "id $(id) is a string"
    case s is Number -> "id $(id) is a number"
    case s is Boolean -> "id $(id) is a boolean"
  }

//Overloaded functions
//It will validate at design time and at runtime will dispatch
//To the correct function
fun typeOfId(id: Number) = "the id $(id) is a number"

fun typeOfId(id: String) = "the id $(id) is a string"

fun typeOfId(id: Boolean) = "the id $(id) is a boolean"



//It can also return different kind of types
//Or have different arity
fun newId(id: Number) = randomInt(id)

fun newId(id: String) = uuid() ++ id

fun newId(id: Boolean) = if(id) uuid() else randomInt(100)

---
typeOfId(id)