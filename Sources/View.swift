//
//  View.swift
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


extension View: EdgeAnchor {}
extension View: EdgeGuideAnchor {}
extension View: EdgeViewAnchor {}

extension View: SizeAnchor {}
extension View: SizeGuideAnchor {}
extension View: SizeViewAnchor {}

extension View: CenterAnchor {}
extension View: CenterGuideAnchor {}
extension View: CenterViewAnchor {}

extension View: BaselineAnchor {}
extension View: BaselineGuideAnchor {}
extension View: BaselineViewAnchor {}

#if os(iOS) || os(tvOS)
extension View: MarginAnchor {}
extension View: MarginGuideAnchor {}
extension View: MarginViewAnchor {}
#endif
