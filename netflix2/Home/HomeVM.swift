//
//  HomeVM.swift
//  netflix2
//
//  Created by yaaburnee on 21/06/22.
//

import Foundation

class HomeVM: ObservableObject {
    // String == Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({ String($0)})
    }
    
    public var allGenre: [HomeGenre] = [.AllGenres, .Action, .Comedy, .Horror, .Thriller]
    
    public func getMovie(forCat cat: String, andHomeRow homeRow: HomeTopRow, andGenre genre: HomeGenre) -> [Movie] {
        
        switch homeRow {
        case .home:
            return movies[cat] ?? []
        case .movies:
            return (movies[cat] ?? [])
                .filter({ ($0.movieType == .movie) && ($0.genre == genre) })
        case .tvShows:
            return (movies[cat] ?? [])
                .filter({ ($0.movieType == .tvShow) && ($0.genre == genre) })
        case .myList:
            return movies[cat] ?? []
            // TODO: Setup MyList properly
        }
    }
    
    init () {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies
        movies["New Releases"] = exampleMovies
        movies["Action Movies"] = exampleMovies
        movies["Comedy"] = exampleMovies
        movies["Sci-Fi Movies"] = exampleMovies
    }
}
