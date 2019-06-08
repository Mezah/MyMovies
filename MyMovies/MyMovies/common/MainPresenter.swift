//
//  MainPresenter.swift
//  MyMovies
//
//  Created by Hazem on 6/8/19.
//  Copyright © 2019 Hazem. All rights reserved.
//

import Foundation

protocol MainPresenter {
    
    func presentError()
    
    func presentNoInternetMessege()
    
    func presentLoadingState(_ state:Bool)
}
