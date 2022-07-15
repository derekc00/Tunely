//
//  TrackDetailsViewController.swift
//  Flix
//
//  Created by Derek Chang on 1/27/19.
//  Copyright © 2019 Derek Chang. All rights reserved.
//

import UIKit
import Nuke

class TrackDetailViewController: UIViewController {

    @IBOutlet weak var backdropImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    
    var track: Track?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backdropImageView.layer.masksToBounds = true
        backdropImageView.layer.cornerRadius = 5
        
        if let track = track {
            titleLabel.text = track.trackName
            artistLabel.text = track.artistName
            albumLabel.text = track.collectionName
            genreLabel.text = track.primaryGenreName
            releaseDateLabel.text = track.formattedReleaseDate()
            durationLabel.text = track.formattedDuration()
        }
        // place image in the backdrop
        if let backdropURL = URL(string: track!.artworkUrl100)
        {
            Nuke.loadImage(with: backdropURL, into: backdropImageView)
        }
        
    }
}
