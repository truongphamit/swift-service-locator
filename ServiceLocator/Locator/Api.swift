//
//  Api.swift
//  ServiceLocator
//
//  Created by Truong Pham on 20/09/2022.
//

@inline(__always) func get<T>() -> T? {
    return ServiceLocator.shared.get()
}

func registerModues(_ modules: [Module]) {
    modules.forEach {registerModue($0)}
}

func registerModue(_ module: Module) {
    module.register(serviceLocator: ServiceLocator.shared)
}
