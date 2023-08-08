//
//  Dependency+Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 진태우 on 2023/08/07.
//

import ProjectDescription

public extension TargetDependency {
    enum Project {}
}

public extension TargetDependency.Project {
    static let feature = TargetDependency.project(
        target: "Feature",
        path: .relativeToRoot("Projects/Feature")
    )
    static let thirdPartyLibrary = TargetDependency.project(
        target: "ThirdPartyLibrary",
        path: .relativeToRoot("Projects/ThirdPartyLibrary")
    )
    static let designSystem = TargetDependency.project(
        target: "DesignSystem",
        path: .relativeToRoot("Projects/DesignSystem")
    )
}
