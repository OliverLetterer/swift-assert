//
//  AssertMacro.swift
//  SwiftAssertMacro
//
//  Created by Oliver Letterer on 28.04.23.
//

import Foundation
import SwiftSyntax
import SwiftSyntaxBuilder
import _SwiftSyntaxMacros

public enum AssertError: Error {
    case noFirstArgument
}

public struct AssertMacro: ExpressionMacro {
    public static func expansion(of node: MacroExpansionExprSyntax, in context: inout MacroExpansionContext) throws -> ExprSyntax {
        guard let argument = node.argumentList.first?.expression else {
            throw AssertError.noFirstArgument
        }

        return "Assert.assert(\(argument))"
    }
}
