//
//  SecondTableViewCell.swift
//  ForwardDataUsingStructTwentyFourPractical
//
//  Created by Mac on 22/04/23.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var idLabel: UILabel!
    
    @IBOutlet weak var salaryLabel: UILabel!
    
    
    @IBAction func BACK(_ sender: Any)
    {
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
