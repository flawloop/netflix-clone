//
//  SearchResultsGrid.swift
//  netflix2
//
//  Created by yaaburnee on 18/08/22.
//

import SwiftUI

struct SearchResultsGrid: View {
    var movies: [Movie]
    
    @Binding var movieDetailToShow: Movie?
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(movies, id: \.id) { movie in
                StandardHomeMovie(movie: movie)
                    .frame(width:100, height: 160)
                    .padding(.horizontal, 10)
                    .clipped()
                    .onTapGesture(perform: {
                        movieDetailToShow = movie
                    })
            }
        }
        .padding(.horizontal, 8)
    }
}

struct SearchResultsGrid_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultsGrid(movies: generateMovies(20), movieDetailToShow: .constant(nil))
    }
}
