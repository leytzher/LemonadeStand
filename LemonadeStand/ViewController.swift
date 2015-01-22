//
//  ViewController.swift
//  LemonadeStand
//
//  Created by Leytzher on 1/22/15.
//  Copyright (c) 2015 Leytzher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	// PROPERTIES 
	//*******************************
	
	// A.) Variables
	var containerOne: UIView!   // for App title
	var containerTwo: UIView!   // for status
	var containerThree: UIView! // for purchase
	var containerFour: UIView!  // for mix
	var containerFive: UIView!  // for start day
	var appTitle: UILabel!
	
	
	// B.) Constants
	l
	
	
	// FUNCTIONS
	//*******************************

	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	// CUSTOM FUNCTIONS
	//*******************************

	func setupContainerOne(containerView:UIView){
		appTitle = UILabel()
		self.appTitle.text = "Lemonade Stand"
		self.appTitle.textColor = UIColor.darkGrayColor()
		
		
	}
	
}

