import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(swift_enum_refactoringTests.allTests),
    ]
}
#endif
