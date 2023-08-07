//
//  Dependency+SPM.swift
//  ProjectDescriptionHelpers
//
//  Created by 진태우 on 2023/08/07.
//

import ProjectDescription

public extension TargetDependency {
    enum SPM {}
}

public extension TargetDependency.SPM {
    static let CombineMoya = TargetDependency.external(name: "CombineMoya")
    static let Moya = TargetDependency.external(name: "Moya")
    static let SnapKit = TargetDependency.external(name: "SnapKit")
}

