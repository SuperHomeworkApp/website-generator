import Foundation
import Plot

extension Node where Context: HTML.BodyContext {
    static func sectionHeader(_ text: String) -> Self {
        .h1(.text(text), .style(.sectionHeader))
    }
}

fileprivate extension Style {
    static let sectionHeader: Style = """
        margin: 83px auto 36px auto;
        font-family: system-ui, sans-serif;
        font-weight: 800;
        text-align: center;
        max-width: 470px;
        """
}
