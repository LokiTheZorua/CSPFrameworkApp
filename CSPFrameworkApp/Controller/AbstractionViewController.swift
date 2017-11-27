//
//  AbstractionViewController.swift
//  CSPFrameworkApp
//
//  Created by Jones, Alec on 11/27/17.
//  Copyright © 2017 Jones, Alec. All rights reserved.
//

import UIKit

public class AbstractionViewController: UIPageViewController, UIPageViewControllerDataSource
    {
    //MARK: Array of subviews
    private (set) lazy var orderedAbstractionViews : [UIViewController] =
    {
        return [
            self.newAbstractionViewController(abstractionLevel: "Block"),
            self.newAbstractionViewController(abstractionLevel: "Java"),
            self.newAbstractionViewController(abstractionLevel: "ByteCode"),
            self.newAbstractionViewController(abstractionLevel: "Binary"),
            self.newAbstractionViewController(abstractionLevel: "AndGate")
        ]
    }()
    
    private func newAbstractionViewController(abstractionLevel : String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\(abstractionLevel)ViewController")
    }

    override public func viewDidLoad()
    {
        super.viewDidLoad()
        dataSource = self
        
        if let firstViewContoller = orderedAbstractionViews.first
        {
            setViewControllers([firstViewContoller],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
    }


    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
        else
        {
            return nil
        }
        let previousIndex = viewControllerIndex - 1
    
        guard previousIndex >= 0
        else
        {
            return orderedAbstractionViews.last
        }
    
        guard orderedAbstractionViews.count > previousIndex
        else
        {
            return nil
        }
    
        return orderedAbstractionViews[previousIndex]
    }
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
        else
        {
            return nil
        }
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex >= 0
        else
        {
            return nil
        }
        guard nextIndex < orderedAbstractionViews.count
        else
        {
            return orderedAbstractionViews.first
        }
        
        return orderedAbstractionViews[nextIndex]
    }
    public func presentationCount(for pageViewController: UIPageViewController) -> Int
    {
        return orderedAbstractionViews.count
    }
    public func presentationIndex(for pageViewController: UIPageViewController) -> Int
    {
        guard let firstViewController = viewControllers?.first, let firstViewControllerIndex = orderedAbstractionViews.index(of: firstViewController)
        else
        {
            return 0
        }
        
        return firstViewControllerIndex
    }
    
}
