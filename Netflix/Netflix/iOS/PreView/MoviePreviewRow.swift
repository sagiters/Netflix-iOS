//
//  MoviePreviewRow.swift
//  Netflix
//
//  Created by Lien-Tai Kuo on 2021/7/31.
//

import SwiftUI

struct MoviePreviewRow: View {

    var movies: [Movie]

    @Binding var showPreviewFullScreen: Bool
    @Binding var previewStartingIndex: Int

    var body: some View {
        VStack(alignment: .leading) {
            Text("Previews")
                .font(.title3)
                .bold()
                .foregroundColor(.white)
                .padding(.leading, 6)

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(0..<movies.count) { movieIndex in
                        let movie = movies[movieIndex]

                        MoviePreviewCell(movie: movie)
                            .frame(width: 120, height: 120)
                            .padding(.trailing, 14)
                            .padding(.leading, 6)
                            .onTapGesture(perform: {
                                previewStartingIndex = movieIndex
                                showPreviewFullScreen = true
                            })
                    }
                }
            }
        }
        .frame(height: 185)
    }
}

struct MoviePreviewRow_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            MoviePreviewRow(movies: exampleMovies, showPreviewFullScreen: .constant(false), previewStartingIndex: .constant(0))
                
        }
    }
}
