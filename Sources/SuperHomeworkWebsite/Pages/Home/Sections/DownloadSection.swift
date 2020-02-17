import Foundation
import Plot

extension Node where Context: HTML.BodyContext {
    static func downloadSection() -> Self {
        .section(
            .id("download"),
            .sectionHeader("SuperHomework is available on the App Store for free."),
            
            .appStoreButton(style: .appStoreButton)
        )
    }
}

fileprivate extension Style {
    static let appStoreButton: Style = """
        display: block;
        height: 60px;
        margin: 0 auto 36px auto;
        """
}
