//
//  LogController.swift
//  TravelDiary
//
//  Created by Matheus Oliveira on 9/22/22.
//

import Foundation

class LogController {
    //MARK: - Singleton, used so the source of truth is ran only once and doesn't delete the info inside, because if initialized a second time empties array. Singleton: To ensure that we are interacting with the SAME instance of our *logs* array we created a singleton and will pass around this specific instance of our **LogController**
    static let sharedInstance = LogController()
    
    //MARK: - Source of Truth (Only become a single if combined with the code above)
    var logs: [Log] = []
    
    //MARK: - CRUD
    
    func create(title: String, address: String, body: String) {
        let log = Log(title: title, address: address, body: body)
        logs.append(log)
    }
    
    func update(logToUpdate: Log, newTitle: String, newAddress: String, newBody: String) {
        logToUpdate.title = newTitle
        logToUpdate.address = newAddress
        logToUpdate.body = newBody
        logToUpdate.logDate = Date()
    }
    
    func delete(logToDelete: Log) {
        
    }
} //End of Class
