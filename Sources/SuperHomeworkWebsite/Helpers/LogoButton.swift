import Foundation
import Plot

extension Node where Context: HTML.BodyContext {
    static func logoButton() -> Self {
        .div(
            .img(
                .src("/assets/app-icon.jpg"),
                .alt("SuperHomework app icon"),
                .style(.appIcon)
            ),
            .a(.href("/"), "SuperHomework", .style(.logo)),
            .style(.heroLogoContainer)
        )
    }
}

fileprivate extension Style {
    static let heroLogoContainer: Style = """
        padding: 21px 0;
        display: flex;
        align-items: center;
        justify-content: center;
        """

    static let logo: Style = """
        margin-left: 11px;
        font-family: 'Philosopher', serif;
        font-size: 18px;
        font-weight: bold;
        text-decoration: none;
        color: black;
        """

    static let appIcon: Style = """
        height: 26px;
        """
}
