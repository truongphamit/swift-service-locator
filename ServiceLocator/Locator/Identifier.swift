//
//  Identifier.swift
//  ServiceLocator
//
//  Created by Truong Pham on 20/09/2022.
//

struct Identifier: Hashable {
    let type: String
    let name: String
    
    init(_ type: String, name: String = "") {
        self.type = type
        self.name = name
    }
    
    static func == (lhs: Identifier, rhs: Identifier) -> Bool {
        return lhs.type == rhs.type && lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(type)
        hasher.combine(name)
    }
    
}
