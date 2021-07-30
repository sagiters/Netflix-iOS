//
//  StandardHomeMovie.swift
//  Netflix
//
//  Created by Lien-Tai Kuo on 2021/7/28.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeMovie: View {

    var movie: Movie

    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
    }
}
