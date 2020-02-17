import Foundation
import Plot

extension Page {
    static var faq = Page(title: "FAQ", link: "faq",
        .logoButton(),
        .pageHeader(title: "FAQ"),

        .div(
            .markdown(file: "FAQ.md"),
            .style("margin: 0 50px;")
        )
    )
}
