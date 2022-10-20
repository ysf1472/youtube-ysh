//
//  Constants.swift
//  youtube-ysh
//
//  Created by Yusuf Ahmet Nihat  Hekimoğlu on 2022-10-19.
//

import Foundation
struct Constants {
    static var API_KEY = "AIzaSyDfCiOh9V56ISjHUNkI7g0AFPd7044P-ts"
    static var PLAYLIST_ID = "PLMRqhzcHGw1aLoz4pM_Mg2TewmJcMg9ua"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
