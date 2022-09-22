//
//  LogController.swift
//  TravelDiary
//
//  Created by Matheus Oliveira on 9/22/22.
//

import Foundation

class LogController {
    //MARK: - Singleton, used so the source of truth is ran only once and doesn't delete the info inside, because if initialized a second time empties array. Singleton: To ensure that we are interacting with the SAME instance of our *logs* array we created a singleton and will pass around this specific instance of our **LogController**
    /// Singleton: To ensure that we are interacting with the *SAME* instance of our *logs* array we created a singleton and will pass around this specific instance of our **LogController**
    static let sharedInstance = LogController()
    
    //MARK: - Source of Truth (Only become a single if combined with the code above)
    /// Source of Truth: The single location we will store our **Log** data.
    var logs: [Log] = []
    
    //MARK: - CRUD
    /**
         Creates a Log object using the data provided by the View Controller
         - Properties:
         - title: The *Sring* identifier for the Log.
         - address: The *String* representation for where the user was.
         - body: The *String* representation of what the user enjoyed about this event.
         */
    func create(title: String, address: String, body: String) {
        let log = Log(title: title, address: address, body: body)
        logs.append(log)
    }
    /**
        Updates a Log object using the data provided by the View Controller
        - Properties:
        - logToUpdate: The *Log* object whose data will be updated.
        - newTitle: The  new *Sring* identifier for the **Log**.
        - newAddress: The new *String* representation for where the user was.
        - newBody: The new *String* representation of what the user enjoyed about this event.
        */
    func update(logToUpdate: Log, newTitle: String, newAddress: String, newBody: String) {
        logToUpdate.title = newTitle
        logToUpdate.address = newAddress
        logToUpdate.body = newBody
        logToUpdate.logDate = Date()
    }
    /**
        Deletes a Log object
        - Properties:
        - logToDelete: The *Log* object to delete. Deleting the log object also removes any other data associated with it. I.E. -The Title, Body, and so on.
        */
    func delete(logToDelete: Log) {
        guard let indexOfLogToDelete = logs.firstIndex(of: logToDelete) else {return}
        logs.remove(at: indexOfLogToDelete)
    }
} //End of Class
