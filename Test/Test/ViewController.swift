//
//  ViewController.swift
//  Test
//
//  Created by 王磊 on 2018/11/26.
//  Copyright © 2018 王磊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let dic =
         """
            {
              "name": "kitty",
              "age": 12
            }
          """

    override func viewDidLoad() {
        super.viewDidLoad()
        
        test()
    }
    
    func test() {
        print("test")
        print("rever111t")
        print("aa11as11")
        print("33333")
    }
    
}

struct Cat: Codable {
    let name: String
    let age: Int
}

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}



