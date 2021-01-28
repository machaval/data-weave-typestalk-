

__________________________________________

# Index




### Types
| Name | Description|
|------|------------|
|[Error](#error-index ) | |
|[HttpMethods](#httpmethods-index ) | |
|[Response](#response-index ) | |
|[User](#user-index ) | |
|[WithName](#withname-index ) | |
|[WithPhone](#withphone-index ) | |







__________________________________________





__________________________________________

# Types

### **Error** [↑↑](#index )


#### Definition

```dataweave
String
```


### **HttpMethods** [↑↑](#index )


#### Definition

```dataweave
"POST" | "GET" | "PUT" | "HEAD" | "PATCH" | "UPDATE"
```


### **Response** [↑↑](#index )


#### Definition

```dataweave
String | { value: Array<String> }
```


### **User** [↑↑](#index )


#### Definition

```dataweave
{ lastName: String } & WithName & WithPhone
```


### **WithName** [↑↑](#index )


#### Definition

```dataweave
{ name: String }
```


### **WithPhone** [↑↑](#index )


#### Definition

```dataweave
{ phone: String, cellPhone: String }
```




