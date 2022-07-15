//
//  TrackCell.swift
//  Flix
//
//  Created by Derek Chang on 1/12/19.
//  Copyright © 2019 Derek Chang. All rights reserved.
//

import UIKit

class TrackCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtextLabel: UILabel!
    @IBOutlet weak var backdropImageView: UIImageView!
    
    // MARK: - Lifecycle methods (can be deleted)
    override func awakeFromNib() {
        super.awakeFromNib()
        backdropImageView.layer.cornerRadius = 5
    }
}
