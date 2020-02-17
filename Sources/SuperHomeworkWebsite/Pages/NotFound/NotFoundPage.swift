import Foundation
import Plot

extension Page {
    static var notFound = Page(type: .notFound, title: "Page Not Found", link: "",
        .logoButton(),

        .h1("404", .style(.header)),
        .p("The page you're looking for doesn't exist.", .style(.description)),
        .roundedButton(title: "Go to homepage", link: "/")
    )
}

fileprivate extension Style {
    static let header: Style = """
        margin: 64px auto 0 auto;
        font-size: 100px;
        font-weight: 800;
        text-align: center;
        """

    static let description: Style = """
        margin: 32px auto 64px auto;
        font-size: 30px;
        font-weight: 600;
        text-align: center;
        opacity: 0.67;
        """
}
