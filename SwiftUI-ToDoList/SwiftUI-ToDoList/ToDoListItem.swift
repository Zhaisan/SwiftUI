//
//  ToDoListItem.swift
//  SwiftUI-ToDoList
//
//  Created by Zhaisan on 04.06.2021.
//

import Foundation
import CoreData

class ToDoListItem: NSManagedObject, Identifiable { //Identifiable for the list, NSManagedObject for the coredata
    
    @NSManaged var name: String?
    @NSManaged var createdAt: Date?

}

extension ToDoListItem {
    static func getAllToDoListItems() -> NSFetchRequest<ToDoListItem>{
        let request: NSFetchRequest<ToDoListItem> = ToDoListItem.fetchRequest() as! NSFetchRequest<ToDoListItem>
        
        let sort = NSSortDescriptor(key: "createdAt", ascending: false)
        request.sortDescriptors = [sort] // to sort in ascending by date
        
        return request
    }
}
