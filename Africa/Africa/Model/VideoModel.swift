//
//  VideoModel.swift
//  Africa
//
//  Created by Hyun Shik Chung on 6/27/22.
//

import Foundation

struct Video: Codable, Identifiable{
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String{
        "video-\(id)"
    }
}
