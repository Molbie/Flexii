//
//  Guide+Anchor.swift
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


extension Guide: EdgeAnchor {}
extension Guide: EdgeGuideAnchor {}
extension Guide: EdgeViewAnchor {}

extension Guide: SizeAnchor {}
extension Guide: SizeGuideAnchor {}
extension Guide: SizeViewAnchor {}

extension Guide: CenterAnchor {}
extension Guide: CenterGuideAnchor {}
extension Guide: CenterViewAnchor {}
