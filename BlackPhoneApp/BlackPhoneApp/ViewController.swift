//
//  ViewController.swift
//  BlackPhoneApp
//
//  Created by SUJIKO_KOMB on 2018/06/16.
//  Copyright © 2018年 SUJIKO_KOMB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private enum InputKey: String {
        case Key_0 = "0"
        case Key_1 = "1"
        case KEY_2 = "2"
        case Key_3 = "3"
        case Key_4 = "4"
        case KEY_5 = "5"
        case Key_6 = "6"
        case Key_7 = "7"
        case KEY_8 = "8"
        case KEY_9 = "9"
        case KEY_Enter = "\r"
    }
    
    @IBOutlet weak var inputInfo: UILabel!
    @IBOutlet weak var phoneNumber : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.inputInfo.text = ""
        self.phoneNumber.text = "";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override var keyCommands: [UIKeyCommand]? {
        return [
            UIKeyCommand(input: InputKey.Key_0.rawValue, modifierFlags: .init(rawValue: 0), action: #selector(self.performCommand(sender:))),
            UIKeyCommand(input: InputKey.Key_1.rawValue, modifierFlags: .init(rawValue: 0), action: #selector(self.performCommand(sender:))),
            UIKeyCommand(input: InputKey.KEY_2.rawValue, modifierFlags: .init(rawValue: 0), action: #selector(self.performCommand(sender:))),
            UIKeyCommand(input: InputKey.Key_3.rawValue, modifierFlags: .init(rawValue: 0), action: #selector(self.performCommand(sender:))),
            UIKeyCommand(input: InputKey.Key_4.rawValue, modifierFlags: .init(rawValue: 0), action: #selector(self.performCommand(sender:))),
            UIKeyCommand(input: InputKey.KEY_5.rawValue, modifierFlags: .init(rawValue: 0), action: #selector(self.performCommand(sender:))),
            UIKeyCommand(input: InputKey.Key_6.rawValue, modifierFlags: .init(rawValue: 0), action: #selector(self.performCommand(sender:))),
            UIKeyCommand(input: InputKey.Key_7.rawValue, modifierFlags: .init(rawValue: 0), action: #selector(self.performCommand(sender:))),
            UIKeyCommand(input: InputKey.KEY_8.rawValue, modifierFlags: .init(rawValue: 0), action: #selector(self.performCommand(sender:))),
            UIKeyCommand(input: InputKey.KEY_9.rawValue, modifierFlags: .init(rawValue: 0), action: #selector(self.performCommand(sender:))),
            UIKeyCommand(input: InputKey.KEY_Enter.rawValue, modifierFlags: .init(rawValue: 0), action: #selector(self.performCommand(sender:))),
        ]
    }
    
    private func setPhoneNumber(input:Character){
        self.phoneNumber.text?.append(input)
        
        if (self.phoneNumber.text?.count)! > 8 {
            self.phoneNumber.text?.removeFirst();
        }
    }
    
    /// キー処理
    ///
    /// - Parameter sender: <#sender description#>
    @objc func performCommand(sender: UIKeyCommand){
        
        guard let key = InputKey(rawValue: sender.input!) else {
            return
        }
        switch key {
        case .Key_0:
            self.inputInfo.text = "0"
            setPhoneNumber(input: "0")
            print ("0")
            return
        case .Key_1:
            self.inputInfo.text = "1"
            setPhoneNumber(input: "1")
            print ("1")
            return
        case .KEY_2:
            self.inputInfo.text = "2"
            setPhoneNumber(input: "2")
            print ("2")
            return
        case .Key_3:
            self.inputInfo.text = "3"
            setPhoneNumber(input: "3")
            print ("3")
            return
        case .Key_4:
            self.inputInfo.text = "4"
            setPhoneNumber(input: "4")
            print ("4")
            return
        case .KEY_5:
            self.inputInfo.text = "5"
            setPhoneNumber(input: "5")
            print ("5")
            return
        case .Key_6:
            self.inputInfo.text = "6"
            setPhoneNumber(input: "6")
            print ("6")
            return
        case .Key_7:
            self.inputInfo.text = "7"
            setPhoneNumber(input: "7")
            print ("7")
            return
        case .KEY_8:
            self.inputInfo.text = "9"
            setPhoneNumber(input: "8")
            print ("8")
            return
        case .KEY_9:
            self.inputInfo.text = "9"
            setPhoneNumber(input: "9")
            print ("9")
            return
        case .KEY_Enter:
            self.inputInfo.text = "Enter"
            self.phoneNumber.text = ""
            print ("Enter")
            return
        }
    }
}

