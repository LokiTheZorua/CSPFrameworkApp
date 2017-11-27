//
//  holdable.swift
//  CSPFrameworkApp
//
//  Created by Jones, Alec on 11/20/17.
//  Copyright © 2017 Jones, Alec. All rights reserved.
//

import Foundation
public protocol Holdable
{
    var held : Bool {get set}
    func hold() -> Void
    func isHeld() -> Bool
}
