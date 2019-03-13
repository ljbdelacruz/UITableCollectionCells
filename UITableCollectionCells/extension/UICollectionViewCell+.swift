//
//  UICollectionViewCell+.swift
//  UITableCollectionCells
//
//  Created by Lainel John Dela Cruz on 13/03/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import Foundation


extension UICollectionView{
    func registerCustomCell(nibname: String, cellidentifier:String) {
        let nib = UINib(nibName: nibname, bundle: nil)
        self.registerCustomCell(nibname: nibname, cellidentifier: cellidentifier);
    }
}
