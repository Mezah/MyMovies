//
//  LocalMovieDetails+CoreDataProperties.swift
//  MyMovies
//
//  Created by Hazem on 6/9/19.
//  Copyright © 2019 Hazem. All rights reserved.
//
//

import Foundation
import CoreData


extension LocalMovieDetails {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LocalMovieDetails> {
        return NSFetchRequest<LocalMovieDetails>(entityName: "LocalMovieDetails")
    }

    @NSManaged public var backdropImage: String?
    @NSManaged public var id: String?
    @NSManaged public var overView: String?
    @NSManaged public var posterImage: String?
    @NSManaged public var runtime: String?
    @NSManaged public var title: String?
    @NSManaged public var voteCount: Double
    @NSManaged public var isFavorite: Bool
    @NSManaged public var movieRate: Double
    @NSManaged public var geners: NSSet?
    @NSManaged public var localMovie: LocalMovie?

}

// MARK: Generated accessors for geners
extension LocalMovieDetails {

    @objc(addGenersObject:)
    @NSManaged public func addToGeners(_ value: MovieGener)

    @objc(removeGenersObject:)
    @NSManaged public func removeFromGeners(_ value: MovieGener)

    @objc(addGeners:)
    @NSManaged public func addToGeners(_ values: NSSet)

    @objc(removeGeners:)
    @NSManaged public func removeFromGeners(_ values: NSSet)

}
