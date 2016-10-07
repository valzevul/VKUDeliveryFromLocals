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
    
    // Проверяем, какой из segue начинает выполнение
    // (т.к метод prepare вызывается каждый раз)
    if segue.identifier == "General Segue" {
      // Проверяем, можно ли привести контроллер, который
      // появится на экране, к ожидаемому нами классу
      if let vc = segue.destination as? CategoryViewController {
        // sender — объект типа Any?, поэтому нужно безопасно
        // распаковать его в ожидаемый тип
        if let title = sender as? String {
          vc.title = title // Заполняем значения создаваемого контроллера
          vc.price = 400
        }
      }
    }
  }
  
  @IBAction func moscowButtonPressed(_ sender: UIButton) {
    // Инициализируем переход на новый ViewController
    performSegue(withIdentifier: "General Segue", sender: "moscow")
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()

    
    
  }
}

