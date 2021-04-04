//
//  CountriesTableViewController.swift
//  Tp2
//
//  Created by MacBook on 27/03/2021.
//  Copyright © 2021 MacBook. All rights reserved.
//

import UIKit

class CountriesTableViewController: UITableViewController {
    enum Section: Int {
        case first
        case second
        case third
        case fourth
        case fifth
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        // #warning Incomplete implementation, return the number of sections
        return countriesByContinent.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch Section(rawValue: section)! {
        case .first:
            return countriesByContinent["Afrique"]!.count
        case .second:
            return countriesByContinent["Oceany"]!.count
        case .third:
            return countriesByContinent["Europ"]!.count
            
        case .fourth:
            return countriesByContinent["Asia"]!.count
        case .fifth:
            return countriesByContinent["America"]!.count
            
        }
       
        
        
        // #warning Incomplete implementation, return the number of rows
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
        switch Section(rawValue: indexPath.section)! {
        case .first:
            let country = countriesByContinent["Afrique"]![indexPath.row]
            cell.textLabel?.text = country.name
            cell.detailTextLabel?.text = country.isoCode
            cell.imageView?.image = UIImage(named: country.isoCode)
            return cell
        
        case .second:
            let country = countriesByContinent["Oceany"]![indexPath.row]
            cell.textLabel?.text = country.name
            cell.detailTextLabel?.text = country.isoCode
            cell.imageView?.image = UIImage(named: country.isoCode)
            return cell
        case .third:
            let country = countriesByContinent["Europ"]![indexPath.row]
            cell.textLabel?.text = country.name
            cell.detailTextLabel?.text = country.isoCode
            cell.imageView?.image = UIImage(named: country.isoCode)
            return cell
            
        case .fourth:
            let country = countriesByContinent["Asia"]![indexPath.row]
            cell.textLabel?.text = country.name
            cell.detailTextLabel?.text = country.isoCode
            cell.imageView?.image = UIImage(named: country.isoCode)
            return cell
        case .fifth:
            let country = countriesByContinent["America"]![indexPath.row]
            cell.textLabel?.text = country.name
            cell.detailTextLabel?.text = country.isoCode
            cell.imageView?.image = UIImage(named: country.isoCode)
            return cell
            
        }
       
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       let continents = ["Afrique","Oceany","Europ","Asia","America"]
        return "\(continents[section])"
    }
    
  

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
