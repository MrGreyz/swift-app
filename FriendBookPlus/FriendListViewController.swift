//
//  ViewController.swift
//  FriendBookPlus
//
//  Created by Armani on 07/05/2017.
//  Copyright © 2017 Armani Cesar. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var friends = [Friend]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Run our createFriends Function here!
        createFriends()
        
        //Has to know where to look for information
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func createFriends() {
        //["Taz" , "George", "Denis", "Deep"]
        let taz = Friend()
        taz.name = "Taz"
        taz.birthday = "June 6th"
        taz.phoneNumber = "0928-292-2921"
        taz.picture = UIImage(named: "9e397997d5146858556f2be13e32fcfa")!
        self.friends.append(taz)
        
        let george = Friend()
        george.name = "George"
        george.birthday = "September 6th"
        george.phoneNumber = "0928-992-2001"
        george.picture = UIImage(named: "387e2969b17db678680a6398b8c710eb-1")!
        self.friends.append(george)
        
        let denis = Friend()
        denis.name = "Denis"
        denis.birthday = "January 6th"
        denis.phoneNumber = "0828-293-111"
        denis.picture = UIImage(named: "8a895f9af4face74cd0cd7167c2085e3")!
        self.friends.append(denis)
        
        let deep = Friend()
        deep.name = "Deep"
        deep.birthday = "April 6th"
        deep.phoneNumber = "0828-293-111"
        deep.picture = UIImage(named: "14372381_595241397329506_2434312229850776824_o")!
        self.friends.append(deep)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.friends.count
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //These are used to populate the cells
        let cell = UITableViewCell()
        let friend = self.friends[indexPath.row]
        cell.textLabel!.text = friend.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //When user has selected from tableview
        tableView.deselectRow(at: indexPath, animated: true)
        let friend = self.friends[indexPath.row]
        self.performSegue(withIdentifier: "detailSegue", sender: friend) //Send friend passed 
    }
    
    //This function will send information to the next page via the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! FriendDetailViewController
        detailVC.friend = sender as! Friend
    }
}

