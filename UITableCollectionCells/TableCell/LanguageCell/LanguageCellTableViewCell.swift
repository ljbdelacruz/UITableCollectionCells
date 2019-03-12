//
//  LanguageCellTableViewCell.swift
//  UITableCollectionCells
//
//  Created by Lainel John Dela Cruz on 13/03/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import UIKit

class LanguageCellTableViewCell: UITableViewCell {

    public static let identifier = "LanguageTableViewCell"
    public static let nibname:String="LanguageCell";
    
    public var index:Int=0;
    @IBOutlet public weak var UILangLabel: UILabel!
    @IBOutlet public weak var UIFlagImage: UIImageView!
    @IBOutlet public weak var UICheckedMark: UILabel!
    public override func awakeFromNib(){
        super.awakeFromNib()
        self.Deselect();
        
    }
    public override func setSelected(_ selected: Bool, animated: Bool){
        super.setSelected(selected, animated: animated)
    }
    public func ToggleCheckMark(index:Int){
        if self.index == index{
            self.UICheckedMark.isHidden = false;
        }else{
            self.UICheckedMark.isHidden=true;
        }
    }
    public func Deselect(){
        self.UICheckedMark.isHidden=true;
    }

}
