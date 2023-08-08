//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 진태우 on 2023/08/07.
//

import ProjectDescription
import ProjectDescriptionHelpers

let name: String = "ThirdPartyLibrary"
let project = Project.makeModule(
    name: name,
    product: .framework,
    options: .options(automaticSchemesOptions: .disabled),
    schemes: [
        Scheme(
            name: name,
            shared: true,
            buildAction: .buildAction(targets: ["ThirdPartyLibrary"]),
            testAction: .targets(
                ["\(name)Tests"],
                configuration: .debug,
                options: .options(coverage: true, codeCoverageTargets: ["ThirdPartyLibrary"])
            ),
            runAction: .runAction(configuration: .debug),
            archiveAction: .archiveAction(configuration: .debug),
            profileAction: .profileAction(configuration: .debug),
            analyzeAction: .analyzeAction(configuration: .debug)
        )
    ],
    dependencies: [
        .SPM.CombineMoya,
        .SPM.Moya,
        .SPM.SnapKit
    ]
)
