//
//  StepsInPrimeTests.swift
//  StepsInPrimeTests
//
//  Created by Grzegorz Gumieniak on 16/04/2022.
//

import XCTest
@testable import TDD

class StepsInPrimeTests: XCTestCase {

	let stepsInPrime: StepsInPrime = .init()
	
    func testExample() throws {
			XCTAssertNil(stepsInPrime.getPrimes(1,2,3))
    }


}
