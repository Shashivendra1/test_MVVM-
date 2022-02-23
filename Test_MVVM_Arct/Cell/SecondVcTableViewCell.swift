//
//  SecondVcTableViewCell.swift
//  Test_MVVM_Arct
//
//  Created by shashivendra  on 04/02/22.
//

import UIKit

class SecondVcTableViewCell: UITableViewCell {

    var name = UILabel()
    var price = UILabel()
    var imgImage = UIImageView()
    var orderBtn = UIButton()
    var lblCompleted = UILabel()
    
//    var modelUser : User_Model?{
//        didSet{
//            configuration()
//        }
//    }
//
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
       contentView.addSubview(price)
        contentView.addSubview(imgImage)
        contentView.addSubview(name)

       contentView.addSubview(orderBtn)
        contentView.addSubview(lblCompleted)

        orderBtn.setTitle("Your Order", for: .normal)
        orderBtn.backgroundColor = .black
        
        name.translatesAutoresizingMaskIntoConstraints = false
        price.translatesAutoresizingMaskIntoConstraints = false
        imgImage.translatesAutoresizingMaskIntoConstraints = false
        orderBtn.translatesAutoresizingMaskIntoConstraints = false
        lblCompleted.translatesAutoresizingMaskIntoConstraints = false
        orderBtn.layer.cornerRadius = 5
        imgImage.layer.cornerRadius = 25
        imgImage.clipsToBounds = true
        price.numberOfLines = 2

        
        NSLayoutConstraint.activate([imgImage.leadingAnchor.constraint(equalTo:contentView.leadingAnchor, constant: 2),imgImage.widthAnchor.constraint(equalToConstant: 50),imgImage.heightAnchor.constraint(equalToConstant: 50),imgImage.centerYAnchor.constraint(equalTo:contentView.centerYAnchor)])
        
        // Add name label
        NSLayoutConstraint.activate([name.leadingAnchor.constraint(equalTo:imgImage.trailingAnchor, constant: 5),name.topAnchor.constraint(equalTo:contentView.topAnchor, constant: 5),name.heightAnchor.constraint(equalToConstant: 30),name.trailingAnchor.constraint(equalTo:contentView.trailingAnchor,constant: -10)])//,name.widthAnchor.constraint(equalTo:contentView.widthAnchor,constant:-10)])
        
//        // add price label

        
        
        NSLayoutConstraint.activate([price.leadingAnchor.constraint(equalTo:imgImage.trailingAnchor, constant: 5),price.topAnchor.constraint(equalTo:name.bottomAnchor, constant: 5),price.trailingAnchor.constraint(equalTo:orderBtn.leadingAnchor, constant:-5)])

        
        // add lbl completd
        NSLayoutConstraint.activate([lblCompleted.leadingAnchor.constraint(equalTo:imgImage.trailingAnchor, constant: 5),lblCompleted.topAnchor.constraint(equalTo:price.bottomAnchor, constant: 5),lblCompleted.heightAnchor.constraint(equalToConstant: 30),lblCompleted.trailingAnchor.constraint(equalTo:contentView.trailingAnchor,constant: -10)])
        
        // Add Order btn
        NSLayoutConstraint.activate([orderBtn.trailingAnchor.constraint(equalTo:contentView.trailingAnchor, constant: -5),orderBtn.centerYAnchor.constraint(equalTo:contentView.centerYAnchor),orderBtn.heightAnchor.constraint(equalToConstant: 40),orderBtn.widthAnchor.constraint(equalToConstant: 100),])
        
 
        
    }

//    func configuration () {
//
//        name.text = String((modelUser?.id!)!)
//        price.text = modelUser?.title
//        let  status = modelUser!.getStatusAndColor()
//        lblCompleted.text = status.0
//      //  backgroundColor = status.1
//
//
//        orderBtn.isHidden = false
//        imgImage.image = UIImage(named: "umbagog")
//        imgImage.contentMode = .scaleAspectFill
//        imgImage.clipsToBounds = true
//    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
