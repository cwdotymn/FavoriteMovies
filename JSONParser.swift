//
//  JSONParser.swift
//  favorite-movies-app
//
//  Created by Chad Doty on 3/15/17.
//  Copyright © 2017 DigitalLockbox. All rights reserved.
//

import Foundation

class JSONParser {
    static func parse (data: Data) -> [String: AnyObject]? {
        let options = JSONSerialization.ReadingOptions()
        do {
            print("we got some json")
            let json = try JSONSerialization.jsonObject(with: data, options: options)
            as? [String: AnyObject]
            print(json)
            
            return json!
        } catch (let parseError){
            print("There was an error parsing the JSON: \"\(parseError.localizedDescription)\"")
        }
        return nil
    }
}
