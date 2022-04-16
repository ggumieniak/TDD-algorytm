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
	
	func test_getPrimes_step2_from5to7() {
		let (first,second) = (5,7)
		guard let (resultFirt,resultSecond) = try? stepsInPrime.getPrimes(2, 5, 7) else { return XCTFail() }
		XCTAssertEqual(first, resultFirt)
		XCTAssertEqual(second, resultSecond)
    }
	
	func test_getPrimes_step2_from5to5() {
		let result = try? stepsInPrime.getPrimes(2, 5, 5)
		XCTAssertNil(result)
		}
	
	func test_getPrimes_step2_from5to2() {
		do {
			let _ = try stepsInPrime.getPrimes(2, 5, 2)
			XCTFail()
		} catch StepsInPrimeError.invalidRange {
			// its good
		} catch {
			XCTFail()
		}
	}
}
