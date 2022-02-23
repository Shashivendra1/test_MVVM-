//
//  MovieModel.swift
//  Test_MVVM_Arct
//
//  Created by shashivendra  on 02/02/22.
//

import Foundation


import UIKit

struct MovieModel: Decodable {
    var artistName: String?
    var trackName: String?

    init(artistName:String, trackName: String){
        self.artistName = artistName
        self.trackName = trackName
    }
}


struct ResultsModel: Decodable {

    var results = [MovieModel]()
    var resultCount:Int?
    
    init(results: [MovieModel],resultCount:Int) {
        self.results = results
        self.resultCount = resultCount
    }



}

