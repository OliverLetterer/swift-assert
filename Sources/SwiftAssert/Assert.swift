//
//  Assert.swift
//  SwiftAssert
//
//  Created by Oliver Letterer on 28.04.23.
//

import Foundation

public @freestanding(expression) macro assert(_ expression: Bool) = #externalMacro(module: "SwiftAssertMacro", type: "AssertMacro")

public struct Assert {
    public static func assert(_ expression: @autoclosure () -> Bool, file: String = #file, line: Int = #line) {
        if !expression() {
            fatalError("Error in \(file):\(line)")
        }
    }
}
