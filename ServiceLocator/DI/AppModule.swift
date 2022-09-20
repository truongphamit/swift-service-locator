//
//  AppModule.swift
//  ServiceLocator
//
//  Created by Truong Pham on 20/09/2022.
//

class AppModule: Module {
    func register(serviceLocator: ServiceLocator) {
        serviceLocator.single(SampleService.self, instance: SampleService())
    }
    
    
}
