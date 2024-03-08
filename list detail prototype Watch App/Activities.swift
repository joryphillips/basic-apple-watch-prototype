//
//  PrototypeModelData.swift
//  prototype Watch App
//
//  Created by Jory Phillips on 3/5/24.
//

import Foundation

struct Activity: Identifiable, Hashable {
    var id: UUID
    var location: String
    var name: String
    var imagePath: String
}

@Observable
class Activities {
    var list = [Activity]()
    
    init() {
        list = getList()
    }

    func getPlaceholder(count: Int) -> [Activity] {
        var arr = [Activity]()
        for _ in 1...count {
            arr.append(Activity(
                id: UUID(),
                location: "Placeholder Location",
                name: "Placeholder Activty",
                imagePath: "placeholder_image"
            ))
        }
        return arr
    }
    
    func getList() -> [Activity] {
        let activities = [
            Activity(id: UUID(), location: "Venice Beach", name: "Rollerblade", imagePath: "venice"),
            Activity(id: UUID(), location: "Larchmont Village", name: "Eat Frozen Yogurt", imagePath: "larchmont"),
            Activity(id: UUID(), location: "Echo Park", name: "Live Music", imagePath: "echo")
        ]
        
        let prefixPlaceholders = getPlaceholder(count: 3)
        let suffixPlaceholders = getPlaceholder(count: 3)
        
        return prefixPlaceholders + activities + suffixPlaceholders
    }
}



