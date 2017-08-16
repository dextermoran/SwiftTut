
/*
 
 Multi line comment
 
*/

func nameOfFunction(x : Int) -> Int {
    print("Functions")
    print(x)
    return x * 2
}

for i in 1...10 {
    nameOfFunction(x : i)
}

var Y = nameOfFunction(x: 7)
print(Y)

if Y < 17 {
    print("less than 17")
} else {
    print("more than 17")
}