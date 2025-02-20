import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")
let testAttribute: Template.Attribute = .required("test")

let projectPath = "."
let appPath = "Sources/"

var items: [Template.Item] = [
    //Project Template
    .file(path: projectPath + "/Project.swift", templatePath: "Project.stencil"),
    .file(path: appPath + "\(nameAttribute).swift", templatePath: "Main.stencil"),
    .string(
        path: projectPath + "/Test.swift",
        contents: "Test attribute value: \(testAttribute)"
    ),
]


let template = Template(
    description: "Custom template",
    attributes: [
        nameAttribute,
        testAttribute,
    ],
    items: items
)
