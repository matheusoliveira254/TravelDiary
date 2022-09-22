//
//  Log.swift
//  TravelDiary
//
//  Created by Matheus Oliveira on 9/22/22.
//

import Foundation

class Log {
    
    var title: String
    var address: String
    var logDate: Date
    var body: String
    
    init(title: String, address: String, logDate: Date = Date(), body: String) {
        self.title = title
        self.address = address
        self.logDate = logDate
        self.body = body
    }
}
