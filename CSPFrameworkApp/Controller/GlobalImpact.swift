//
//  GlobalImpact.swift
//  CSPFrameworkApp
//
//  Created by Jones, Alec on 11/10/17.
//  Copyright © 2017 Jones, Alec. All rights reserved.
//

import UIKit

class GlobalImpact: UIViewController {
    
    @IBOutlet weak var wolfImage: UIImageView!
    @IBOutlet weak var planImage: UIImageView!
    @IBOutlet weak var appPlan: UILabel!
    @IBOutlet weak var collectedData: UILabel!
    @IBOutlet weak var whyNeeded: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }

        private func addImage() -> Void
    {
        planImage.image = UIImage(named : "projectImage")
    }
        private func addText() Void -> Void
    {
        self.collctedData.text = "This App will gather data about the size of the person's carbon foodprint and will tell them how well they did"
        self.whyNeeded.text = "This is needed because of how much it effects the envoirment, it also is the cause of Utah's yearly inversion"
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    


}
