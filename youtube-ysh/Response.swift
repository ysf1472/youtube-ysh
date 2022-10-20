//
//  Response.swift
//  youtube-ysh
//
//  Created by Yusuf Ahmet Nihat  Hekimoğlu on 2022-10-19.
//

import Foundation
struct Response : Decodable {
    var items:[Video]?
    enum CodingKeys: String , CodingKey{
        case items
    }
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.items = try container.decodeIfPresent([Video].self, forKey: .items)
    }
}
