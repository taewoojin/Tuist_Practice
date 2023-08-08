//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 진태우 on 2023/08/07.
//

import ProjectDescription
import ProjectDescriptionHelpers

let name = "App"
let project = Project.makeModule(
    name: name,
    product: .app,
    options: .options(automaticSchemesOptions: .disabled),
    settings: .settings(
        configurations: [
            .debug(name: "Dev", settings: [:], xcconfig: "Config/Dev.xcconfig"),
            .debug(name: "Alpha", settings: [:], xcconfig: "Config/Alpha.xcconfig"),
            .debug(name: "Prod", settings: [:], xcconfig: "Config/Prod.xcconfig")
        ]
    ),
    schemes: [
        .makeScheme(
            name: name,
            environment: "Dev",
            target: .configuration("Dev"),
            hasTestAction: true
        ),
        .makeScheme(
            name: name,
            environment: "Alpha",
            target: .configuration("Alpha")
        ),
        .makeScheme(
            name: name,
            environment: "Prod",
            target: .configuration("Prod")
        ),
    ],
    dependencies: [
        .Project.feature
    ],
    resources: ["Resources/**"]
)
