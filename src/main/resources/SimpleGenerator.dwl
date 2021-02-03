%dw 2.0
output application/json
import * from NamesDB
var AMOUNT_OF_PEOPLE = 7594000000
var NAMES = names
---
((1 to AMOUNT_OF_PEOPLE) as Array<Number>)
              map ((item) -> {
                    name: names[floor(random() * 100)],
                    age: floor(random() * 100),
                    id: uuid(),
                    active: random() > 0.3
                })
