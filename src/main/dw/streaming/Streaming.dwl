%dw 2.0
/**
* - No random access
* - Not being referenced more than once
* - Not being referenced in a different scope from the one that was declared
*/
@StreamCapable()
input payload application/json
---
//payload filter ((item, index) -> item.active) ++
//payload filter ((item, index) -> item.age < 18)
payload
