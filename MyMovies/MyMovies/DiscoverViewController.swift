//
//  ViewController.swift
//  MyMovies
//
//  Created by Hazem on 5/30/19.
//  Copyright © 2019 Hazem. All rights reserved.
//

import UIKit
import TMDBSwift
import PKHUD

class DiscoverViewController: UIViewController , ViewProtocol {
    func showLoading(show state: Bool) {
        if state {
           HUD.show(.progress, onView: nil)
        } else {
           HUD.hide(animated: true)
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


}

