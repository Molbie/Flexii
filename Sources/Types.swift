//
//  Types.swift
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


public typealias Constraint = NSLayoutConstraint
public typealias Constraints = [Attribute: Constraint]
public typealias Relation = NSLayoutRelation
public typealias XAxisAnchor = NSLayoutXAxisAnchor
public typealias YAxisAnchor = NSLayoutYAxisAnchor
public typealias Dimension = NSLayoutDimension
#if os(OSX)
    public typealias View = NSView
    public typealias Guide = NSLayoutGuide
    public typealias Insets = EdgeInsets
    public extension Insets {
        public static var zero = Insets(top: 0, left: 0, bottom: 0, right: 0)
    }
#else
    public typealias View = UIView
    public typealias Guide = UILayoutGuide
    public typealias Insets = UIEdgeInsets
#endif
