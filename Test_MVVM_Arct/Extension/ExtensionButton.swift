//
//  ExtensionButton.swift
//  Test_MVVM_Arct
//
//  Created by shashivendra  on 16/02/22.
//

import Foundation
import UIKit

extension UIButton {
    func setupButtonMap(){
        let mapButton = UIButton(type: .system)
        mapButton.setImage(#imageLiteral(resourceName: "icon_pulse-1").withRenderingMode(.alwaysOriginal), for: .normal)
        mapButton.frame = CGRect(x:100, y: 100, width: 100, height: 100)
        mapButton.contentMode = .scaleAspectFit
        mapButton.backgroundColor = UIColor.red
        mapButton.addTarget(self, action: #selector(btnOpenMap(_:)), for: .touchUpInside)
        }
    @objc func btnOpenMap(_ sender: Any?) {
        print("Successful")
    }
}
