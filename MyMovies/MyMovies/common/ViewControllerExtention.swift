//
//  ViewControllerExtention.swift
//  MyMovies
//
//  Created by Hazem on 6/11/19.
//  Copyright © 2019 Hazem. All rights reserved.
//

import Foundation
import UIKit
import PKHUD

extension UIViewController :MainDisplayLogic {
    func displayNoInternet() {
        let alert = UIAlertController(title: "No Internet", message: "Please Check you internet Connection", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func displayLoading(_ show: Bool) {
        if show {
            HUD.dimsBackground = true
            HUD.show(HUDContentType.progress)
        } else {
            HUD.dimsBackground = true
            HUD.flash(.success, delay: 1.0)
        }
        
    }
    
    func displayError() {
        let alert = UIAlertController(title: "Error", message: "An Error occured", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
}
