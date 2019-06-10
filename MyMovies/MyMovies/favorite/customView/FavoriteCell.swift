//
//  FavoriteCell.swift
//  MyMovies
//
//  Created by Hazem on 6/9/19.
//  Copyright © 2019 Hazem. All rights reserved.
//

import Foundation
import UIKit

class FavoriteCell : UICollectionViewCell {
    
    var removeFromFav:(() -> ()) = {}
    
    @IBOutlet weak var moviePoster: UIImageView!
    
    @IBOutlet weak var movieTitle: UILabel!
 
    @IBOutlet weak var favoriteIcon:UIButton!
    
    
    @IBAction func RemoveFromFavorite(_ sender: UIButton) {
        removeFromFav()
    }
}
