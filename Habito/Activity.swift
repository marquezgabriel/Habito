//
//  Activity.swift
//  Habito
//
//  Created by Gabriel Marquez on 2022-06-27.
//

import Foundation

struct Activity: Codable, Identifiable, Equatable {
    var id = UUID()
    var title: String
    var decription: String
    var completionCount = 0
    
    static let example = Activity(title: "Example activity", decription: "This is an example activity.")

}
