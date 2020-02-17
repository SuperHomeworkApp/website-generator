import Foundation
import Plot

extension Node where Context: HTML.BodyContext {
    static func heroContainer() -> Self {
        .div(
            .logoButton(),
            .div(
                .p(
                    "SuperHomework automatically organizes your homework, right from your phone.",
                    .style(.heroText)
                ),
                .appStoreButton(style: .appStoreBadge),
                .style(.heroTextContainer)
            ),
            .style(.heroContainer)
        )
    }
}

fileprivate extension Style {
    static let heroText: Style = """
        font-family: system-ui, sans-serif;
        font-size: 36px;
        font-weight: 800;
        text-align: center;
        max-width: 485px;
        margin: 32px auto 0 auto;
        """

    static let appStoreBadge: Style = """
        margin: 39px auto 89px auto;
        height: 40px;
        """

    static let heroTextContainer: Style = """
        margin: 0 auto;
        text-align: center;
        """

    static let heroContainer: Style = """
        width: 100%;
        background-image: url('/assets/hero-background.jpg');
        background-size: contain;
        background-repeat-y: no-repeat;
        """
}
