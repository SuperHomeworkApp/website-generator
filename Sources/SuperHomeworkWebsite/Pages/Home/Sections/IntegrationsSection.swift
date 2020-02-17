import Foundation
import Plot

extension Node where Context: HTML.BodyContext {
    static func integrationsSection() -> Self {
        .section(
            .style(.integrationsSection),
            
            .id("integrations"),
            .sectionHeader("Everything is automatic."),

            .img(
                .src("/assets/integrations-diagram-desktop.jpg"),
                .alt("Integrations diagram"),
                .style(.integrationsDiagram)
            ),

            .div(
                .p(
                    "SuperHomework connects to your favorite integrations and automatically listens for new assignments. When your teacher posts tonight’s homework, you’ll get a notification and the assignment will appear instantly in the app.",
                    .style(.integrationsDiagramText)
                ),
                .p(
                    "More integrations are on the way, and you can always add your own assignments manually, with up to two reminder notifications at the dates you choose. SuperHomework can also send you a daily summary of everything in your Agenda.",
                    .style(.integrationsDiagramText)
                ),
                .style(.integrationsDiagramTextContainer)
            )
        )
    }
}

fileprivate extension Style {
    static let integrationsSection: Style = """
        margin-bottom: 128px;
        """
    
    static let integrationsDiagram: Style = """
        display: block;
        margin: 0 70px;
        max-width: 660px;
        """

    static let integrationsDiagramText: Style = """
        font-size: 14px;
        font-weight: 500;
        opacity: 0.67;
        width: 200px;
        margin-top: 135px;
        """

    static let integrationsDiagramTextContainer: Style = """
        display: flex;
        justify-content: space-between;
        margin: -330px 70px 0 70px;
        """
}
