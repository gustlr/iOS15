//
//  AnimalModel.swift
//  Africa
//
//  Created by Hyun Shik Chung on 4/25/22.
//

import Foundation

struct Animal : Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
