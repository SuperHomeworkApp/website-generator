import Plot
import Files

fileprivate let rootFolder = try! File(path: #file).parent!.parent!.parent!

let buildFolderRoot = try! rootFolder.createSubfolderIfNeeded(withName: "www")
try! buildFolderRoot.empty(includingHidden: false)

let assetsFolderRoot = try! rootFolder.subfolder(named: "Assets")
let markdownFolderRoot = try! rootFolder.subfolder(named: "Markdown")
let siteConfigurationFolderRoot = try! rootFolder.subfolder(named: "SiteConfiguration")

let pages: [Page] = [
    .home,
    .contact,
    .faq,
    .finePrint,
    .registerSchool,
    .notFound,
]

for page in pages {
    let htmlFile = try! page.indexHTMLFile()
    try! htmlFile.write(page.html().render(indentedBy: .spaces(4)))
}

try! assetsFolderRoot
    .copy(to: buildFolderRoot)
    .rename(to: "assets")

try! siteConfigurationFolderRoot.files.forEach { try $0.copy(to: buildFolderRoot) }

print("Website built to \(buildFolderRoot.path)")

// TODO: Max width = 815px
