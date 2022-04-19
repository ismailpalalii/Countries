//
//  HomeTableViewCell.swift
//  Countries
//
//  Created by ismail palali on 19.04.2022.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var buttonTapped: UIButton!
  
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 5
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
  
    @IBAction func saveButtonTapped(_ sender: UIButton) {
    }
    
}
