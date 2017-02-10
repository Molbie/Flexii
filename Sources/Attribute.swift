//
//  Attribute.swift
//  Flexii
//
//  Created by Brian Mullen on 2/8/17.
//  Copyright © 2017 Molbie LLC. All rights reserved.
//

#if os(OSX)
    import AppKit
#else
    import UIKit
#endif


public struct Attribute: RawRepresentable {
    public let rawValue: Int
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
    
    public static let notAnAttribute = Attribute(rawValue: -1)
    public static let left = Attribute(rawValue: 0)
    public static let right = Attribute(rawValue: 1)
    public static let top = Attribute(rawValue: 2)
    public static let bottom = Attribute(rawValue: 3)
    public static let leading = Attribute(rawValue: 4)
    public static let trailing = Attribute(rawValue: 5)
    public static let width = Attribute(rawValue: 6)
    public static let height = Attribute(rawValue: 7)
    public static let centerX = Attribute(rawValue: 8)
    public static let centerY = Attribute(rawValue: 9)
    public static let lastBaseline = Attribute(rawValue: 10)
    public static let firstBaseline = Attribute(rawValue: 11)
    public static let leftMargin = Attribute(rawValue: 12)
    public static let rightMargin = Attribute(rawValue: 13)
    public static let topMargin = Attribute(rawValue: 14)
    public static let bottomMargin = Attribute(rawValue: 15)
    public static let leadingMargin = Attribute(rawValue: 16)
    public static let trailingMargin = Attribute(rawValue: 17)
    public static let widthMargin = Attribute(rawValue: 18)
    public static let heightMargin = Attribute(rawValue: 19)
    public static let centerXMargin = Attribute(rawValue: 20)
    public static let centerYMargin = Attribute(rawValue: 21)
    
    // NSLayoutAttribute compatibility
    public static let centerXWithinMargins = Attribute(rawValue: 20)
    public static let centerYWithinMargins = Attribute(rawValue: 21)
}
extension Attribute: Hashable {
    public var hashValue: Int {
        return self.rawValue.hashValue
    }
}
public func ==(lhs: Attribute, rhs: Attribute) -> Bool {
    return lhs.rawValue == rhs.rawValue
}
