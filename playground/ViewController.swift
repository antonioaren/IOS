//
//  ViewController.swift
//  playground
//
//  Created by Pedro Arenas on 7/8/18.
//  Copyright © 2018 Pedro Arenas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var waiting: UIActivityIndicatorView!
    
    @IBAction func buttonAction(_ sender: UIButton) {
        
        waiting.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if(self.titleLabel.text=="Hello World") {
                self.titleLabel.text="Hola Mundo"
            } else {
                self.titleLabel.text="Hello World"
            }
            self.waiting.stopAnimating()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        titleLabel.text="Hello World"
        waiting.stopAnimating()
        waiting.hidesWhenStopped=true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

