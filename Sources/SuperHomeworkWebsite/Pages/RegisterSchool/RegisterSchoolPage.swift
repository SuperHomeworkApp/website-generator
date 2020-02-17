import Foundation
import Plot

extension Page {
    static var registerSchool = Page(
        type: .redirect(link: "mailto:superhomeworkapp@gmail.com?subject=Register my school&body=Tell me a bit about your school and I'll help you get it set up."),
        title: "Register school",
        link: "registerschool"
    )
}
