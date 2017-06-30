//
//  ViewController.swift
//  WordRemixer
//
//  Created by Apprentice on 6/30/17.
//  Copyright © 2017 Apprentice. All rights reserved.
//

import UIKit
import Alamofire
import Foundation

class ViewController: UIViewController {
    
 

    @IBOutlet weak var textOutput: UITextField!
    @IBOutlet weak var textFieldButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func generateNewWords(_ sender: Any) {
        print("clickedButton")
        textOutput.text = getString()
        
    }
    
    func getString() -> String {
    
        let todoEndpoint: String = "https://jsonplaceholder.typicode.com/todos/1"
        Alamofire.request(todoEndpoint)
            .responseJSON { response in
            let response: Data
            let json = try? JSONSerialization.jsonObject(with: response, options: [])
            guard let title = json["title"] as? [String: Any] else {
                    return
                }
            return title
                
        }
    }
}

