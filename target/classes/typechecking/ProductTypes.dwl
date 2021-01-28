%dw 2.0

import * from dw::Runtime

//Close Object {||} Means no additional properties are allowed
// ? on a field means optional
// * on field means it can be repeated
// {} means open object additional properties
type MyUser = {name: String, lastName: String, age: Number, gender: "Male" | "Female", friends?: Array<String>, phone*?: String}

var myUser: MyUser = {
    name: "Mariano",
    lastName: "Achaval",
    age: 37,
    gender: "Male",
    address: "Avenida Simpre viva"
}

var friends: Array<String> = ["1","2"]

var otherUser: MyUser = {
    name: "Leandro",
    lastName: "Shokida",
    age: 30,
    gender: "Male",
    address: "Test",
    friends: friends
}

---
try(() -> if(random() > 0.5) fail("Fail") else "OK")  match {
		case is {success: false} ->  "Failure"
		else ->  "OK"
}
