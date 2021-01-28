

__________________________________________

# Index


### Variables
| Name | Description|
|------|------------|
| [myResponse: Response<{ name: String }>](#myresponse-index ) | |



### Types
| Name | Description|
|------|------------|
|[Error](#error-index ) | |
|[Response](#response-index ) | |







__________________________________________





# Variables

## **myResponse: Response<{ name: String }>** [↑↑](#index )





__________________________________________

# Types

### **Error** [↑↑](#index )


#### Definition

```dataweave
{ success: false, error: { kind: Kind } }
```


### **Response** [↑↑](#index )


#### Definition

```dataweave
{ failure: Boolean, value?: T, message?: String }
```




