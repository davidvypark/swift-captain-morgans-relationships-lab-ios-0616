//
//  ShipsViewController.swift
//  swift-captain-morgans-relationships-lab
//
//  Created by David Park on 7/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ShipsViewController: UITableViewController {
	
	var pirate: Pirate!
	var shipsArray = [Ship]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		if let ships = pirate.ships {
			for ship in ships {
				shipsArray.append(ship)
			}
		}
		
	}
	
	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return shipsArray.count
	}
	
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("shipCell", forIndexPath: indexPath)
		
		cell.textLabel!.text = shipsArray[indexPath.row].name
		
		return cell
	}
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		let selectedShip = shipsArray[tableView.indexPathForSelectedRow!.row]
		let destinationVC = segue.destinationViewController as! ShipDetailViewController
		
		destinationVC.ship = selectedShip
	}
}
