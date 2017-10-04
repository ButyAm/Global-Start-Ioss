//
//  GHTableViewController.swift
//  GlobalStartNew
//
//  Created by Muluken on 2/11/17.
//  Copyright © 2017 gcme. All rights reserved.
//

import UIKit

class GHTableViewController: UITableViewController {
   
    let ImageListGH = ["img_teenager.jpg","img_biblicalexamples.jpg","img_take_action.jpg"]
    
    let titleListGH = ["Teenagers","Biblical Examples","Take Action"]
    let contentListGh = ["God's Heart For Teenagers","Marry, David,Joseph, Samuel, Esther","So What Should I Do?"]
    let detailDescriptionGH = ["","",""]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: GHTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell_heart") as! GHTableViewCell

        cell.titleGodsHeart.text = titleListGH[indexPath.row]
        cell.contentGodsHeart.text = contentListGh[indexPath.row]
        

        return cell
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "GDDetailView") {
            
            let VC = segue.destination as! GHDetailViewController
            if let indexpath = self.tableView.indexPathForSelectedRow {
                
                let Title = titleListGH[indexpath.row] as String
                VC.SentData1 = Title
                
                let Description = contentListGh[indexpath.row] as String
                VC.SentData2 = Description
                
                let Imageview = ImageListGH[indexpath.row] as String
                VC.SentData3 = Imageview
                let detailDesc = detailDescriptionGH[indexpath.row] as String
                VC.SentData4 = detailDesc
                
            }
            
            
        }
    }
    

}
