//
//  ListViewModel.swift
//  Test_MVVM_Arct
//
//  Created by shashivendra  on 02/02/22.
//

import Foundation
import UIKit

class ListViewModel: NSObject {
    
    var wrapperType : String?
    var kind : String?
    var artistId : Int?
    var collectionId : Int?
    var trackId : Int?
    var artistName : String?
    var collectionName : String?
    var trackName : String?
    var collectionCensoredName : String?
    var trackCensoredName : String?
    var artistViewUrl : String?
    var collectionViewUrl : String?
    var trackViewUrl : String?
    var previewUrl : String?
    var artworkUrl30 : String?
    var artworkUrl60 : String?
    var artworkUrl100 : String?
    var collectionPrice : Double?
    var trackPrice : Double?
    var releaseDate : String?
    var collectionExplicitness : String?
    var trackExplicitness : String?
    var discCount : Int?
    var discNumber : Int?
    var trackCount : Int?
    var trackNumber : Int?
    var trackTimeMillis : Int?
    var country : String?
    var currency : String?
    var primaryGenreName : String?
    var isStreamable : Bool?
    
    
   // Dependency Injection
    
    init(movie:Results){
        
        self.artistName = movie.artistName
        self.trackName = movie.trackName
        self.artworkUrl100 = movie.artworkUrl100
        
        
        let x = movie.primaryGenreName
        if x == "Dance" {
            self.primaryGenreName = "true value getting"
           // print("true value getting")
        }
        else{
            self.primaryGenreName = "is streamble is false"
         //   print("is streamble is false")
        }
        
        
    }
    

}

