%dw 2.0

//COMPOSING TYPES

//Union Types
// Is a way to specify a set of possible types
// String | Number

type Error = String

type Response = String | {value: Array<String>}

//Can be used to specify enumeration of possible values
type HttpMethods = "POST" | "GET" | "PUT" | "HEAD" | "PATCH" | "UPDATE"

//Intersection types
// Is the way to compose types
type WithName = {name: String}

type WithPhone = {phone: String, cellPhone: String}

type User = {lastName: String} & WithName & WithPhone


---
{}