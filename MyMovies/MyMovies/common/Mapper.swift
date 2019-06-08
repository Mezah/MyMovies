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
    let baseUrl = ApiConfiguration.shared.baseUrl
    let posterSize = ApiConfiguration.shared.posterSize[4]
    for apiMovie in apiMovies {
        var movie = Discover.DiscoverMovies.Movie()
        movie.id = apiMovie.id
        movie.title = apiMovie.title
        if let posterUrl = apiMovie.poster_path {
            movie.posterPath = String(baseUrl + posterSize + posterUrl)
        }
        if let backdropPath = apiMovie.backdrop_path {
            movie.backdropPath = String(baseUrl + posterSize + backdropPath)
        }
        movie.movieRate = apiMovie.vote_average
        moviesList.append(movie)
    }
    
    return moviesList
    
}

func convertMovieDetails(details apiMovieDetails:MovieDetailedMDB) -> MovieData.MovieInformation.MovieDetails {
    let baseUrl = ApiConfiguration.shared.baseUrl
    let posterSize = ApiConfiguration.shared.posterSize[4]
    
    var movieDetails = MovieData.MovieInformation.MovieDetails()
    movieDetails.id = apiMovieDetails.id
    movieDetails.title = apiMovieDetails.title
    movieDetails.overView = apiMovieDetails.overview
    movieDetails.movieRate = apiMovieDetails.vote_average
    movieDetails.voteCount = apiMovieDetails.vote_count
    movieDetails.runTime = apiMovieDetails.runtime
    if let posterUrl = apiMovieDetails.poster_path {
        movieDetails.posterPath = String(baseUrl + posterSize + posterUrl)
    }
    if let backdropPath = apiMovieDetails.backdrop_path {
        movieDetails.backdropPath = String(baseUrl + posterSize + backdropPath)
    }
    
    for gener in apiMovieDetails.genres {
        let appGener = MovieData.MovieInformation.Gener(gener.id,gener.name)
        movieDetails.geners.append(appGener)
    }
    return movieDetails
    
}
