//
//  ViewController.swift
//  malt
//
//  Created by Abu Swaminathan on 7/14/19.
//  Copyright © 2019 abuswaminathan. All rights reserved.
//

import UIKit
import FirebaseFirestore


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
        let db = Firestore.firestore()
        db.collection("beers").getDocuments { (snapshot, error)  in
            
            if error != nil {
                print(error)
            } else {
                for document in (snapshot?.documents)! {
                    print(document.data()["beer_type"] as? String)
                }
            }
        }
    }
}
