//
//  ProgrammingViewController.swift
//  CSPFrameworkApp
//
//  Created by Jones, Alec on 12/13/17.
//  Copyright © 2017 Jones, Alec. All rights reserved.
//

import UIKit
import SpriteKit

class ProgrammingViewController: UIViewController
    {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        let gameScene = StartScene(size: view.bounds.size)
        let gameView = view as! SKView
        
        gameView.showsFPS = true
        gameView.showsNodeCount = true
        gameView.ignoresSiblingOrder = true
        
        gameScene.scaleMode = .resizeFill
        gameView.presentScene(gameScene)

        
    }


}
