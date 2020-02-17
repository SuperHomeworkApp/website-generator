import Foundation
import Plot

extension Node where Context: HTML.BodyContext {
    static func roundedButton(title: String, link: String) -> Self {
        .div(
            .a(
                .href(link),
                .text(title),
                .style(.roundedButtonText)
            ),
            .style(.roundedButtonContainer)
        )
    }
}

fileprivate extension Style {
    static let roundedButtonContainer: Style = """
        display: flex;
        align-items: center;
        justify-content: center;
        background-color: #007aff;
        border-radius: 12px;
        width: 300px;
        height: 48px;
        margin: 16px auto 0 auto;
        """

    static let roundedButtonText: Style = """
        text-decoration: none;
        color: white;
        font-size: 17px;
        font-weight: 400;
        """
}
