//
//  RadioButtonTableViewCell.swift
//  UITableCollectionCells
//
//  Created by Lainel John Dela Cruz on 13/03/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import UIKit

public class RadioButtonTableViewCell: UITableViewCell {
    static let identifier: String = "RadioButtonCell"
    static let nibname:String="RadioButtonCell";
    @IBOutlet public weak var nameLabel: UILabel!
    @IBOutlet weak var radioButtonIcon: UIImageView!
    public var toggleValue:Bool=false;
    public override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.updateImage();
    }
    public override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    public func updateImage(){
        self.radioButtonIcon.image = toggleValue==true ? #imageLiteral(resourceName: "ic_radio_btn_active") : #imageLiteral(resourceName: "ic_radio_btn_disabled");
    }

}
