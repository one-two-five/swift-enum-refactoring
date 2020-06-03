

// MARK: - Javascript example:

// Bool used to indicate the layout direction (this component would normally have children to lay out)
// I've used a bool but it's not clear what other options/states can be possible (e.g. column)
// If more bools are added (e.g. isColumn) the state of the component will become difficult to manage
// Ternary operator required (line 23) to select correct case

/*
 
const propTypes = {
  /** Specifies if the children should be laid out in a row */
  isRow: PropTypes.bool,
};

const defaultProps = {
  isRow: false,
};

const OptionList = props => {
  const { children, isRow, ...rest } = props;
  const flexDirection = isRow ? "row" : "column"
  return (
    <div
      className={classNames(
        styles['c-optionList__items'],
        styles[`c-optionList__items--${flexDirection}`]
      )}
    >
    </div>
  );
};
 
*/

// MARK: - Enum/Struct example

// Options now mutually exclusive using enum, and easy to test all cases, hopefully quite readable syntax (line 43)
// I've included items as well in this example - these could equally be passed via an associated enum value but went for a Style struct instead

struct swift_enum_refactoring {
    
    // MARK: - Example (JSX is used in React)
    let optionListJSX = OptionList(with: Style(direction: .column, items: 8)).makeJSX()
}

extension swift_enum_refactoring {
    
    // MARK: - FlexInfo
    
    struct Style {
        let direction: FlexDirection
        let items: Int
    }
    
    // MARK: - FlexDirection
    // You could also use associated values in this enum to pass the no of rows/columns
    
    enum FlexDirection {
        case row
        case column
    }
    
    // MARK: - OptionList
    
    struct OptionList {
        let flexInfo: Style
        
        init(with flexInfo: Style) {
            self.flexInfo = flexInfo
        }
        
        func makeJSX() -> String {
            return formatJSX(with: flexInfo.direction, items: flexInfo.items)
        }
            
        private func formatJSX(with flexDirection: FlexDirection, items: Int) -> String {
            """
            <div
                className={classNames(
                    styles['c-optionList__items--\(items)'],
                    styles[`c-optionList__items--\(flexDirection)`]
                )}
            >
            </div>
            """
        }
    }
}
