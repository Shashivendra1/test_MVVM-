//
//  SecondViewController.swift
//  Test_MVVM_Arct
//
//  Created by shashivendra  on 04/02/22.
//

import UIKit

class SecondViewController: UIViewController {


    var sectionList = [ItunesViewModel]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true


    
        
        view.backgroundColor = .white

        Addtableview()
            getData()
        Carttable.register(FirstTableViewCell.self, forCellReuseIdentifier: "FirstTableViewCell")
        Carttable.delegate = self
        Carttable.dataSource = self
    }
    
 // MARK: CheckStatus func
    
    
    func getData() {
        Service.shareInstance.ServiceListApi { (list, error) in
            if error == nil {
         //  print(list)
                self.sectionList = (list?.map({ return ItunesViewModel(data12: $0) } ))!
                self.Carttable.reloadData()
            }
            else{
                print(error?.localizedDescription)
            }
        }
    }


    
    
    func Addtableview () {
        view.addSubview(Carttable)
        Carttable.topAnchor.constraint(equalTo:view.topAnchor, constant: 20).isActive = true
        Carttable.widthAnchor.constraint(equalTo:view.widthAnchor).isActive = true
        Carttable.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
  
    }

        
        let Carttable : UITableView = {
            let table = UITableView()
            table.translatesAutoresizingMaskIntoConstraints = false
            table.separatorColor = .gray
        
            return table
        }()
    

    
    
    }

extension SecondViewController : UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(sectionList.count)
        return sectionList.count//10
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Carttable.dequeueReusableCell(withIdentifier: "FirstTableViewCell", for: indexPath) as! FirstTableViewCell
        let data = sectionList[indexPath.row]
      //  cell.lblCompleted.text = data.
//        cell.name.text = data.artistName
//        cell.imageView?.backgroundColor = .yellow
        cell.orderBtn.isHidden = true // hide order btn
//        cell.imgImage.sd_setImage(with: URL(string:data.artworkUrl100!), placeholderImage: UIImage(named: "umbagog"))
        cell.imgImage.image = UIImage(named: "umbagog")
        
      

//        let modelUser = viewModelUser.arrayUsers[indexPath.row]
//        cell.modelUser = modelUser
//        cell.orderBtn.tag = indexPath.row
//        cell.orderBtn.addTarget(self, action: #selector(orderActionBtn(sender:)), for: .touchUpInside)


        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    
}

