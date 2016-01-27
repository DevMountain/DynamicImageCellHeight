//
//  ImageTableViewCell.swift
//  DynamicCellHeight
//
//  Created by Caleb Hicks on 1/20/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    @IBOutlet weak var viewForImage: UIImageView!
    @IBOutlet weak var imageViewHeightConstant: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateWithImage(row: Int) {
        
        let image = UIImage(named: "\(row)")
        
        self.viewForImage.image = image

        let imageWidth : CGFloat = self.contentView.frame.size.width
        let imageHeight: CGFloat = image!.size.height / image!.size.width * imageWidth
        
        imageViewHeightConstant.constant = imageHeight        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
