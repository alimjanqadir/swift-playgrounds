func a() -> ((String) -> Void ) {
    let b = "in a"
    func c(b: String) {
        print(b)
    }
    return c
}

let c = a()
func d(c : (String)-> Void) {
    let b = "in d"
    c("in d param")
}
d(c: c)

