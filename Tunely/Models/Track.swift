//
//  Track.swift
//  Flix
//
//  Created by Derek Chang on 7/13/22.
//  Copyright © 2022 Derek Chang. All rights reserved.
//

import Foundation

/// Decodable allows to parse JSON data into structs/classes
/// NOTE: No initializer needed for structs. Memberwise initializer provided.
/// see here: https://www.hackingwithswift.com/quick-start/understanding-swift/how-do-swifts-memberwise-initializers-work
///
/// NOTE: class vs. structs for Track object?
/// apple docs recommend structs here
/// see here: https://developer.apple.com/documentation/swift/choosing-between-structures-and-classes
struct Track: Decodable {
    var trackId: UInt
    var artistName: String
    var trackName: String
    var previewUrl: String
    var artworkUrl100: String
    var collectionId: UInt
    var collectionName: String
    var releaseDate: String
    var trackTimeMillis: UInt
    var trackCount: UInt
    var trackNumber: UInt
    var primaryGenreName: String
    
    func formattedReleaseDate() -> String {
        /// Convert String to Date
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let date = dateFormatter.date(from: self.releaseDate) ?? Date()
        /// Convert Date to Abbreviated String
        dateFormatter.dateStyle = .medium
        return dateFormatter.string(from: date)
    }
    
    /// Converts milliseconds to mm:ss format
    ///  ex:  208643 -> "3:28"
    ///  ex: 
    func formattedDuration() -> String {
        let (minutes, seconds) = self.trackTimeMillis.quotientAndRemainder(dividingBy: 60 * 1000)
        let truncatedSeconds = seconds / 1000
        if truncatedSeconds >= 10 {
            return "\(minutes):\(truncatedSeconds)"
        } else {
            return "\(minutes):0\(truncatedSeconds)"
        }
    }
    
    static func unqiueAlbums(from tracks: [Track]) -> [Track] {
        var seenAlbums = Set<UInt>()
        var tracksWithUnqiueAlbums = [Track]()
        for track in tracks {
            if !seenAlbums.contains(track.collectionId) {
                tracksWithUnqiueAlbums.append(track)
                seenAlbums.insert(track.collectionId)
            }
        }
        return tracksWithUnqiueAlbums
    }
}

struct MusicResults: Decodable {
    var results: [Track]
    
    /// NOTE: `codingKey` is not needed. If we want to rename the keys given by the json, then we will need it.
    /// see here: https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types
}

