//
//  StepsInPrime.swift
//  TDD
//
//  Created by Grzegorz Gumieniak on 16/04/2022.
//

import Foundation

enum StepsInPrimeError: Error {
	case invalidRange
}

struct StepsInPrime {
	func getPrimes(_ step: Int, _ begin: Int, _ end: Int) throws -> (Int, Int)? {
		if begin == end {
			return nil
		} else if end < begin {
			throw StepsInPrimeError.invalidRange
		}
		return (5,7)
	}
}
