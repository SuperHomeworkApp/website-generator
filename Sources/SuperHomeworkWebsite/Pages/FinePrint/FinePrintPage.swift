import Foundation
import Plot

extension Page {
    static var finePrint = Page(title: "Fine Print", link: "fineprint",
        .logoButton(),
        .pageHeader(title: "Fine Print"),

        .div(
            .markdown(file: "FinePrint.md"),
            .style("margin: 0 50px;")
        )
    )
}
