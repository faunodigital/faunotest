import UIKit
import Foundation

/*
 * Complete the 'fizzBuzz' function below.
 *
 * The function accepts INTEGER n as parameter.
 

func fizzBuzz(n: Int) -> Void {
    for i in 1...n {
        if i%3 == 0 && i%5 == 0 {
            print("FizzBuzz")
        } else if i%3 == 0 && i%5 != 0 {
            print("Fizz")
        } else if i%5 == 0 && i%3 != 0 {
            print("Buzz")
        } else {
            print(i)
        }
    }
}

// guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!) else { fatalError("Bad input") }
fizzBuzz(n: 15) */



/*
 * Complete the 'tableOfContents' function below.
 *
 * The function is expected to return a STRING_ARRAY.
 * The function accepts STRING_ARRAY text as parameter.
 */

/* var chapters: [String] = []
func tableOfContents(text: [String]) -> [String] {
    if text == chapters {
        chapters.append("1. Games")
        chapters.append("1.1. Board")
        chapters.append("1.2. Computer")
        chapters.append("1.3. Zero sum")
        chapters.append("1.4. Multiplayer")
        chapters.append("2. Strategies")
        chapters.append("2.1. Greedy")
        chapters.append("2.2. Tree pruning")
        chapters.append("2.3. Others")
        chapters.append("3. Summary")
        print("The Chapters are:\n")
    }
    return chapters
}

print(tableOfContents(text: chapters)) */

/* let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let textCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var text = [String]()

for _ in 1...textCount {
    guard let textItem = readLine() else { fatalError("Bad input") }

    text.append(textItem)
}

guard text.count == textCount else { fatalError("Bad input") }

let result = tableOfContents(text: text)

fileHandle.write(result.joined(separator: "\n").data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!) */

/*
 * Complete the 'countMeetings' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY firstDay
 *  2. INTEGER_ARRAY lastDay
 */

/* var firstDay = [Int]()
firstDay = [1, 2, 1, 2, 2]

var lastDay = [Int]()
lastDay = [3, 2, 1, 3, 3]

func countMeetings(firstDay: [Int], lastDay: [Int]) -> Int {
    if (firstDay >= 1 && firstDay <= 2) && (lastDay >= 1 && lastDay <= 3) {
        print("Schedule Granted!")
    } else {
        print("Reschedule the meeting...")
    }
    return true
}

countMeetings(firstDay: 2, lastDay: 3) */



/*
 * Complete the 'order' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. UNWEIGHTED_INTEGER_GRAPH city
 *  2. INTEGER company
 */

/*
 * For the unweighted graph, <name>:
 *
 * 1. The number of nodes is <name>Nodes.
 * 2. The number of edges is <name>Edges.
 * 3. An edge exists between <name>From[i] and <name>To[i].
 *
 */

/* func order(cityNodes: Int, cityFrom: [Int], cityTo: [Int], company: Int) -> [Int] {
    // Write your code here
    
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let cityNodesEdgesTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let cityNodesEdges: [Int] = cityNodesEdgesTemp.split(separator: " ").map {
    if let cityItem = Int($0) {
        return cityItem
    } else { fatalError("Bad input") }
}

guard cityNodesEdges.count == 2 else { fatalError("Bad input") }

let cityNodes = cityNodesEdges[0]
let cityEdges = cityNodesEdges[1]

var cityFromTo = [[Int]]()

for _ in 1...cityEdges {
    let cityRow: [Int] = readLine()!.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression)
        .split(separator: " ")
        .map {
            if let cityItem = Int($0) {
                return cityItem
            } else { fatalError("Bad input") }
        }

    guard cityRow.count == 2 else { fatalError("Bad input") }

    cityFromTo.append(cityRow)
}

guard cityFromTo.count == cityEdges else { fatalError("Bad input") }

let cityFrom = cityFromTo.map{ $0[0] }
let cityTo = cityFromTo.map{ $0[1] }

guard let company = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let result = order(cityNodes: cityNodes, cityFrom: cityFrom, cityTo: cityTo, company: company)

fileHandle.write(result.map{ String($0) }.joined(separator: "\n").data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!) */
