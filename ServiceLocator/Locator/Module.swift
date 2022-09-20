//
//  Module.swift
//  ServiceLocator
//
//  Created by Truong Pham on 20/09/2022.
//

protocol Module {
    func register(serviceLocator: ServiceLocator)
}
