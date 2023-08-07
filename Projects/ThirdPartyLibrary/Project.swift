//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 진태우 on 2023/08/07.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "ThirdPartyLibrary",
    product: .framework,
    dependencies: [
        .external(name: "SnapKit"),
        .external(name: "Moya"),
    ]
)
