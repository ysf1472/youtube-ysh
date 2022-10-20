//
//  Video.swift
//  youtube-ysh
//
//  Created by Yusuf Ahmet Nihat  Hekimoğlu on 2022-10-19.
//

import Foundation
struct Video : Decodable {
    var videoId = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date()
    enum CodingKeys: String, CodingKey{
        case snippet
        case thumbnails
        case high
        case resourceId
        case published = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoId
       
    }
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        // Parse Title
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        // Parse description
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        // Parse published date
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        //parse thumbnail
        let thumbnailsContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        let highContainer = try thumbnailsContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        //Parse VideoID
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        self.videoId = try resourceIdContainer.decode(String.self, forKey: .videoId)
        
    }
}
