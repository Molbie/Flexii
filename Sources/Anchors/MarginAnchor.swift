//
//  MarginAnchor.swift
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


public protocol MarginAnchor {
    var layoutMarginsGuide: Guide { get }
}

public extension MarginAnchor {
    @discardableResult
    public func leadingMargin(_ relation: Relation, _ anchor: XAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return layoutMarginsGuide.leading(relation, anchor, offset: offset, priority: priority, active: active)
    }
    
    @discardableResult
    public func trailingMargin(_ relation: Relation, _ anchor: XAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return layoutMarginsGuide.trailing(relation, anchor, offset: offset, priority: priority, active: active)
    }
    
    @discardableResult
    public func leftMargin(_ relation: Relation, _ anchor: XAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return layoutMarginsGuide.left(relation, anchor, offset: offset, priority: priority, active: active)
    }
    
    @discardableResult
    public func rightMargin(_ relation: Relation, _ anchor: XAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return layoutMarginsGuide.right(relation, anchor, offset: offset, priority: priority, active: active)
    }
    
    @discardableResult
    public func topMargin(_ relation: Relation, _ anchor: YAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return layoutMarginsGuide.top(relation, anchor, offset: offset, priority: priority, active: active)
    }
    
    @discardableResult
    public func bottomMargin(_ relation: Relation, _ anchor: YAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return layoutMarginsGuide.bottom(relation, anchor, offset: offset, priority: priority, active: active)
    }
    
    @discardableResult
    public func widthMargin(_ relation: Relation, _ offset: CGFloat, priority: Priority = .required, active: Bool = true) -> Constraint {
        return layoutMarginsGuide.width(relation, offset, priority: priority, active: active)
    }
    
    @discardableResult
    public func widthMargin(_ relation: Relation, _ anchor: Dimension, multiplier: CGFloat = 1, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return layoutMarginsGuide.width(relation, anchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
    }
    
    @discardableResult
    public func heightMargin(_ relation: Relation, _ offset: CGFloat, priority: Priority = .required, active: Bool = true) -> Constraint {
        return layoutMarginsGuide.height(relation, offset, priority: priority, active: active)
    }
    
    @discardableResult
    public func heightMargin(_ relation: Relation, _ anchor: Dimension, multiplier: CGFloat = 1, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return layoutMarginsGuide.height(relation, anchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
    }
    
    @discardableResult
    public func centerXMargin(_ relation: Relation, _ anchor: XAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return layoutMarginsGuide.centerX(relation, anchor, offset: offset, priority: priority, active: active)
    }
    
    @discardableResult
    public func centerYMargin(_ relation: Relation, _ anchor: YAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return layoutMarginsGuide.centerY(relation, anchor, offset: offset, priority: priority, active: active)
    }
}
