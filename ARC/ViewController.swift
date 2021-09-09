//
//  ViewController.swift
//  ARC
//
//  Created by Serkan Mehmet Malagiç on 8.09.2021.
//

import UIKit
import Foundation

class Person {
    
    var name : String
    var device : Macbook?
    
    internal init(name: String, device: Macbook?) {
        self.name = name
        self.device = device
    }
    deinit {
        print("deninit complete person")
    }
    
}

class Macbook {
    
    var name : String?
    var model : String?
    weak var owner : Person?
    
    internal init(name: String, model: String, owner : Person?) {
        self.name = name
        self.model = model
        self.owner = owner
    }
    deinit {
        print("deninit complete Macbook")
    }
}


class ViewController: UIViewController {

    var serkan : Person?
    var macbook : Macbook?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        serkan = Person(name: "Serkan", device: nil)
        macbook = Macbook(name: "MBP-2910", model: "2019", owner : nil)
        
        serkan?.device = macbook
        macbook?.owner = serkan
        
        serkan = nil
        macbook = nil

        print(macbook)
        print(serkan)

    }

}

