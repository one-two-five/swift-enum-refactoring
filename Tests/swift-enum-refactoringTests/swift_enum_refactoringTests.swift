import XCTest
@testable import swift_enum_refactoring

final class swift_enum_refactoringTests: XCTestCase {
    func testOptionListWithColumn() {
        
        let expected = (
            """
            <div
              className={classNames(
                styles['c-optionList__items'],
                styles[`c-optionList__items--column`]
              )}
            >
            </div>
            """
        )
        
        let optionList = swift_enum_refactoring.OptionList(flexDirection: .column)
        let result = optionList.makeHTML()
        
        XCTAssertEqual(result, expected)
    }
    
    func testOptionListWithRow() {
        
        let expected = (
            """
            <div
              className={classNames(
                styles['c-optionList__items'],
                styles[`c-optionList__items--row`]
              )}
            >
            </div>
            """
        )
        
        let optionList = swift_enum_refactoring.OptionList(flexDirection: .row)
        let result = optionList.makeHTML()
        
        XCTAssertEqual(result, expected)
    }
}
