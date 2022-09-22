//
//  LogListTableViewCell.swift
//  TravelDiary
//
//  Created by Matheus Oliveira on 9/22/22.
//

import UIKit

class LogListTableViewCell: UITableViewCell {

    @IBOutlet weak var logNameLabel: UILabel!
    @IBOutlet weak var logAddressLabel: UILabel!
    @IBOutlet weak var logDateLabel: UILabel!
    
    /// This method is called when we want to build the UI of the cell
    func configureCell(with log: Log) {
        logNameLabel.text = log.title
        logAddressLabel.text = log.address
        logDateLabel.text = log.logDate.stringValue() //or "\(log.logDate)" but that will bring the time to the milisecond as well.
    }
}
