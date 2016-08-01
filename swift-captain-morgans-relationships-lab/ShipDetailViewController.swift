//
//  ShipDetailViewController.swift
//  swift-captain-morgans-relationships-lab
//
//  Created by David Park on 7/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ShipDetailViewController: UIViewController {
	
	@IBOutlet weak var shipNameLabel: UILabel!
	@IBOutlet weak var pirateNameLabel: UILabel!
	@IBOutlet weak var propulsionTypeLabel: UILabel!
	
	var ship: Ship?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		shipNameLabel.text = ship.name
		pirateNameLabel.text = ship.pirate?.name
		propulsionTypeLabel.text = ship.engine?.propulsionType
	}

}
