//
//  WebServices.swift
//  Flix
//
//  Created by Derek Chang on 7/7/22.
//  Copyright © 2022 Derek Chang. All rights reserved.
//

import Foundation

class WebServices {
    static func loadTracks(completionHandler: @escaping ([Track]?, Error?) -> Void) {
        Network.loadJSONFile(from: "jack_johnson_200", type: MusicResults.self) { tracks, error in
            guard error == nil else {
              completionHandler(nil, error)
              return
            }
            completionHandler(tracks?.results, nil)
        }
    }
}
