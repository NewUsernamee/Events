//
//  CoreDataHelper.swift
//  Events
//
//  Created by chuangke-12 on 2017/8/1.
//  Copyright © 2017年 Make School. All rights reserved.
//

import Foundation
import Foundation
import CoreData
import UIKit

class CoreDataHelper
{
    static let appDelegate = UIApplication.shared.delegate as! AppDelegate
    static let persistentContainer = appDelegate.persistentContainer
    static let managedContext = persistentContainer.viewContext
    
    static func createEvent() -> Event
    {
        let newEvent = NSEntityDescription.insertNewObject(forEntityName: "Event", into: managedContext) as! Event
        return newEvent
    }
    
    static func saveEvent() {
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not save \(error)")
        }
    }
    
    static func getEventFromData() -> [Event]
    {
        let fetchRequest = NSFetchRequest<Event>(entityName:"Event")
        do
        {
            let results = try managedContext.fetch(fetchRequest)
            return results
        }
        catch let error as NSError
        {
            print("\(error)")
        }
        return []
    }
    
    static func deleteEvent(event: Event)
    {
        managedContext.delete(event)
        saveEvent()
    }
}
