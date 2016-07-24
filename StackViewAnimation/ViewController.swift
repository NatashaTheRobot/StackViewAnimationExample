//
//  ViewController.swift
//  StackViewAnimation
//
//  Created by Natasha Murashev on 7/23/16.
//  Copyright © 2016 Natasha Murashev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var emojiButtons: [UIButton]! {
        didSet {
            emojiButtons.forEach {
                $0.isHidden = true
            }
        }
    }
    
    @IBOutlet var emojiButtonsAutolayout: [UIButton]! {
        didSet {
            emojiButtonsAutolayout.forEach {
                $0.isHidden = true
            }
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    @IBAction func onSettingsAutoLayoutButtonTap(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.3) {
            self.emojiButtonsAutolayout.forEach {
                $0.isHidden = !$0.isHidden
            }
        }

    }

    @IBAction func onSettingsButtonTap(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.3) { 
            self.emojiButtons.forEach {
                $0.isHidden = !$0.isHidden
            }
        }

    }
}

