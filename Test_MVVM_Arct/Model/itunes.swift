//
//  itunes.swift
//  Test_MVVM_Arct
//
//  Created by shashivendra  on 04/02/22.
//

import Foundation

struct feedmodel: Decodable {
    var author : Author
    var updated : IDModel
    var rights : IDModel
    var title : IDModel
    var id : IDModel
    
//
//    init(author:String,updated:String,rights:String,title:String,id:String) {
//
//        self.author = author
//        self.updated = updated
//        self.rights = rights
//        self.title = title
//        self.id = id
//    }
    init(id:IDModel,author:Author,updated:IDModel,rights:IDModel,title:IDModel) {
        self.id = id
        self.author = author
        self.updated = updated
        self.rights = rights
        self.title = title
        
    }
}




struct Author: Codable {
    let name, uri: IDModel
}


// MARK: - Icon
struct IDModel: Codable {
    let label: String
}


struct itunesResults: Decodable {
    var feed : feedmodel
    init(feed:feedmodel) {
        self.feed = feed
    }
}
