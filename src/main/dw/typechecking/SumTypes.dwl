%dw 2.0

//COMPOSING TYPES

//Union Types
// Is a way to specify a set of possible types
// String | Number
//It will accept any value that is being accepted by any of its members

type Error = String

type Response = String | {value: Array<String>}

//Can be used to specify enumeration of possible values
type HttpMethods = "POST" | "GET" | "PUT" | "HEAD" | "PATCH" | "UPDATE"

//Intersection types
// Is the way to compose types
//It will accept types that are being accepted by the all its members
type WithName = {name: String}

type WithPhone = {phone: String, cellPhone: String}

type User = {lastName: String} & WithName & WithPhone


---
{}