//
//  PreviewVM.swift
//  Netflix
//
//  Created by Lien-Tai Kuo on 2021/7/31.
//

import Foundation

class PreviewVM: ObservableObject {

    var movie: Movie

    init(movie: Movie) {
        self.movie = movie
    }
}
