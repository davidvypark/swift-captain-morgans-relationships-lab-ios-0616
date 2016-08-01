//
//  PiratesViewController.swift
//  swift-captain-morgans-relationships-lab
//
//  Created by David Park on 7/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class PiratesViewController: UITableViewController {
	
	let store = DataStore.sharedInstance
	var piratesArray = [Pirate]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		store.fetchData()
		piratesArray = store.pirates
		tableView.reloadData()

	}

	
	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return piratesArray.count
	}
	
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("pirateCell", forIndexPath: indexPath)
		
		cell.textLabel!.text = piratesArray[indexPath.row].name
		
		return cell
	}
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if segue.identifier == "shipsSegue" {
			let selectedRow = tableView.indexPathForSelectedRow?.row
			let selectedPirate = piratesArray[selectedRow!]
			let destinationVC = segue.destinationViewController as! ShipsViewController
			destinationVC.pirate = selectedPirate
		}
	}



}
