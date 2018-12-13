//
//  Pepsi.swift
//  VendingMachine
//
//  Created by 윤지영 on 13/12/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

class Pepsi: SoftDrink {

    convenience init(volume: Int, price: Int, dateOfManufacture: Date, package: BeveragePackage) {
        let brand = "펩시코"
        let name = "펩시"
        self.init(brand: brand, name: name, volume: volume, price: price, dateOfManufacture: dateOfManufacture, package: package)
    }

}
