

import NeedleFoundation
import UIKit

// MARK: - Registration

public func registerProviderFactories() {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: "^->JokeComponent") { component in
        EmptyDependencyProvider(component: component)
    }
}

// MARK: - Providers
