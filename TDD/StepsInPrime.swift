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
		let primeArray = createPrimeArrayFrom(Array(begin...end))
		return findTupleOfPrimeSteps(at: primeArray, step: step)
	}
	
	private func createPrimeArrayFrom(_ givenArray: [Int]) -> [Int] {
			var primes: [Int] = []
			for number in givenArray {
				if number == 2 || number == 3 {
					primes.append(number)
				} else if number % 2 == 0 || number % 3 == 0 || number <= 1 {
					continue
				}
				var i = 5
				var flag = true
				while(i * i <= number) {
					if number % i == 0 || number % (i + 2) == 0
					{
						flag = false
					}
					i += 6;
				}
				flag ? primes.append(number) : nil
			}
			return primes
		}
		
		private func findTupleOfPrimeSteps(at primes: [Int], step: Int) -> (Int,Int)? {
			var i = 0
			let primesCount = primes.count - 1
			while (i < primesCount) {
				var j = i + 1
				repeat {
					if primes[i] + step == primes[j] {
						return (primes[i],primes[j])
					}
					j += 1
				} while (j < primesCount && primes[j] - primes[i] <= step)
				i += 1
			}
			return nil
		}
}
