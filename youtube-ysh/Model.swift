//
//  Model.swift
//  youtube-ysh
//
//  Created by Yusuf Ahmet Nihat  Hekimoğlu on 2022-10-19.
//

import Foundation
class Model{
    func getVideos(){
        //create url object
        let url = URL(string: Constants.API_URL)
        guard url != nil else{
            return
        }
        
        //get url sesssion object
        let session = URLSession.shared
        //get a dataTask from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            if error != nil || data == nil {
                return
            }
            do {
                //Parsing the data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                dump(response)
            }catch {
                
            }
            
        }
        // Kickoff the task
        dataTask.resume()
    }
    
}
