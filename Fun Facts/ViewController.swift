//
//  ViewController.swift
//  Fun Facts
//
//  Created by Timothy Walsh on 2/5/15.
//  Copyright (c) 2015 com.ClassicTim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        var randomColor = colorWheel.randomColor()
        view.backgroundColor = randomColor //accessing the view which is controlled by this ViewController, and setting a new background color
        funFactButton.tintColor = randomColor
        funFactLabel.text = factBook.randomFact()
    }

}

