//
//  ClobalHelpers.swift
//  netflix2
//
//  Created by yaaburnee on 21/06/22.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string:
                            "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!

var randomExampleImageURL: URL {
    return [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL)
let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL2)
let exampleTrailer3 = Trailer(name: "The Musterious", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL3)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "Dark",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2022,
    rating: "TV-MA",
    numberOfSeasons: 10,
    accentColor: Color.blue,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7],
    episodes: allExampleEpisodes,
    promotionHeadline: "Watch Season 1 Now", trailers: exampleTrailers,
    PreviewImageName: "darkPreview",
    previewVideoURL: exampleVideoURL)

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2021,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [], trailers: exampleTrailers,
    PreviewImageName: "arrestedDevPreview",
    previewVideoURL: exampleVideoURL)

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Friends",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "Best Rated Show", trailers: exampleTrailers,
    PreviewImageName: "dirtyJohnPreview",
    previewVideoURL: exampleVideoURL)

let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Afterlife",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2018,
    rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [], trailers: exampleTrailers,
    PreviewImageName: "ozarkPreview",
    previewVideoURL: exampleVideoURL)

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2015,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "New episodes coming soon", trailers: exampleTrailers,
    PreviewImageName: "travelersPreview",
    previewVideoURL: exampleVideoURL)

let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2026,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [], trailers: exampleTrailers,
    PreviewImageName: "whiteLinesPreview",
    previewVideoURL: exampleVideoURL)

let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "Friends",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 1994,
    rating: "TV-MA",
    numberOfSeasons: 10,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [], trailers: exampleTrailers,
    PreviewImageName: "darkPreview",
    previewVideoURL: exampleVideoURL)

var exampleMovies: [Movie] {
    [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7].shuffled()
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnings and Endings", description: "Six months after disappearances, the police form a task force. In 2052, Jonas learns that most of the Winded perished in an apocalyptic event.", season: 2, episode: 1)

let episode1 = Episode(name: "The One After Joey and Rachel Kiss",
                       season: 1,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/102",
                       description: "Ross has kissed Charlie although she is still officially dating Joey. Joey and Rachel have kissed as well, but they agonize over how to tell Ross.",
                       length: 29,
                       videoURL: exampleVideoURL)

let episode2 = Episode(name: "The One Where Ross Is Fine",
                       season: 1,
                       episodeNumber: 2,
                       thumbnailImageURLString: "https://picsum.photos/300/101",
                       description: "Rachel, Joey and Charlie attend an uncomfortable dinner party at Ross's apartment. Former surrogate mother Phoebe is visited by her brother, Frank Jr.",
                       length: 23,
                       videoURL: exampleVideoURL)

let episode3 = Episode(name: "The One with Ross's Tan",
                       season: 1,
                       episodeNumber: 3,
                       thumbnailImageURLString: "https://picsum.photos/300/104",
                       description: "Monica and Phoebe's annoying friend visits, causing a rift between the women. Ross goes to a tanning salon but fails to follow the directions.",
                       length: 24,
                       videoURL: exampleVideoURL)

let episode4 = Episode(name: "The One After Joey and Rachel Kiss",
                       season: 2,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/105",
                       description: "Ross has kissed Charlie although she is still officially dating Joey. Joey and Rachel have kissed as well, but they agonize over how to tell Ross.",
                       length: 29,
                       videoURL: exampleVideoURL)

let episode5 = Episode(name: "The One Where Ross Is Fine",
                       season: 2,
                       episodeNumber: 2,
                       thumbnailImageURLString: "https://picsum.photos/300/106",
                       description: "Rachel, Joey and Charlie attend an uncomfortable dinner party at Ross's apartment. Former surrogate mother Phoebe is visited by her brother, Frank Jr.",
                       length: 23,
                       videoURL: exampleVideoURL)

let episode6 = Episode(name: "The One with Ross's Tan",
                       season: 2,
                       episodeNumber: 3,
                       thumbnailImageURLString: "https://picsum.photos/300/107",
                       description: "Monica and Phoebe's annoying friend visits, causing a rift between the women. Ross goes to a tanning salon but fails to follow the directions.",
                       length: 24,
                       videoURL: exampleVideoURL)

var allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]

extension LinearGradient {
    static let blackOpacityGradient =  LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.97)]),
        startPoint: .top,
        endPoint: .bottom
    )
}

extension String {
    func withOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
