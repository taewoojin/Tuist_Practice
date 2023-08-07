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
        .SPM.CombineMoya,
        .SPM.Moya,
        .SPM.SnapKit,
    ]
)
