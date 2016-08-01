//
//  Ship+CoreDataProperties.swift
//  swift-captain-morgans-relationships-lab
//
//  Created by David Park on 7/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Ship {

    @NSManaged var name: String?
    @NSManaged var pirate: Pirate?
    @NSManaged var engine: Engine?

}
