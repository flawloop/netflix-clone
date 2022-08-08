//
//  TopMoviePreview.swift
//  netflix2
//
//  Created by yaaburnee on 22/06/22.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: Movie
    
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount = movie.categories.count //4
        
        // if 0+1 != 4
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack{
                Spacer()
                HStack{
                    ForEach(movie.categories, id: \.self) {category in
                        
                        HStack {
                            Text(category)
                                .font(.footnote)
                            
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size:3))
                            }
                        }
                    }
                }
                HStack {
                    Spacer ()
                    
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: false) {
                        //
                    }
                    
                    Spacer()
                    
                    HStack {
                        PlayButton(text: "Play", imageName: "play.fill"){
                            //
                        }
                        .frame(width: 120)
                    }
                    
                    Spacer ()
                    
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        //
                    }
                    Spacer ()
                }
            }
            .background(
                LinearGradient.blackOpacityGradient
                .padding(.top, 250)
            )
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
