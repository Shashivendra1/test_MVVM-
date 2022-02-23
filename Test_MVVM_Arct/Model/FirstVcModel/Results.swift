/* 
Copyright (c) 2022 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
import UIKit
//
struct Results: Decodable {

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

    init(wrapperType:String, kind: String,artistId:Int, collectionId: Int,trackId:Int, collectionName: String,collectionCensoredName:String, trackName: String,trackCensoredName:String, artistViewUrl: String,collectionViewUrl:String, trackViewUrl: String,previewUrl:String, artworkUrl30: String,artworkUrl60:String, artworkUrl100: String,collectionPrice:Int, collectionExplicitness: String,releaseDate:String, trackExplicitness: String,discCount:Int, discNumber: Int,artistName:String, trackCount: Int,trackNumber:Int, trackTimeMillis: Int,country:String, currency: String,primaryGenreName:String, isStreamable: Bool){
        self.wrapperType = wrapperType
        self.kind = kind
        self.artistId = artistId
        self.collectionId = collectionId
        self.trackId = trackId
        self.artistName = artistName
        self.collectionName = collectionName
        self.trackName = trackName
        self.collectionCensoredName = collectionCensoredName
        self.trackCensoredName = trackCensoredName
        self.artistViewUrl = artistViewUrl
        self.collectionViewUrl = collectionViewUrl
        self.trackViewUrl = trackViewUrl
        self.previewUrl = previewUrl
        self.artworkUrl30 = artworkUrl30
        self.artworkUrl60 = artworkUrl60
        self.artworkUrl100 = artworkUrl100
        self.collectionPrice = Double(collectionPrice)
        self.collectionExplicitness = collectionExplicitness
        self.trackExplicitness = trackExplicitness
        self.discCount = discCount
        self.discNumber = discNumber
        self.trackCount = trackCount
        self.trackNumber = trackNumber
        self.trackTimeMillis = trackTimeMillis
        self.primaryGenreName = primaryGenreName
        self.currency = currency
        self.isStreamable = isStreamable
        self.country = country

    }

}



class ResultsModel1: Decodable {

    var results = [Results]() // array name

    init(results: [Results]) {
        self.results = results
    }



}


//class Results: Decodable {
//    var artistName: String?
//    var trackName: String?
//
//    init(artistName:String, trackName: String){
//        self.artistName = artistName
//        self.trackName = trackName
//    }
//}
//
//
//class ResultsModel12: Decodable {
//
//    var results = [Results]()
//
//    init(results: [Results]) {
//        self.results = results
//    }
//
//
//
//}
