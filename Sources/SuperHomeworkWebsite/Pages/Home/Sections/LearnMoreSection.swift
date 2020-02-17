import Foundation
import Plot

extension Node where Context: HTML.BodyContext {
    static func learnMoreSection() -> Self {
        .section(
            .id("learn-more"),
            .sectionHeader("Learn more about SuperHomework."),

            .div(
                .roundedButton(
                    title: "Read the FAQ",
                    link: "/faq"
                ),
                .roundedButton(
                    title: "Register your school’s blogs",
                    link: "/registerschool"
                ),
                .roundedButton(
                    title: "Contact the developer",
                    link: "/contact"
                )
            )
        )
    }
}
