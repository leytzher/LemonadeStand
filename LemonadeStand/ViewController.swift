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
	let kSixth:CGFloat = 1.0/6.0
	let kEigth:CGFloat = 1.0/8.0
	let kMargin: CGFloat = 10.0
	
	// FUNCTIONS
	//*******************************

	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		setupContainerViews()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	// CUSTOM FUNCTIONS
	//*******************************

	func setupContainerViews(){
		
		// change view background color:
		self.view.backgroundColor = UIColor(red: CGFloat(20.0/255.0), green: CGFloat(149.0/255.0), blue: CGFloat(83.0/255.0), alpha: CGFloat(1))
		
		//setup container One
		self.containerOne = UIView(frame: CGRect(
			x: self.view.bounds.origin.x,
			y: self.view.bounds.origin.y,
			width: self.view.bounds.width,
			height: self.view.bounds.height * self.kEigth ))
		
		self.containerOne.backgroundColor = UIColor( red: CGFloat(92.0/255.0), green: CGFloat(230/255.0), blue: CGFloat(160/255.0), alpha: CGFloat(1.0) )
		self.view.addSubview(self.containerOne)
		
		//setup container Two
		self.containerTwo = UIView(frame: CGRect(
			x: self.view.bounds.origin.x + self.kMargin ,
			y: self.containerOne.frame.height + 10,
			width: self.view.bounds.width - (kMargin * 2),
			height: self.view.bounds.height * 1.4 * kSixth))
		self.containerTwo.backgroundColor = UIColor(red: CGFloat(74.0/255.0), green: CGFloat(74.0/255.0), blue: CGFloat(74.0/255.0), alpha: CGFloat(1))
		self.containerTwo.layer.cornerRadius = 8.0
		self.containerTwo.clipsToBounds = true
		self.view.addSubview(self.containerTwo)
		
		//setup container Three
		self.containerThree = UIView(frame: CGRect(
			x: self.view.bounds.origin.x + self.kMargin ,
			y: self.containerOne.frame.height + self.containerTwo.frame.height + 20,
			width: self.view.bounds.width - (kMargin * 2),
			height: self.view.bounds.height * 1.4 * kSixth))
		self.containerThree.backgroundColor = UIColor(red: CGFloat(74.0/255.0), green: CGFloat(74.0/255.0), blue: CGFloat(74.0/255.0), alpha: CGFloat(1))
		self.containerThree.layer.cornerRadius = 8.0
		self.containerThree.clipsToBounds = true
		self.view.addSubview(self.containerThree)
		
		//setup container Four
		self.containerFour = UIView(frame: CGRect(
			x: self.view.bounds.origin.x + self.kMargin ,
			y: self.containerOne.frame.height + self.containerTwo.frame.height + self.containerThree.frame.height + 30,
			width: self.view.bounds.width - (kMargin * 2),
			height: self.view.bounds.height * 1.4 * kSixth))
		self.containerFour.backgroundColor = UIColor(red: CGFloat(74.0/255.0), green: CGFloat(74.0/255.0), blue: CGFloat(74.0/255.0), alpha: CGFloat(1))
		self.containerFour.layer.cornerRadius = 8.0
		self.containerFour.clipsToBounds = true
		self.view.addSubview(self.containerFour)
		
		//setup container Five
		self.containerFive = UIView(frame: CGRect(
			x: self.view.bounds.origin.x  ,
			y: self.containerOne.frame.height + self.containerTwo.frame.height + self.containerThree.frame.height + self.containerFour.frame.height + 40,
			width: self.view.bounds.width ,
			height: self.view.bounds.height * 1.0 * kEigth))
		self.containerFive.backgroundColor = UIColor( red: CGFloat(92.0/255.0), green: CGFloat(230/255.0), blue: CGFloat(160/255.0), alpha: CGFloat(1.0) )
		self.view.addSubview(self.containerFive)
		
	}
	
}

