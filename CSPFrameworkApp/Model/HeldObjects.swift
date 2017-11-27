//
//  HeldObjects.swift
//  CSPFrameworkApp
//
//  Created by Jones, Alec on 11/20/17.
//  Copyright © 2017 Jones, Alec. All rights reserved.
//

import Foundation
public class HeldObjectes : Holdable
{
    public var held: Bool
    
    public init()
    {
        self.held = false
    }
    
    //MARK:- Holdable Methods
    
    public func hold() -> Void
    {
        print("I am being held")
        held = true
    }
    
    public func isHeld() -> Bool
    {
        if (held)
        {
            print("Held")
        }
        else
        {
            print("Not picked up")
        }
        return held
    }
}
