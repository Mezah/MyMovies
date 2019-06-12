//
//  ApiConfiguration.swift
//  MyMovies
//
//  Created by Hazem on 6/6/19.
//  Copyright © 2019 Hazem. All rights reserved.
//

import Foundation
import TMDBSwift

class ApiConfiguration {
    
    var baseUrl:String = ""
    var backDropSizes :[String] = [String]()
    var posterSize : [String] = [String]()
    
    static let shared = ApiConfiguration()
    
    
    init() {
        TMDBConfig.apikey = "7544d4cab069b83f6de42f06f59a1759"
        ConfigurationMDB.configuration{
            clientData, configs in
            if let configData = configs{
                self.baseUrl = configData.base_url
                self.backDropSizes = configData.backdrop_sizes
                self.posterSize = configData.poster_sizes
            }
        }
    }
}
