import Foundation
import Plot

extension Page {
    static var home = Page(type: .root, title: "Home", link: "",
        .heroContainer(),
        .whatIsSection(),
        .integrationsSection(),
        .downloadSection(),
        .learnMoreSection()
    )
}
