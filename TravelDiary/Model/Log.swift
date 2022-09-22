//
//  Log.swift
//  TravelDiary
//
//  Created by Matheus Oliveira on 9/22/22.
//

import Foundation

class Log {
    /**
         Initializes, or creates,  a Log object using the data provided
         - Properties:
            - logTitle: The *Sring* identifier for the Log.
            - logAddress: The *String* representation for where the user was.
            - logBody: The *String* representation of what the user enjoyed about this event.
            - logDate: The *Date* representation of when this log was created. Defaults to the current date and time.
         */
    var title: String
    var address: String
    var logDate: Date
    var body: String
    
    /**
         Initializes, or creates,  a Log object using the data provided
         - Properties:
            - logTitle: The *Sring* identifier for the Log.
            - logAddress: The *String* representation for where the user was.
            - logBody: The *String* representation of what the user enjoyed about this event.
            - logDate: The *Date* representation of when this log was created. Defaults to the current date and time.
         */
    init(title: String, address: String, logDate: Date = Date(), body: String) {
        self.title = title
        self.address = address
        self.logDate = logDate
        self.body = body
    }
}
//Adopt and conform to the Equatable Protocol
extension Log: Equatable {
    static func == (lhs: Log, rhs: Log) -> Bool {
        return lhs.title == rhs.title &&
        lhs.address == rhs.address &&
        lhs.body == rhs.body &&
        lhs.logDate == rhs.logDate
    }
}
