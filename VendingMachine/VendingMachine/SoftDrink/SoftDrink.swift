//
//  SoftDrink.swift
//  VendingMachine
//
//  Created by 심 승민 on 2017. 12. 11..
//  Copyright © 2017년 JK. All rights reserved.
//

import Foundation

class SoftDrink: Beverage {
    // 탄산첨가여부, 유통기한, 칼로리
    private let carbonContent: Int?
    init(_ brand: String, _ volume: Int, _ price: Int, _ productName: String, _ manufacturedDate: Date, _ expirationDate: Date, _ calories: Int?, carbonContent: Int?) {
        self.carbonContent = carbonContent
        super.init(brand, volume, price, productName, manufacturedDate, expirationDate, calories)
    }

    var containsCarbonicGas: Bool {
        guard let carbon = self.carbonContent, carbon > 10 else { return false }
        return true
    }

    override func isLowCalorie() -> Bool {
        guard let calories = super.calories else { return false }
        if calories < 250 { return true }
        else { return false }
    }

}