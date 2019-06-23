//
//  ViewController.swift
//  deligate
//
//  Created by 近藤優斗 on 2019/06/16.
//  Copyright © 2019年 kondoyuto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, senderDelegate {
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
    if segue.identifier == "messageSegue" {
        let BViewController:BViewController = segue.destination as! BViewController
    BViewController.delegate = self
        }
    }
    func receiveMessage(message: NSString) {
        print(message)
    }
    
    let a: String = "A"
    
 
    @IBAction func move2(_ sender: Any) {
        let storyboard: UIStoryboard = self.storyboard!
        if let second = storyboard.instantiateViewController(withIdentifier:"B") as? BViewController {
            second.b = a
        self.present(second, animated: true, completion: nil)
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

