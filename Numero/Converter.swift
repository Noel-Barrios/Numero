/// Copyright (c) 2018 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.



//// start with a failing test and then fix your code to pass.  THe reason is to avoid a false-positive
//class Converter {
//    func convert (_ number: Int) -> String {
//        return ""
//    }

//// Fix your first failure.  Make the test pass now
//class Converter {
//    func convert (_ number: Int) -> String {
//        return "I"
//    }
    
class Converter {
//    // For Test 1 & 2
//    func convert (_ number: Int) -> String {
//        // creates a new string representing the given string repeated the specified number of times
//        // in other words, this code returns "I", repeated a number of times based on the input
//        return String(repeating: "I", count: number)
//    }


//    // For Testing 5
//    func convert (_ number: Int) -> String {
//        if number == 5 {
//            return "V"
//        } else {
//            return String(repeating: "I", count: number)
//        }
//    }
    
    func convert(_ number: Int) -> String {
        var result = ""  // initialize an empty string
        var localNumber = number // create a local copy of the input to work with
        if localNumber >= 10 { // check if input is 10 or greater
            result += "X" // append the roman numeral representation of 10 to the output result
            localNumber = localNumber - 10 // decrement 10 from the local copy of the input before passing execution to the next phases that handle 5 and 1's
        }
        if localNumber >= 5 { // check if the input is greater than or equal to 5
            result += "V" // append the roman numeral representation for 5 to the output
            localNumber = localNumber - 5 // decrement the local input by 5
        }
        result += String(repeating: "I", count: localNumber) // append the output w/ a repeating count of the roman numeral conversion for 1.
        return result 
    }
}
