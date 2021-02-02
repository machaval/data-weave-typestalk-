%dw 2.0
//TYPES THAT ONLY ACCEPTS ONE Possible Value similar to the null
var HTTP_OK = 200
var HTTP_NOT_FOUND = 404
var HTTP_INTERNAL_ERROR = true

fun httpCodes2(code: 200| 404| 500) =
  code match {
  		case is 200 -> "OK"
  		case is 404 -> "Not Found"
  		case is 500 -> "Internal Error"
  }

---
httpCodes2(200)