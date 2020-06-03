import XCTest
@testable import swift_enum_refactoring

final class swift_enum_refactoringTests: XCTestCase {
    func testOptionListWithColumn() {
        
        let expected = (
            """
            <div
                className={classNames(
                    styles['c-optionList__items--6'],
                    styles[`c-optionList__items--column`]
                )}
            >
            </div>
            """
        )
        
        let style = swift_enum_refactoring.Style(direction: .column, items: 6)
        let optionList = swift_enum_refactoring.OptionList(with: style)
        let result = optionList.makeJSX()
        
        XCTAssertEqual(result, expected)
    }
    
    func testOptionListWithRow() {
        
        let expected = (
            """
            <div
                className={classNames(
                    styles['c-optionList__items--10'],
                    styles[`c-optionList__items--row`]
                )}
            >
            </div>
            """
        )
        
         let style = swift_enum_refactoring.Style(direction: .row, items: 10)
               let optionList = swift_enum_refactoring.OptionList(with: style)
               let result = optionList.makeJSX()
        
        XCTAssertEqual(result, expected)
    }
}
