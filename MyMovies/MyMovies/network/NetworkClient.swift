//
//  NetworkClient.swift
//  MyMovies
//
//  Created by Hazem on 6/11/19.
//  Copyright © 2019 Hazem. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

class NetworkClient {
    static let shared = NetworkClient()
    private struct ApiInfo {
        static let baseUrl:String = "https://api.themoviedb.org/3/"
        static let discoverMovie:String = "discover/movie"
        static let movie:String = "movie/"
        
        struct ApiKeys {
            static let apiKey:String = "api_key"
            static let sortByKey:String = "sort_by"
            static let includeAdultKey:String = "include_adult"
            static let includeVideoKey:String = "include_video"
            static let pageKey:String = "page"
            static let languageKey:String = "language"
        }
        
        struct ApiQueryValue {
            static let popularityDesc :String = "popularity.desc"
            static let languageValue:String = "en-US"
        }
        
        static func discoverMoviesUrl() ->String {
            return baseUrl + discoverMovie
        }
        
        static func movieDetailsUrl(movieID:String) ->String {
            return baseUrl + movie + movieID
        }
        static func discoverMoviesUrlWithParameters() -> String {
            
            var comps = URLComponents(string: discoverMoviesUrl())!
            
            let apiQurery = URLQueryItem(name: ApiKeys.apiKey, value: "7544d4cab069b83f6de42f06f59a1759")
            let sortQuery = URLQueryItem(name: ApiKeys.sortByKey, value: ApiQueryValue.popularityDesc)
            let adultContentQuery = URLQueryItem(name: ApiKeys.includeAdultKey, value: "false")
            let includeVideoQuery = URLQueryItem(name: ApiKeys.includeVideoKey, value: "false")
            let languageQuery = URLQueryItem(name: ApiKeys.languageKey, value: ApiQueryValue.languageValue)
            comps.queryItems = [ apiQurery, sortQuery,adultContentQuery,includeVideoQuery,languageQuery]
            
            return comps.string!
     
    }
        static func movieDetailsUrlWithParamters(movieID:String) ->String {
            var comps = URLComponents(string: movieDetailsUrl(movieID: movieID))!
            
            let apiQurery = URLQueryItem(name: ApiKeys.apiKey, value: "7544d4cab069b83f6de42f06f59a1759")
            let languageQuery = URLQueryItem(name: ApiKeys.languageKey, value: ApiQueryValue.languageValue)
            comps.queryItems = [ apiQurery,languageQuery]
            
            return comps.string!
            
        }
    
}
    func fetchPopularMovies() -> DataRequest{
        return Alamofire.request(ApiInfo.discoverMoviesUrlWithParameters(),method: .get)
    }

    func fetchMovieDetails(movieID:String) -> DataRequest {
        return Alamofire.request(ApiInfo.movieDetailsUrlWithParamters(movieID: movieID))
    }
}
