//
//  Design1CollectionViewCell.swift
//  UITableCollectionCells
//
//  Created by Lainel John Dela Cruz on 13/03/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import UIKit

public enum AnimationDirection{
    case left;
    case right;
}

public class Design1CollectionViewCell: UICollectionViewCell {
    public static var Identifier:String="CollectionDesign1";
    public static var nibname:String="CollectionDesign1";
    
    @IBOutlet weak var CollectionCellImage: UIImageView!
    @IBOutlet weak var CollectionLabel: UILabel!
    public var duration:TimeInterval=0.5;
    public var animationDirection:AnimationDirection = .left;

    public override func awakeFromNib() {
        self.myinit(animDir: .left);
    }
    public func myinit(animDir:AnimationDirection){
        self.animationDirection=animDir;
        self.alpha=0;
        self.setPosition(value: animDir == .left ? +130 : -130);
    }
    public func show(){
        UIView.animate(withDuration: duration, animations: {
            self.setPosition(value: self.animationDirection == .left ? -130 : +130);
            self.alpha=1;
        })
    }
    public func hide(){
        UIView.animate(withDuration: duration, animations: {
            self.setPosition(value: self.animationDirection == .left ? +130 : -130)
            self.alpha=0;
        })
    }
    private func setPosition(value:CGFloat){
        self.frame.origin.x = self.frame.origin.x - value;
    }
    
}
