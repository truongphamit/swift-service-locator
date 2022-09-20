//
//  ViewModelModule.swift
//  ServiceLocator
//
//  Created by Truong Pham on 20/09/2022.
//

class ViewModelModule: Module {
    func register(serviceLocator: ServiceLocator) {
        serviceLocator.factory(SampleViewModel.self) { locator in
            return SampleViewModel(service: locator.get())
        }
    }
    
    
}
