//
//  FavoriteInteractor.swift
//  MyMovies
//
//  Created by Hazem on 6/4/19.
//  Copyright (c) 2019 Hazem. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol FavoriteBusinessLogic
{
  func loadFavoriteMovies(request: Favorite.Something.Request)
}

protocol FavoriteDataStore
{
var moviesList: [LocalMovieDetails] { get set }
    
}

class FavoriteInteractor: FavoriteBusinessLogic, FavoriteDataStore
{
    var moviesList: [LocalMovieDetails] = [LocalMovieDetails]()
    
  var presenter: FavoritePresentationLogic?
  var worker: FavoriteWorker?
  
  func loadFavoriteMovies(request: Favorite.Something.Request)
  {
    worker = FavoriteWorker()
    presenter?.presentLoadingState(true)
    worker?.loadFavoriteMovies {
        movies,error in
        self.presenter?.presentLoadingState(false)
        if let error = error {
            self.presenter?.presentError()
            return
        }
        let response = Favorite.Something.Response(movies)
    
        self.presenter?.presentFavoriteList(response: response)
        
    }

  }
}
