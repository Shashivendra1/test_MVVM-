//
//  MovieViewModel.swift
//  Test_MVVM_Arct
//
//  Created by shashivendra  on 02/02/22.
//

import Foundation

import UIKit

class MovieViewModel: NSObject {

    
    var artistName: String?
    var trackName: String?
    
   // D I
    
    init(movie:MovieModel){
        self.artistName = movie.artistName
        
        self.trackName = movie.trackName
    }
    
 
    
}
