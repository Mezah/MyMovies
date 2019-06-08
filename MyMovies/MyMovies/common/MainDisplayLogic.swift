//
//  MainDisplayLogic.swift
//  MyMovies
//
//  Created by Hazem on 6/8/19.
//  Copyright © 2019 Hazem. All rights reserved.
//

import Foundation

protocol MainDisplayLogic :class {
    func displayNoInternet()
    func displayLoading(_ show:Bool)
    func displayError()
}
