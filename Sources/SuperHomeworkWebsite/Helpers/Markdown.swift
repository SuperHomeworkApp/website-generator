import Foundation
import Plot
import Ink
import Files

extension Node where Context: HTML.BodyContext {
    static func markdown(file: String) -> Self {
        let markdownText = try! markdownFolderRoot.file(named: file).readAsString()
        return .div(.class("markdown"), .raw(MarkdownParser().html(from: markdownText)))
    }
}
