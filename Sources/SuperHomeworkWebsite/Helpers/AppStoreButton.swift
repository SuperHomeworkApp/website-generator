import Foundation
import Plot

extension Node where Context: HTML.BodyContext {
    static func appStoreButton(style: Style) -> Self {
        .a(.href("https://itunes.apple.com/app/apple-store/id1338242032?pt=118954731&ct=website&mt=8"),
            .img(
                .src("/assets/app-store.svg"),
                .alt("Download on the App Store"),
                .style(style)
            )
        )
    }
}
