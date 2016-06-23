//
//  SearchViewController.swift
//  GithubDemo
//
//  Created by Ming Horn on 6/23/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    var newreposettings : GithubRepoSearchSettings?

    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        newreposettings?.minStars = Int(sliderValue.value)
        if(segue.identifier == "saveSegue")
        {
            let vc = segue.destinationViewController as! UINavigationController
            let resultsViewController = vc.viewControllers.first as? RepoResultsViewController
            resultsViewController!.searchSettings.minStars = Int(sliderValue.value)
            
            print(resultsViewController!.searchSettings.minStars)
            print("Hi")
        }
        
    }

    @IBAction func cancelClicked(segue:UIStoryboardSegue) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func sliderValueChanged(sender: AnyObject) {
        
        valueLabel.text = String(sliderValue.value)
    }

}
