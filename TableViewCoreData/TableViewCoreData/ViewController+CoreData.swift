//
//  ViewController+CoreData.swift
//  TableViewCoreData
//
//  Created by Ale Rosenbaum on 27/08/18.
//  Copyright © 2018 academysenac. All rights reserved.
//

import UIKit
import CoreData

extension UIViewController {
    
    var context: NSManagedObjectContext{
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }

}
