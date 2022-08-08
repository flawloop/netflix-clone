//
//  Trailer.swift
//  netflix2
//
//  Created by yaaburnee on 18/07/22.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
    
}
