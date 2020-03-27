//
//  CalculatorErrorPlusLocalizedError.swift
//  CountOnMe
//
//  Created by Mark LEDOUX  on 05/02/2020.
//  Copyright © 2020 Vincent Saluzzo. All rights reserved.
//

import Foundation

/// Enum with the cases of errors handled in the app
enum CalculatorError: Error {
	case zeroDivisor
	case missingElement
	case unknownOperator
	case leftOperatorNotValid
	case rightOperatorNotValid
	case unknownError
}

extension CalculatorError: LocalizedError {
	/// Extension explaining what the program needs to return depending on the error return by the program
	public var errorDescription: String? {
		switch self {
		case .zeroDivisor:
			return NSLocalizedString("error_not_a_number", comment: "")
		case .missingElement:
			return NSLocalizedString("error_element_missing", comment: "")
		case .unknownOperator:
			return NSLocalizedString("error_unknown_operator", comment: "")
		case .leftOperatorNotValid:
			return NSLocalizedString("error_left_operator_not_valid", comment: "")
		case .rightOperatorNotValid:
			return NSLocalizedString("error_right_operator_not_valid", comment: "")
		case .unknownError:
			return NSLocalizedString("error_unknown_error", comment: "")
		}
	}
}
