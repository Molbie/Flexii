//
//  Anchor.swift
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


public extension NSLayoutAnchor {
    public typealias Anchor = NSLayoutAnchor
    
    @discardableResult
    public func equal(to anchor: Anchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return constraint(equalTo: anchor, constant: offset).with(priority).activate(active)
    }
    
    @discardableResult
    public func greaterThanOrEqual(to anchor: Anchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return constraint(greaterThanOrEqualTo: anchor, constant: offset).with(priority).activate(active)
    }
    
    @discardableResult
    public func lessThanOrEqual(to anchor: Anchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return constraint(lessThanOrEqualTo: anchor, constant: offset).with(priority).activate(active)
    }
}

public extension XAxisAnchor {
    @discardableResult
    public func equal(toAxis axis: XAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return constraint(equalTo: axis, constant: offset).with(priority).activate(active)
    }
    
    @discardableResult
    public func greaterThanOrEqual(toAxis axis: XAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return constraint(greaterThanOrEqualTo: axis, constant: offset).with(priority).activate(active)
    }
    
    @discardableResult
    public func lessThanOrEqual(toAxis axis: XAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return constraint(lessThanOrEqualTo: axis, constant: offset).with(priority).activate(active)
    }
}

public extension YAxisAnchor {
    @discardableResult
    public func equal(toAxis axis: YAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return constraint(equalTo: axis, constant: offset).with(priority).activate(active)
    }
    
    @discardableResult
    public func greaterThanOrEqual(toAxis axis: YAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return constraint(greaterThanOrEqualTo: axis, constant: offset).with(priority).activate(active)
    }
    
    @discardableResult
    public func lessThanOrEqual(toAxis axis: YAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return constraint(lessThanOrEqualTo: axis, constant: offset).with(priority).activate(active)
    }
}

public extension Dimension {
    @discardableResult
    public func equal(to offset: CGFloat, priority: Priority = .required, active: Bool = true) -> Constraint {
        return constraint(equalToConstant: offset).with(priority).activate(active)
    }
    
    @discardableResult
    public func greaterThanOrEqual(to offset: CGFloat, priority: Priority = .required, active: Bool = true) -> Constraint {
        return constraint(greaterThanOrEqualToConstant: offset).with(priority).activate(active)
    }
    
    @discardableResult
    public func lessThanOrEqual(to offset: CGFloat, priority: Priority = .required, active: Bool = true) -> Constraint {
        return constraint(lessThanOrEqualToConstant: offset).with(priority).activate(active)
    }
    
    @discardableResult
    public func equal(to anchor: Dimension, multiplier: CGFloat = 1, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return constraint(equalTo: anchor, multiplier: multiplier, constant: offset).with(priority).activate(active)
    }
    
    @discardableResult
    public func greaterThanOrEqual(to anchor: Dimension, multiplier: CGFloat = 1, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: offset).with(priority).activate(active)
    }
    
    @discardableResult
    public func lessThanOrEqual(to anchor: Dimension, multiplier: CGFloat = 1, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        return constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: offset).with(priority).activate(active)
    }
}
