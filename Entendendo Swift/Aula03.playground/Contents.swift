// Aula 03 - Loopings

for i in 1...10 {
    print(i)
}

for _ in 1...5 {
    print("_")
}


var count = 0
while count <= 10 {
    print("While \(count)")
    count += 1
}

var index = 0
repeat {
    print("Repeat \(index)")
    index += 1
}while index <= 10

// break e continue
var c = 0
while c <= 10 {
    c += 1
    print(c)
    if c == 5 {
        print("break")
        break
    }
    print("Saiu do if")
}
print("Saiu do while")

var i = 0
while i <= 10 {
    i += 1
    print(i)
    if i == 5 {
        print("continue")
        continue
    }
    print("Saiu do if")
}
print("Saiu do while")


