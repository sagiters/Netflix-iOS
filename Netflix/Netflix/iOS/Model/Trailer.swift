//
//  Trailer.swift
//  Netflix
//
//  Created by Lien-Tai Kuo on 2021/7/29.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
    
}
