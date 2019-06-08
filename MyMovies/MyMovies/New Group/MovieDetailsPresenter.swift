//
//  MovieDetailsPresenter.swift
//  MyMovies
//
//  Created by Hazem on 6/7/19.
//  Copyright (c) 2019 Hazem. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol MovieDetailsPresentationLogic: MainPresenter {
  func presentMovieDetails(movieDetails details:MovieData.MovieInformation.MovieDetails)
}

class MovieDetailsPresenter: MovieDetailsPresentationLogic
{
    
    
  weak var viewController: MovieDetailsDisplayLogic?
  
  // MARK: Load Movie Details
  
  func presentMovieDetails(movieDetails details:MovieData.MovieInformation.MovieDetails)
  {
    let viewModel = MovieData.ViewModel(details)
    viewController?.displatMovieInformation(viewModel: viewModel)
  }
    
    func presentError() {
        viewController?.displayError()
    }
    
    func presentNoInternetMessege() {
        viewController?.displayNoInternet()
    }
    
    func presentLoadingState(_ state: Bool) {
        viewController?.displayLoading(state)
    }
}
