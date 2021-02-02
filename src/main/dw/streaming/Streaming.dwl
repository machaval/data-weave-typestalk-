%dw 2.0
@StreamCapable()
input payload application/json
---
payload filter ((item, index) -> )
