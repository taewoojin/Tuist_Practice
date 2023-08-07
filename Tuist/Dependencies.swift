//
//  Dependencies.swift
//  ProjectDescriptionHelpers
//
//  Created by 진태우 on 2023/08/07.
//

import ProjectDescription

let dependencies = Dependencies(
    carthage: [],
    swiftPackageManager: [
        .remote(
            url: "https://github.com/SnapKit/SnapKit.git",
            requirement: .upToNextMajor(from: "5.0.0")
        ),
        .remote(
            url: "https://github.com/Moya/Moya.git",
            requirement: .exact("15.0.0")
        ),
    ],
    platforms: [.iOS]
)
