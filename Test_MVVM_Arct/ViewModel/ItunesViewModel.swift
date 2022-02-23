//
//  ItunesViewModel.swift
//  Test_MVVM_Arct
//
//  Created by shashivendra  on 04/02/22.
//

import Foundation
import UIKit

class ItunesViewModel: NSObject {
    
    var  itunesdata: feedmodel!

    init(data12:feedmodel!) {

        if data12 == nil {
            return
        }
        self.itunesdata = data12!
    }
    
    
    
   
    
}
