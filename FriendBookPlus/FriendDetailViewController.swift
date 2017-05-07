//
//  FriendDetailViewController.swift
//  FriendBookPlus
//
//  Created by Armani on 07/05/2017.
//  Copyright © 2017 Armani Cesar. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var pictureImageView: UIImageView!
    
    var friend = Friend()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.nameLabel.text = self.friend.name
        self.phoneLabel.text = self.friend.phoneNumber
        self.birthdayLabel.text = self.friend.birthday
        self.pictureImageView.image = self.friend.picture
      
    }
}
