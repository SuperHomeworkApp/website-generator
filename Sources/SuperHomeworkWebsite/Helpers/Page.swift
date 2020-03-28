import Foundation
import Plot
import Files

struct Page {
    enum PageType { case normal, root, redirect(link: String), notFound }
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
        switch self.type {
        case .normal, .root, .notFound:
            return HTML(
                .head(
                    .title("\(self.title) — SuperHomework"),
                    .stylesheet("https://fonts.googleapis.com/css?family=Philosopher:700&display=swap"),
                    .style(Style.global.cssString),
                    .script("(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-TDHD4BQ');"),
                    .viewport(.accordingToDevice)
                ),
                .body(
                    .element(named: "noscript", nodes: [
                        .raw("<iframe src=\"https://www.googletagmanager.com/ns.html?id=GTM-TDHD4BQ\"height=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe>"),
                    ]),
                    .forEach(self.body, { $0 }),
                    .siteFooter(),
                    .style(.page)
                )
            )
        case .redirect(let link):
            return HTML(
                .head(
                    .title("\(self.title) — SuperHomework"),
                    .meta(.attribute(named: "http-equiv", value: "refresh"), .content("0; url=\(link)"))
                ),
                .body(
                    .text("Redirecting to "),
                    .a(.href(link), .text(link))
                )
            )
        }
    }

    func indexHTMLFile() throws -> File {
        var folder = buildFolderRoot
        switch self.type {
        case .normal, .redirect(_):
            folder = try folder.createSubfolderIfNeeded(withName: self.link)
        default:
            break
        }
        
        switch self.type {
        case .notFound:
            return try folder.createFile(named: "404.html")
        default:
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
