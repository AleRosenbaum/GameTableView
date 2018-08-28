//
//  ConsolesManager.swift
//  TableViewCoreData
//
//  Created by Ale Rosenbaum on 28/08/18.
//  Copyright © 2018 academysenac. All rights reserved.
//

import CoreData

class ConsolesManager {
    static let shared = ConsolesManager()
    var consoles: [Console] = []
    
    func loadConsole(with context: NSManagedObjectContext){
        let fetchRequest : NSFetchRequest<Console> = Console.fetchRequest()
        let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        do{
            consoles = try context.fetch(fetchRequest)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    
    func deleteConsole(index: Int, context: NSManagedObjectContext){
        let console = consoles[index]
        context.delete(console)
        do {
        try context.save()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    private init(){
        
    }
    
}
