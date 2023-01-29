import XCTest
@testable import Calculator

final class CalculatorTests: XCTestCase {
    
    var calculator:Calculator = Calculator()
    
    func testEvaluateAddition() {
        let result = calculator.evaluate(firstNumber: 2, secondNumber: 3, operation: .addition)
         XCTAssertEqual(result, 5, accuracy: 0.0001, "The result should be 5")
     }

     func testEvaluateSubtraction() {
         let result = calculator.evaluate(firstNumber: 5, secondNumber: 3, operation: .subtraction)
         XCTAssertEqual(result, 2, accuracy: 0.0001, "The result should be 2")
     }

     func testEvaluateMultiplication() {
         let result = calculator.evaluate(firstNumber: 2, secondNumber: 3, operation: .multiplication)
         XCTAssertEqual(result, 6, accuracy: 0.0001, "The result should be 6")
     }

     func testEvaluateDivision() {
         let result = calculator.evaluate(firstNumber: 6, secondNumber: 3, operation: .division)
         XCTAssertEqual(result, 2, accuracy: 0.0001, "The result should be 2")
     }

     func testEvaluateNone() {
         let result = calculator.evaluate(firstNumber: 2, secondNumber: 3, operation: .none)
         XCTAssertEqual(result, 0.0, accuracy: 0.0001, "The result should be 0.0")
     }

}
