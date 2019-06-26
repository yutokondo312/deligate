//
//  File.swift
//  deligate
//
//  Created by 近藤優斗 on 2019/06/16.
//  Copyright © 2019年 kondoyuto. All rights reserved.
//
import UIKit

//protocol dismissModal {
//    func dismiss()
//}

protocol senderDelegate{
    func receiveMessage(message:NSString)
}

class BViewController: UIViewController {
    var b =  ""
    var delegate: senderDelegate?
    let message = "you got a message"
//    var delegate2: dismissModal?
    
   
    @IBAction func sendMessage(sender: AnyObject) {
        delegate?.receiveMessage(message: message as NSString)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
//    @IBAction func backToFirst(_ sender: Any) {
//
//        delegate2?.dismiss()
//
//    }
}
