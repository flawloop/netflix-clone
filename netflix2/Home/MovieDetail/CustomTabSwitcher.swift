//
//  CustomTabSwitcher.swift
//  netflix2
//
//  Created by yaaburnee on 13/07/22.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    @State private var currentTab: CustomTab = .episodes
    
    var tabs: [CustomTab]
    var movie: Movie
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func widthForTab(tab: CustomTab) ->CGFloat {
        let string = tab.rawValue
        return string.withOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            // Custom Tab view
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(tabs, id:\.self) { tab in
                        VStack {
                            // Red bar on top
                            Rectangle()
                                .frame(width: widthForTab(tab: tab), height: 6)
                                .foregroundColor(tab == currentTab ? Color.red : Color.clear)
                            
                            //Button
                            Button {
                                currentTab = tab
                            } label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? Color.white : Color.gray)
                            }
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab: tab), height: 30)
                        }
                    }
                }
                .padding(.horizontal, 10)
            }
            
            switch currentTab {
            case .episodes:
                EpisodesView(episodes: movie.episodes ?? [], showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason)
            case .trailers:
                TrailerList(trailers: movie.trailers)
            case .more:
                MoreLikeThis(movies: movie.moreLikeThisMovies)
            }
        }
        .foregroundColor(.white)
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more], movie: exampleMovie1,
                              showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
        
    }
}
