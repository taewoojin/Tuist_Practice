import ProjectDescription

public extension Project {
    static func makeModule(
        name: String,
        platform: Platform = .iOS,
        product: Product,
        organizationName: String = "kmong",
        options: Project.Options = .options(),
        packages: [Package] = [],
        settings: ProjectDescription.Settings? = nil,
        deploymentTarget: DeploymentTarget? = .iOS(targetVersion: "14.0", devices: [.iphone, .ipad]),
        schemes: [Scheme] = [],
        dependencies: [TargetDependency] = [],
        sources: SourceFilesList = ["Sources/**"],
        resources: ResourceFileElements? = nil,
        infoPlist: InfoPlist = .default
    ) -> Project {
        let targets = [
            Target(
                name: name,
                platform: platform,
                product: product,
                bundleId: "\(organizationName).\(name)",
                deploymentTarget: deploymentTarget,
                infoPlist: infoPlist,
                sources: sources,
                resources: resources,
                dependencies: dependencies
            ),
            Target(
                name: "\(name)Tests",
                platform: platform,
                product: .unitTests,
                bundleId: "\(organizationName).\(name)Tests",
                deploymentTarget: deploymentTarget,
                infoPlist: .default,
                sources: ["Tests/**"],
                dependencies: [.target(name: name)]
            )
        ]
        
        return Project(
            name: name,
            organizationName: organizationName,
            packages: packages,
            settings: settings,
            targets: targets,
            schemes: schemes
        )
    }
}

extension Scheme {    
    public static func makeScheme(
        name: String,
        environment: String,
        target: ConfigurationName,
        hasTestAction: Bool = false
    ) -> Scheme {
        var testAction: ProjectDescription.TestAction?
        testAction = .targets(
            ["\(name)Tests"],
            configuration: target,
            options: .options(coverage: true, codeCoverageTargets: ["\(name)"])
        )
        
        return Scheme(
            name: "\(name)-\(environment)",
            shared: true,
            buildAction: .buildAction(targets: ["\(name)"]),
            testAction: testAction,
            runAction: .runAction(configuration: target),
            archiveAction: .archiveAction(configuration: target),
            profileAction: .profileAction(configuration: target),
            analyzeAction: .analyzeAction(configuration: target)
        )
    }
}
