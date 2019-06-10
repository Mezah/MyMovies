//
//  Utility.swift
//  MyMovies
//
//  Created by Hazem on 6/10/19.
//  Copyright © 2019 Hazem. All rights reserved.
//

import Foundation
import Alamofire

class Connectivity {
    class func isConnectedToInternet() ->Bool {
        return NetworkReachabilityManager()!.isReachable
    }
}
