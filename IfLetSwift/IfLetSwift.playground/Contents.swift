import Foundation

let optionalString: String? = "IfLetSwift"

func transformValue(_ value: String) -> Int {
    return value.characters.count
}

do { // Use the return value
    let result = optionalString.ifLet {
        transformValue($0)
    }
    print(result ?? 0)
}

do { // Propose an alternative value
    // Using the elvis operator
    let resultElvis = optionalString.ifLet {
        transformValue($0)
    } ?? 0
    print(resultElvis)

    // Using the elseDo block
    let resultElse = optionalString.ifLet {
        transformValue($0)
    }.elseDo {
        transformValue("")
    }
    print(resultElse)
}

do { // Ignore the result value
    optionalString.ifLet {
        print($0)
    }.elseDo {
        print("No value")
    }
}

do { // Chain transformations
    optionalString.ifLet {
        transformValue($0)
    }.ifLet {
        "\($0)"
    }.ifLet {
        print($0)
    }.elseDo {
        print("No value")
    }
}
