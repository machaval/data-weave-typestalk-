%dw 2.0


import * from dw::Runtime

// Allows to create a template from a type

type Response<T> = {
  failure: Boolean,
  value?: T,
  message?: String
}


var myResponse: Response<{name: String}> = {
  failure: false,
  value: {name: "Mariano"}
}

//  Matching with type parameters
// https://stackoverflow.com/questions/64222662/how-to-test-try-result-in-orelsetry-function-call

//Type parameters can have bounds
type Error<Kind <: String> = {success:false, error: {kind: Kind}}
---
try(() -> if(random() > 0.5) fail("Fail") else 1/0)
  match {
      case ue is Error<"UserException"> ->
          "User Exception"
      case ue is Error<"DivisionByZeroException"> ->
        "Division error"
      else  ->
          $
  }

