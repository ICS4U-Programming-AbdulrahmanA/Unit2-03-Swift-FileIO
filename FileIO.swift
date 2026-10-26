import Foundation

do {
    // Read all the text from the input file.
    let input = try String(contentsOfFile: "input.txt", encoding: .utf8)
    var sum = 0
    var output = ""

    // Go through the file one line at a time.
    for line in input.components(separatedBy: .newlines) {
        // Replace commas with spaces so the numbers are easy to separate.
        let lineWithSpaces = line.replacingOccurrences(of: ",", with: " ")

        // Check each value and add valid numbers to the sum.
        for value in lineWithSpaces.split(separator: " ") {
            if let number = Int(value) {
                sum += number
            } else {
                output += "Error: invalid input\n"
            }
        }
    }

    // Write the error messages and the final sum to the output file.
    output += "\(sum)\n"
    try output.write(toFile: "output.txt", atomically: true, encoding: .utf8)
} catch {
    // Show a message if either file cannot be read or written.
    print("Error reading or writing a file: \(error)")
}