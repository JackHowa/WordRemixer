//
//  ViewController.swift
//  WordRemixer
//
//  Created by Apprentice on 6/30/17.
//  Copyright © 2017 Apprentice. All rights reserved.
//

import UIKit
import Alamofire

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
        print(getString())
    }
    
    func getString() {
    
        let todoEndpoint: String = "https://jsonplaceholder.typicode.com/todos/1"
        Alamofire.request(todoEndpoint)
            .responseJSON { response in
            guard let json = response.result.value as? [String: Any] else {
                print("Didn't get todo object as JSON from API")
//                print("Error: \(response.request.error)")
                return
            }
            print(json)
        }
    }

}

