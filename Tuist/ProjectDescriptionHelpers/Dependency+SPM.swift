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
    static let combineMoya = TargetDependency.external(name: "CombineMoya")
    static let moya = TargetDependency.external(name: "Moya")
    static let snapKit = TargetDependency.external(name: "SnapKit")
}

