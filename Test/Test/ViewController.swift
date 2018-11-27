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
        let kitten = Cat.init(name: "kitten", age: 2)
        do {
            let data = try JSONEncoder().encode(kitten)
            let dictionary = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            print(dictionary)
        } catch {
            print(error)
        }
        
        let model = try! JSONDecoder().decode(Cat.self, from: dic.data(using: .utf8)!)
        print(model.name)
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



