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
	
	var lemonImageView: UIImageView!
	var iceImageView: UIImageView!
	
	var balanceLabel: UILabel!
	var currentBalance: CGFloat! = 100.0
	var lemonBalanceLabel : UILabel!
	var lemonBalance:Int = 2
	var iceBalanceLabel: UILabel!
	var iceBalance:Int = 1
	
	
	
	
	
	
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
		setupFirstContainer(self.containerOne)
		setupSecondContainer(self.containerTwo)
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

	func setupFirstContainer(container:UIView){
		self.appTitle = UILabel()
		self.appTitle.text = "Lemonade Stand"
		self.appTitle.textColor = UIColor.darkGrayColor()
		self.appTitle.font = UIFont(name: "MarkerFelt-Wide", size: 30)
		self.appTitle.sizeToFit()
		self.appTitle.center = container.center
		container.addSubview(self.appTitle)
	}
	
	func setupSecondContainer(container: UIView){
		self.lemonImageView = UIImageView(frame: CGRect(x: container.bounds.origin.x, y: container.bounds.origin.y, width: 40, height: 40))
		self.lemonImageView.image = UIImage(named: "Lemon")
		self.lemonImageView.center = CGPoint(x: container.frame.width * CGFloat(1.0/6.0), y: container.frame.height * CGFloat(2.0/3.0))
		container.addSubview(self.lemonImageView)
		
		self.iceImageView = UIImageView(frame: CGRect(x: container.bounds.origin.x, y: container.bounds.origin.y, width: 40, height: 40))
		self.iceImageView.image = UIImage(named: "iceCubes")
		self.iceImageView.center = CGPoint(x: container.frame.width * CGFloat(4.0/6.0), y: container.frame.height * CGFloat(2.0/3.0))
		container.addSubview(self.iceImageView)
		
		self.balanceLabel = UILabel()
		self.balanceLabel.text = "$\(self.currentBalance)"
		self.balanceLabel.textColor = UIColor.whiteColor()
		self.balanceLabel.font = UIFont(name: "MarkerFelt-Wide", size: 40)
		self.balanceLabel.sizeToFit()
		self.balanceLabel.center = CGPoint(x: container.frame.width * CGFloat(3.0/6.0), y: container.frame.height * CGFloat(0.6/3.0))
		container.addSubview(self.balanceLabel)

		self.iceBalanceLabel = UILabel()
		self.iceBalanceLabel.text = "x \(self.iceBalance)"
		self.iceBalanceLabel.textColor = UIColor.whiteColor()
		self.iceBalanceLabel.font = UIFont(name: "MarkerFelt-Wide", size: 30)
		self.iceBalanceLabel.sizeToFit()
		self.iceBalanceLabel.center = CGPoint(x: container.frame.width * CGFloat(5.0/6.0), y: container.frame.height * CGFloat(2.0/3.0))
		container.addSubview(self.iceBalanceLabel)
		
		self.lemonBalanceLabel = UILabel()
		self.lemonBalanceLabel.text = "x \(self.lemonBalance)"
		self.lemonBalanceLabel.textColor = UIColor.whiteColor()
		self.lemonBalanceLabel.font = UIFont(name: "MarkerFelt-Wide", size: 30)
		self.lemonBalanceLabel.sizeToFit()
		self.lemonBalanceLabel.center = CGPoint(x: container.frame.width * CGFloat(2.0/6.0), y: container.frame.height * CGFloat(2.0/3.0))
		container.addSubview(self.lemonBalanceLabel)
	}
}




