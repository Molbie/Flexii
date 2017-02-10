//
//  Priority.swift
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


#if os(OSX)
    public final class Priority: NSObject {
        public let rawValue: NSLayoutPriority
        
        public init(rawValue: NSLayoutPriority) {
            self.rawValue = rawValue
            
            super.init()
        }
        
        public static let required = Priority(rawValue: NSLayoutPriorityRequired)
        public static let high = Priority(rawValue: NSLayoutPriorityDefaultHigh)
        public static let low = Priority(rawValue: NSLayoutPriorityDefaultLow)
        public static let windowSizeStayPut = Priority(rawValue: NSLayoutPriorityWindowSizeStayPut)
        public static let dragThatCanResizeWindow = Priority(rawValue: NSLayoutPriorityDragThatCanResizeWindow)
        public static let dragThatCannotResizeWindow = Priority(rawValue: NSLayoutPriorityDragThatCannotResizeWindow)
        public static let fittingSizeCompression = Priority(rawValue: NSLayoutPriorityFittingSizeCompression)
    }
#else
    public final class Priority: NSObject {
        public let rawValue: UILayoutPriority
        
        public init(rawValue: UILayoutPriority) {
            self.rawValue = rawValue
            
            super.init()
        }
        
        public static let required = Priority(rawValue: UILayoutPriorityRequired)
        public static let high = Priority(rawValue: UILayoutPriorityDefaultHigh)
        public static let low = Priority(rawValue: UILayoutPriorityDefaultLow)
        public static let fittingSizeLevel = Priority(rawValue: UILayoutPriorityFittingSizeLevel)
    }
#endif
