import Foundation
import Plot

extension Node where Context: HTML.BodyContext {
    static func pageHeader(title: String) -> Self {
        .h1(.text(title), .style(.pageHeader))
    }
}

fileprivate extension Style {
    static let pageHeader: Style = """
        margin: 32px auto 0 auto;
        font-size: 36px;
        font-weight: 800;
        text-align: center;
        """
}
