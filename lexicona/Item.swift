//
//  Item.swift
//  lexicona
//
//  Created by Noah Ortega on 9/23/24.
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
