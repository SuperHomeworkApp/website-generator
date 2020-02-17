import Foundation
import Plot

struct WhatIsFeature { let title, image, description: String }
let whatIsFeatures = [
    WhatIsFeature(
        title: "Notifications",
        image: "/assets/feature-notifications.jpg",
        description: "Know when your teachers post new assignments, and get reminders for upcoming due dates."
    ),
    WhatIsFeature(
        title: "Agenda",
        image: "/assets/feature-agenda.jpg",
        description: "All your homework in one place. Tap on an assignment to view its content or open the original link."
    ),
    WhatIsFeature(
        title: "Integrations",
        image: "/assets/feature-integrations.jpg",
        description: "Everything in SuperHomework is automatic and works with Google Classroom, blogs and more."
    ),
]

extension Node where Context: HTML.BodyContext {
    static func whatIsSection() -> Self {
        .section(
            .id("what-is"),
            .style("margin-top: -83px;"),
            .sectionHeader("What is SuperHomework?"),

            .div(
                .forEach(whatIsFeatures, { feature in
                    .div(
                        .img(
                            .src(feature.image),
                            .alt("\(feature.title) screenshot"),
                            .style(.whatIsFeatureImage)
                        ),
                        .h2(
                            .text(feature.title),
                            .style(.whatIsFeatureHeader)
                        ),
                        .p(
                            .text(feature.description),
                            .style(.whatIsFeatureDescription)
                        ),
                        .style(.whatIsFeatureContainer)
                    )
                }),
                .style(.whatIsFeaturesContainer)
            )
        )
    }
}

fileprivate extension Style {
    static let whatIsFeaturesContainer: Style = """
        display: flex;
        justify-content: center;
        margin: 0 auto;
        """

    static let whatIsFeatureContainer: Style = """
        margin: 0 17.35px;
        width: min-content;
        """

    static let whatIsFeatureImage: Style = """
        height: 300px;
        """

    static let whatIsFeatureHeader: Style = """
        margin: 18px 0 4px 0;
        font-size: 20px;
        font-weight: bold;
        """

    static let whatIsFeatureDescription: Style = """
        font-size: 14px;
        font-weight: 500;
        opacity: 0.67;
        margin: 0;
        """
}
