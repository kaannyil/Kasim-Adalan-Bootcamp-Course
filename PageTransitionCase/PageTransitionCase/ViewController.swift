//
//  ViewController.swift
//  PageTransitionCase
//
//  Created by Kaan Yıldırım on 6.10.2023.
//

import UIKit

enum SegueIdentifier: String {
    case HometoAPage = "HometoAPage"
    case HometoXPage = "HometoXPage"
    case AtoBPage = "AtoBPage"
    case XtoYPage = "XtoYPage"
    case BtoYPage = "BtoYPage"
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            performSegue(withIdentifier: SegueIdentifier.HometoAPage.rawValue, sender: nil)
        case 1:
            performSegue(withIdentifier: SegueIdentifier.HometoXPage.rawValue, sender: nil)
        case 2:
            performSegue(withIdentifier: SegueIdentifier.AtoBPage.rawValue, sender: nil)
        case 3:
            performSegue(withIdentifier: SegueIdentifier.XtoYPage.rawValue, sender: nil)
        case 4:
            performSegue(withIdentifier: SegueIdentifier.BtoYPage.rawValue, sender: nil)
        default:
            navigationController?.popToRootViewController(animated: true)
        }
    }
    
}

