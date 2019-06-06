//
//  Mapper.swift
//  MyMovies
//
//  Created by Hazem on 6/6/19.
//  Copyright © 2019 Hazem. All rights reserved.
//

import Foundation
import TMDBSwift

func convertMovies(movieDb apiMovies:[MovieMDB]) -> [Discover.DiscoverMovies.Movie] {
    var moviesList = [Discover.DiscoverMovies.Movie]()
    for apiMovie in apiMovies {
        var movie = Discover.DiscoverMovies.Movie()
        movie.id = apiMovie.id
        movie.title = apiMovie.title
        movie.posterPath = apiMovie.poster_path
        movie.backdropPath = apiMovie.backdrop_path
        moviesList.append(movie)
    }
    
    return moviesList
    
}
