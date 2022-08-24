//
//  PreviewVM.swift
//  netflix2
//
//  Created by yaaburnee on 25/08/22.
//

import Foundation

class PreviewVM: ObservableObject {
    
    var movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
}
