//
//  HTTPHandler.swift
//  favorite-movies-app
//
//  Created by Chad Doty on 3/14/17.
//  Copyright © 2017 DigitalLockbox. All rights reserved.
//

import Foundation

class HTTPHandler {
    static func getJson(urlString: String, completionHandler: @escaping (Data?) -> (Void)) {
        let urlString = urlString.addingPercentEncoding(withAllowedCharacters: . urlQueryAllowed)
        let url = URL(string: urlString!)
        
        print("URL being used is \(url!)")
        let session = URLSession.shared
        let task = session.dataTask(with: url!) {data, response, error in
            if let data = data {
                let httpResponse = response as! HTTPURLResponse
                let statusCode = httpResponse.statusCode
                print("request completed with code: \(statusCode)")
                if (statusCode == 200) {
                    print("return to completion handler with the data")
                    print("json returned: \(httpResponse)")
                    completionHandler(data as Data)
                }
            } else if let error = error {
                print("***There was an error making hte HTTP request***")
                print(error.localizedDescription)
                completionHandler(nil)
            }
        }
        task.resume()
    }
}
