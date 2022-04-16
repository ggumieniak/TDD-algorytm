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
	
	func test_getPrimes_step8_from5to7() {
		do {
			let _ = try stepsInPrime.getPrimes(8, 5, 7)
			XCTFail()
		} catch StepsInPrimeError.invalidStep {
			// its good
		} catch {
			XCTFail()
		}
	}
	
	func test_getPrimes_step_and_range_lesser_then_two() {
		do {
			let _ = try stepsInPrime.getPrimes(-2, 5, 7)
			XCTFail()
		} catch StepsInPrimeError.inputNegativeOrLesserThenTwo {
			// its good
		} catch {
			XCTFail()
		}
		do {
			let _ = try stepsInPrime.getPrimes(2, -5, 7)
			XCTFail()
		} catch StepsInPrimeError.inputNegativeOrLesserThenTwo {
			// its good
		} catch {
			XCTFail()
		}
		do {
			let _ = try stepsInPrime.getPrimes(2, 5, -7)
			XCTFail()
		} catch StepsInPrimeError.invalidRange {
			// its good
		} catch {
			XCTFail()
		}
	}
	
	func test_getPrimes_step4_from130to200() {
		let (first,second) = (163,167)
		guard let (resultFirt,resultSecond) = try? stepsInPrime.getPrimes(4, 130, 200) else { return XCTFail() }
		XCTAssertEqual(first, resultFirt)
		XCTAssertEqual(second, resultSecond)
		}
	
	func test_getPrimes_step8_from300to400() {
		let (first,second) = (359,367)
		guard let (resultFirt,resultSecond) = try? stepsInPrime.getPrimes(8, 300, 400) else { return XCTFail() }
		XCTAssertEqual(first, resultFirt)
		XCTAssertEqual(second, resultSecond)
		}
	
	func test_getPrimes_step2_from2to12() {
		let (first,second) = (3,5)
		guard let (resultFirt,resultSecond) = try? stepsInPrime.getPrimes(2, 2, 100) else { return XCTFail() }
		XCTAssertEqual(first, resultFirt)
		XCTAssertEqual(second, resultSecond)
		}
	
	func test_getPrimes_step2_from4900to4919() {
		let result = try? stepsInPrime.getPrimes(2, 4900, 4919)
		XCTAssertNil(result)
		}
}
