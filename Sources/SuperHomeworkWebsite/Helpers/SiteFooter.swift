import Foundation
import Plot

extension Node where Context: HTML.BodyContext {
    static func siteFooter() -> Self {
        .div(
            .p("SuperHomework", .style(.logo)),
            .p(
                "is a trademark of Wilson Gramer.", .br(),
                "Copyright &copy; \(Calendar.current.component(.year, from: Date()))",
                .style(.copyright)
            ),
            .p(
                .a("Home", .href("/"), .style(.link)),
                .a("FAQ", .href("/faq"), .style(.link)),
                .a("Register school", .href("/registerschool"), .style(.link)),
                .a("Contact the developer", .href("/contact"), .style(.link)),
                .a("Fine print", .href("/fineprint"), .style(.link)),
                .style(.pageLinksContainer)
            ),
            .p(
                .a("Twitter", .href("https://twitter.com/superhomework"), .style(.link)),
                .a("Instagram", .href("/TODO"), .style(.link)),
                .style(.socialLinksContainer)
            ),
            .style(.footer)
        )
    }
}

fileprivate extension Style {
    static let footer: Style = """
        margin: 83px 50px 50px 50px;
        padding: 40px;
        background-color: #efeff4;
        border-radius: 23px;
        """

    static let logo: Style = """
        font-family: 'Philosopher', serif;
        font-size: 30px;
        font-weight: bold;
        margin: 0;
        """

    static let copyright: Style = """
        margin: 8px 0 16px 0;
        font-size: 14px;
        font-weight: 400;
        opacity: 0.8;
        """

    static let link: Style = """
        display: block;
        text-decoration: none;
        color: #007aff;
        font-size: 14px;
        """

    static let pageLinksContainer: Style = """
        font-weight: bold;
        line-height: 150%;
        margin: 0;
        """

    static let socialLinksContainer: Style = """
        font-weight: 500;
        line-height: 150%;
        margin: 8px 0 0 0;
        """
}
