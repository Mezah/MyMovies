//
//  LocalMovie+CoreDataProperties.swift
//  MyMovies
//
//  Created by Hazem on 6/8/19.
//  Copyright © 2019 Hazem. All rights reserved.
//
//

import Foundation
import CoreData


extension LocalMovie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LocalMovie> {
        return NSFetchRequest<LocalMovie>(entityName: "LocalMovie")
    }
 @NSManaged public var id:String?
    @NSManaged public var backdrop: String?
    @NSManaged public var movieRate: Double
    @NSManaged public var movieTitle: String?
    @NSManaged public var posterPath: String?
    @NSManaged public var detail: LocalMovieDetails?

}
