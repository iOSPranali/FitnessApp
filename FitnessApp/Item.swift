//
//  Item.swift
//  FitnessApp
//
//  Created by pranali sanjay shelke on 18/11/26.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
