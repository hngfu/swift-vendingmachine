//
//  UnitTestVendingMachine.swift
//  UnitTestBeverage
//
//  Created by 조재흥 on 18. 12. 18..
//  Copyright © 2018 JK. All rights reserved.
//

import XCTest

class UnitTestVendingMachine: XCTestCase {

    var VM: VendingMachine!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        VM = VendingMachine()
        
        let mandarineMilk = MandarineMilk(openDate: Date(before: 2))
        let lactoseFreeMilk = LactoseFreeMilk(openDate: Date(before: 3))
        let starbucksDoubleShot = StarbucksDoubleShot(openDate: Date(before: 6))
        let topTheBlack = TOPTheBlack(openDate: Date(before: 7))
        let cocaCola = CocaCola(openDate: Date(before: 4))
        let cocaColaZero = CocaColaZero(openDate: Date(before: 9))
        
        VM.add(product: mandarineMilk)
        VM.add(product: lactoseFreeMilk)
        VM.add(product: lactoseFreeMilk)
        VM.add(product: cocaCola)
        VM.add(product: cocaCola)
        VM.add(product: cocaCola)
        VM.add(product: starbucksDoubleShot)
        VM.add(product: starbucksDoubleShot)
        VM.add(product: topTheBlack)
        VM.add(product: cocaColaZero)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBuyableProducts1100() {
        VM.insert(money: 1100)
        XCTAssertEqual(VM.buyableProducts().count, 1)
    }
    
    func testBuyableProducts1200() {
        VM.insert(money: 1200)
        XCTAssertEqual(VM.buyableProducts().count, 2)
    }
    
    func testBuyableProducts1400() {
        VM.insert(money: 1400)
        XCTAssertEqual(VM.buyableProducts().count, 5)
    }

    func testBuyCocaCola() {
        XCTAssertTrue(VM.buy(productName: "CocaCola") is CocaCola)
    }
    
    func testBuyMandarineMilk() {
        XCTAssertTrue(VM.buy(productName: "MandarineMilk") is MandarineMilk)
    }
    
    func testCheckBalance1100() {
        VM.insert(money: 1100)
        XCTAssertEqual(VM.checkBalance(), "1100")
    }
    
    func testCheckBalance2000() {
        VM.insert(money: 2000)
        XCTAssertEqual(VM.checkBalance(), "2000")
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
