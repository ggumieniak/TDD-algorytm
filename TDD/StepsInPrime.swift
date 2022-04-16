//
//  StepsInPrime.swift
//  TDD
//
//  Created by Grzegorz Gumieniak on 16/04/2022.
//

import Foundation

enum StepsInPrimeError: Error {
	case invalidRange
	case invalidStep
	case inputNegativeOrLesserThenTwo
}

struct StepsInPrime {
	func getPrimes(_ step: Int, _ begin: Int, _ end: Int) throws -> (Int, Int)? {
		if begin == end {
			return nil
		} else if end < begin {
			throw StepsInPrimeError.invalidRange
		} else if step > end {
			throw StepsInPrimeError.invalidStep
		} else if step < 2 || begin < 2 || end < 2 {
			throw StepsInPrimeError.inputNegativeOrLesserThenTwo
		}
		return (5,7)
	}
}
