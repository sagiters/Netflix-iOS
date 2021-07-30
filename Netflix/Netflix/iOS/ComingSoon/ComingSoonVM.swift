//
//  ComingSoonVM.swift
//  Netflix
//
//  Created by Lien-Tai Kuo on 2021/7/31.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []

    init() {
        self.movies = generateMovies(20)
    }
}
