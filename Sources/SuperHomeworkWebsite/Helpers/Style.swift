import Foundation
import Plot

struct Style {
    let cssString: String
}

extension Style: ExpressibleByStringLiteral {
    init(stringLiteral value: String) {
        self.cssString = value
    }
}

extension Node where Context: HTMLStylableContext {
    static func style(_ styles: Style...) -> Self {
        self.style(styles.map({ $0.cssString.filter { !$0.isNewline } }).joined())
    }
}

extension Attribute where Context: HTMLStylableContext {
    static func style(_ style: Style) -> Self {
        self.attribute(named: "style", value: style.cssString.filter { !$0.isNewline })
    }
}
