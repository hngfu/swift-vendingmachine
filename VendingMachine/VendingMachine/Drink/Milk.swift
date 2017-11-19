//
//  Milk.swift
//  VendingMachine
//
//  Created by yangpc on 2017. 11. 13..
//  Copyright © 2017년 JK. All rights reserved.
//

import Foundation

class Milk: Drink {
    private(set) var farmCode: String
    private(set) var ingredients: [String]
    /// 유통기한: 제조일로부터 45일
    override var expirationDate: Date? {
        guard let manufacturingDate = dateFormatter.date(from: self.dateOfManufacture) else {
            return nil
        }
        return Date(timeInterval: 3600 * 24 * 45, since: manufacturingDate)
    }
    init?(productTpye: String,
          brand: String,
          weight: String,
          price: String,
          name: String,
          dateOfManufacture: String,
          calorie: String,
          farmCode: String = "Unknown",
          ingredients: [String] = [String]()) {
        self.farmCode = farmCode
        self.ingredients = ingredients
        super.init(productTpye: productTpye,
                   calorie: calorie,
                   brand: brand,
                   weight: weight,
                   price: price,
                   name: name,
                   dateOfManufacture: dateOfManufacture)
    }
    
    func isEasyOfDigestion() -> Bool {
        return self.ingredients.contains("lactose") ? true : false
    }
    
    func isLowCalorie() -> Bool {
        return self.calorie <= 100 ? true : false
    }
    
}