//
//  Project.swift
//  FeatureManifests
//
//  Created by 진태우 on 2023/08/08.
//

import ProjectDescription
import ProjectDescriptionHelpers

let name = "Network"
let project = Project.makeModule(
    name: name,
    product: .staticFramework
)

