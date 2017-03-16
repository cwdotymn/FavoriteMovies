//
//  Movie.swift
//  favorite-movies-app
//
//  Created by Chad Doty on 3/14/17.
//  Copyright © 2017 DigitalLockbox. All rights reserved.
//

import Foundation

class Movie {
    var id: String = ""
    var title: String = ""
    var year: String = ""
    var imageUrl: String = ""
//    var plot: String = ""
    
//    init(id: String, title: String, year: String, imageUrl: String, plot: String) {
    init(id: String, title: String, year: String, imageUrl: String) {
        self.id = id
        self.title = title
        self.year = year
        self.imageUrl = imageUrl
//        self.plot = plot
    }
}
