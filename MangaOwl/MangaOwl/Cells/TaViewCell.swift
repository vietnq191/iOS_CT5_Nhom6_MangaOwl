//
//  TaViewCell.swift
//  MangaOwl
//
//  Created by Trần Đức on 12/05/2022.
//  Copyright © 2022 fit.tdc. All rights reserved.
//

import UIKit

class TaViewCell: UITableViewCell {
    
    @IBOutlet weak var mangaView: UILabel!
    @IBOutlet weak var mangaName: UILabel!
    @IBOutlet weak var mangaImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
