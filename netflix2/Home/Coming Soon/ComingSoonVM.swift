//
//  ComingSoonVM.swift
//  netflix2
//
//  Created by yaaburnee on 18/08/22.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
