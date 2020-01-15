//
//  ViewController.swift
//  DropDownMenuTest
//
//  Created by Dionte Silmon on 1/15/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import UIKit

enum Cities: String {
    case sanFrancisco = "San Francisco"
    case newYorkCity = "NewYorkCity"
    case losAngeles = "Los Angeles"
    case chicago = "Chicago"
    case dallas = "Dalls"
}

class ViewController: UIViewController {
    
    @IBOutlet var ctiyButtons: [UIButton]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Select a city"
        navigationController?.navigationBar.barTintColor = UIColor.darkGray
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        view.backgroundColor = UIColor.darkGray
        
    }
    
    @IBAction func cityHandler(_ sender: UIButton) {
        
        ctiyButtons.forEach { (button) in
            UIView.animate(withDuration: 0.3) {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            }
        }
    }
    
    
    @IBAction func cityTapped(_ sender: UIButton) {
        
        
        
    }


}

