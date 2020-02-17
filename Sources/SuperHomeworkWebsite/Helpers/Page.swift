import Foundation
import Plot
import Files

struct Page {
    enum PageType { case normal, root, notFound }
    let type: PageType
    let title: String
    let link: String
    let body: [Node<HTML.BodyContext>]

    init(type: PageType = .normal, title: String, link: String, _ body: Node<HTML.BodyContext>...) {
        self.type = type
        self.title = title
        self.link = link
        self.body = body
    }
}

extension Page {
    func html() -> HTML {
        HTML(
            .head(
                .title("\(self.title) — SuperHomework"),
                .stylesheet("https://fonts.googleapis.com/css?family=Philosopher:700&display=swap"),
                .style(Style.global.cssString),
                .viewport(.accordingToDevice)
            ),
            .body(
                .forEach(self.body, { $0 }),
                .siteFooter(),
                .style(.page)
            )
        )
    }

    func indexHTMLFile() throws -> File {
        var folder = buildFolderRoot
        if self.type == .normal { folder = try folder.createSubfolderIfNeeded(withName: self.link) }

        if self.type == .notFound {
            return try folder.createFile(named: "404.html")
        } else {
            return try folder.createFile(named: "index.html")
        }
    }
}

extension Style {
    static let page: Style = """
        margin: 0 auto;
        padding: 0;
        max-width: 800px;
        font-family: system-ui, sans-serif;
        """
}
