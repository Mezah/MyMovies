//
//  ApiConfiguration.swift
//  MyMovies
//
//  Created by Hazem on 6/6/19.
//  Copyright © 2019 Hazem. All rights reserved.
//

import Foundation
import TMDBSwift
import ObjectMapper

struct ApiConfigurationResponse : Mappable {
    
    var images:Images?
    var changeKeys:[String]?
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        images      <- map["images"]
        changeKeys  <- map["change_keys"]
    }
    
    
}

struct Images :Mappable{
    
    var baseUrl:String?
    var secureBaseUrl:String?
    var backdropSizes:[String]?
    var logoSizes:[String]?
    var profileSizes:[String]?
    var posterSizes:[String]?
    var stillSizes:[String]?
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        baseUrl             <- map["base_url"]
        secureBaseUrl       <- map["secure_base_url"]
        logoSizes           <- map["logo_sizes"]
        posterSizes         <- map["poster_sizes"]
        backdropSizes       <- map["backdrop_sizes"]
        profileSizes        <- map["profile_sizes"]
        stillSizes          <- map["still_sizes"]
    }
    
    
}


class ApiConfiguration {
    
    var baseUrl:String = ""
    var backDropSizes :[String] = [String]()
    var posterSizes : [String] = [String]()
    
    static let shared = ApiConfiguration()
    
    func backDropSize()->String {
        return backDropSizes[4]
    }
    
    func posterSize() -> String {
        return posterSizes[4]
    }
    
    init() {
        NetworkClient.shared.fetchApiConfiguration().responseString { response in
            let statusCode = response.response?.statusCode
            
            if statusCode == 200 {
                if let jsonString = response.result.value {
                    let configData = ApiConfigurationResponse(JSONString: jsonString)
                    self.baseUrl = configData?.images?.baseUrl ?? ""
                    self.backDropSizes = configData?.images?.backdropSizes ?? [String]()
                    self.posterSizes = configData?.images?.posterSizes ?? [String]()
                }
            }
            else if statusCode == 401 || statusCode == 404 {
                print(response.error?.localizedDescription)
            }
        }
    }
}
