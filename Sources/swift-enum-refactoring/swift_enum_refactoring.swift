
// MARK: - Javascript example: bool used to indicate the layout direction (this component would normally have children to lay out)

// I've used a bool but it's not clear what other options/states can be possible (e.g. column)
// If more bools are added (e.g. isColumn) the state of the component will become difficult to manage

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

// MARK: - Enum example - options now mutually exclusive, and easy to test all cases

struct swift_enum_refactoring {
    
    let optionListHTML = OptionList(flexDirection: .column).makeHTML() // example
    
    struct OptionList {
        let flexDirection: FlexDirection
        
        enum FlexDirection {
            case row, column
        }
        
        func makeHTML() -> String {
            return (
                """
                <div
                  className={classNames(
                    styles['c-optionList__items'],
                    styles[`c-optionList__items--\(flexDirection)`]
                  )}
                >
                </div>
                """
            )
        }
    }
    
}
