//
//  Log.swift
//  TravelDiary
//
//  Created by Matheus Oliveira on 9/22/22.
//

import Foundation

class Log {
    
    let title: String
    let address: String
    let logDate: Date
    let body: String
    
    init(title: String, address: String, logDate: Date, body: String) {
        self.title = title
        self.address = address
        self.logDate = logDate
        self.body = body
    }
}
