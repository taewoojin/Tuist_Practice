//
//  Dependency+Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 진태우 on 2023/08/07.
//

import ProjectDescription

public extension TargetDependency {
    enum Projcet {}
}

public extension TargetDependency.Projcet {
    static let Feature = TargetDependency.project(target: "Feature", path: .relativeToRoot("Projects/Feature"))
    static let ThirdPartyLibrary = TargetDependency.project(target: "ThirdPartyLibrary", path: .relativeToRoot("Projects/ThirdPartyLibrary"))
}
