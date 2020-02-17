import Plot
import Files

fileprivate let rootFolder = try! File(path: #file).parent!.parent!.parent!

let buildFolderRoot = try! rootFolder.createSubfolderIfNeeded(withName: "www")
try! buildFolderRoot.empty()

let assetsFolderRoot = try! rootFolder.subfolder(named: "Assets")
let markdownFolderRoot = try! rootFolder.subfolder(named: "Markdown")

let pages: [Page] = [
    .home,
    .faq,
    .finePrint,
    .notFound,
]

for page in pages {
    let htmlFile = try! page.indexHTMLFile()
    try! htmlFile.write(page.html().render(indentedBy: .spaces(4)))
}

try! assetsFolderRoot
    .copy(to: buildFolderRoot)
    .rename(to: "assets")

print("Website built to \(buildFolderRoot.path)")

// TODO: Max width = 815px
