//
//  ViewController.swift
//  DesingCase
//
//  Created by Kaan Yıldırım on 4.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.navigationItem.title = "RENOVASI"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "list.dash"), style: .done, target: self, action: #selector(buttonClicked))
        navigationItem.rightBarButtonItem?.tintColor = .white
        
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = .clear
        appearance.backgroundEffect = nil
        
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont(name: "Helvetica Neue", size: 25)!]
        

        navigationController?.navigationBar.barStyle = .black
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    @objc private func buttonClicked() {
    }


}

