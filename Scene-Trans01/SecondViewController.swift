//
//  SecondViewController.swift
//  Scene-Trans01
//
//  Created by Yonghun Roh on 2022/09/07.
//

import UIKit
class SecondViewController: UIViewController {
    
    @IBAction func back(_ sender: Any){
        self.presentingViewController?.dismiss(animated: true)
    }
    
}
