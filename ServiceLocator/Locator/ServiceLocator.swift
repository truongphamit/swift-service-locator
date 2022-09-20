//
//  ServiceLocator.swift
//  ServiceLocator
//
//  Created by Truong Pham on 20/09/2022.
//

public class ServiceLocator {
    public static let shared = ServiceLocator()
    
    typealias ServiceCreator<T> = (ServiceLocator) -> T
    
    private lazy var services: [Identifier: Any] = [:]
    
    func factory<T>(_ serviceType: T.Type, name: String = "", factory: @escaping ServiceCreator<T>) {
        let identifier = Identifier(String(describing: T.self), name: name)
        services[identifier] = factory(self)
    }
    
    func single<T>(_ serviceType: T.Type, name: String = "", instance: T) {
        let identifier = Identifier(String(describing: T.self), name: name)
        services[identifier] = instance
    }
    
    func get<T>(name: String = "") -> T{
        let identifier = Identifier(String(describing: T.self), name: name)
        if let service = services[identifier] as? T {
            return service
        } else if let factory = services[identifier] as? ServiceCreator<T> {
            return factory(self)
        }
        fatalError("No instance found based on the class \(identifier.type) named \(identifier.name)")
    }
}
