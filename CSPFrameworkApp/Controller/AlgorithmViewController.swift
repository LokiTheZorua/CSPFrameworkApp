//
//  AlgorithmViewController.swift
//  CSPFrameworkApp
//
//  Created by Jones, Alec on 11/8/17.
//  Copyright © 2017 Jones, Alec. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController {
    //MARK Data members
    
    @IBOutlet weak var algorithmText: UILabel!
    
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps: [String] = []
        //MARK: Algorithm definition
        let algorithm :String = "These are the insctions to create a project in Java using Eclipse and Getub \n"
        let stepOne :String = "Frist,Open elcipse"
        let stepTwo :String = "Second, Name project"
        let stepThree: String = "Go into source and make 3 packages, view, model, and controller"
        let stepFour: String = "In controller make name.controller and name.runner"
        let stepFive: String = "Open get hub"
        let stepSix: String = "Make the respository"
        let stepSeven: String = "in runner make the runner statement"
        let stepEight: String = "make sure to work on the view folder"
        let stepNine: String = "Commit"
        
        // TODO: Finish adding all steps to the algorithm
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven, stepEight, stepNine]
        
        let attributesDictionairy = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionairy)
        
        for step in algorithmSteps
        {
            let bullet: String = ""
            let formattedStep: String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let pargraphStyle = createPargraphStyle()
            
            attributedStringStep.addAttributes
            
        }
    }
}
