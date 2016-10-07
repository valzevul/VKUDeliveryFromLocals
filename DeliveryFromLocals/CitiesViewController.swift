//
//  ViewController.swift
//  DeliveryFromLocals
//
//  Created by Vadim Drobinin on 3/10/16.
//  Copyright © 2016 Vadim Drobinin. All rights reserved.
//

import UIKit

class CitiesViewController: UIViewController {
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "General Segue" {
      if let vc = segue.destination as? CategoryViewController {
        if let title = sender as? String {
          vc.title = title
          vc.price = 400
        }
      }
    }
  }
  
  @IBAction func moscowButtonPressed(_ sender: UIButton) {
    performSegue(withIdentifier: "General Segue", sender: "moscow")
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()

    
    
  }
}

