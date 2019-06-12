//
//  BaseResponse.swift
//  MyMovies
//
//  Created by Hazem on 6/11/19.
//  Copyright © 2019 Hazem. All rights reserved.
//

import Foundation
import ObjectMapper

struct ErrorResponse : Mappable {
    
    var statusMsg:String?
    var success:Bool?
    var statusCode:Int?
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        statusMsg         <- map["status_message"]
        success           <- map["success"]
        statusCode        <- map["status_code"]
    }
    
}
struct DiscoveMoviesResponse : Mappable {
    
    var page :Int?
    var result:[Discover.DiscoverMovies.Movie]?
    var totalResult:Int?
    var totalPages:Int?
    
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        page             <- map["page"]
        result           <- map["results"]
        totalResult      <- map["total_results"]
        totalPages       <- map["total_pages"]
    }
    
    
}
