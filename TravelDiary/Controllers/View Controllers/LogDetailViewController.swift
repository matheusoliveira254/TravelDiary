//
//  LogDetailViewController.swift
//  TravelDiary
//
//  Created by Matheus Oliveira on 9/22/22.
//

import UIKit

class LogDetailViewController: UIViewController {

    @IBOutlet weak var logDateLabel: UILabel!
    @IBOutlet weak var logTitleTextField: UITextField!
    @IBOutlet weak var logAddressTextField: UITextField!
    @IBOutlet weak var logBodyTextView: UITextView!
    
    //Receiver
    /// This optional property is commonly referred to as a landing pad, or reciever.
    var logReceiver: Log?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
    /**
         Updates the view to display the users' data - Helper Function
         - Description: Guards against the possibility of not having a valid **Log** to display. If the guard statement is passed we display the data of that **Log**. If not, then the user is creating a new **Log** and we do not need to display any data.
         */
    func updateUI() {
        //from log to view elements
        guard let log = logReceiver else {return}
        logTitleTextField.text = log.title
        logAddressTextField.text = log.address
        logBodyTextView.text = log.body
        logDateLabel.text = log.logDate.stringValue()
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        /// Verifying there is text to save
        guard let title = logTitleTextField.text,
              let address = logAddressTextField.text,
              let body = logBodyTextView.text else {return}
        /// Checks to see if log has a valid value.
        if let log = logReceiver {
            // if logReceiver has value the user is trying to update the value
            /// The log has a value - Thusly, the user is attempting to update the data within that log. Calls the *update(log:)* method from our Model Controller and passes in the new text values.
            LogController.sharedInstance.update(logToUpdate: log, newTitle: title, newAddress: address, newBody: body)
        } else {
            // if the log receiver has no value then the customer is trying to CREATE a log
            /// The log **DOES NOT** have a valid value. Thusly, the user is attempting to create a new log. Calls the *createLog(with:)* method from our Model Controller and passes in the new text values.
            LogController.sharedInstance.create(title: title, address: address, body: body)
        }
        /// Send us back to the **LogListTableviewController** as the user is now complete with the tasks on this screen.
        navigationController?.popViewController(animated: true)
    }
}// End of Class
