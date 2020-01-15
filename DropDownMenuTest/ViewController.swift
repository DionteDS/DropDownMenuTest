//
//  ViewController.swift
//  DropDownMenuTest
//
//  Created by Dionte Silmon on 1/15/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import UIKit

// The city selection
enum Cities: String {
    case sanFrancisco = "San Francisco"
    case newYorkCity = "New York City"
    case losAngeles = "Los Angeles"
    case chicago = "Chicago"
    case dallas = "Dallas"
}

class ViewController: UIViewController {
    
    @IBOutlet var ctiyButtons: [UIButton]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup the navigation bar title and background color
        navigationItem.title = "Select a city"
        navigationController?.navigationBar.barTintColor = UIColor.darkGray
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        view.backgroundColor = UIColor.darkGray
        
    }
    
    @IBAction func cityHandler(_ sender: UIButton) {
        
        // Animate the drop down menu
        ctiyButtons.forEach { (button) in
            UIView.animate(withDuration: 0.3) {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            }
        }
    }
    
    
    @IBAction func cityTapped(_ sender: UIButton) {
        
        guard let title = sender.currentTitle, let city = Cities(rawValue: title) else { return }
        
        // Print out the city the user tap on
        switch city {
        case .sanFrancisco:
            print("You selected: \(city.rawValue)")
        case .newYorkCity:
            print("You selected: \(city.rawValue)")
        case .losAngeles:
            print("You selected: \(city.rawValue)")
        case .chicago:
            print("You selected: \(city.rawValue)")
        case .dallas:
            print("You selected: \(city.rawValue)")
        default:
            print("No city")
        }
        
    }


}

