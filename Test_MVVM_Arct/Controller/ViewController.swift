//
//  ViewController.swift
//  Test_MVVM_Arct
//
//  Created by shashivendra  on 02/02/22.
//

import UIKit
import SDWebImage

class ViewController: UIViewController  {
    
   let button: UIButton = UIButton()
    
   // var arrMovieVM = [MovieViewModel]()
    var viewModel = Service()
    var arrMovieVM = [ListViewModel]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true

        button.setupButtonMap()
        viewModel.vc = self
        
        view.backgroundColor = .white

        Addtableview()
        self.getData12()
        
       // setupButtonMap()
        
        //viewModel.ServiceListApi()

        Carttable.register(FirstTableViewCell.self, forCellReuseIdentifier: "FirstTableViewCell")
        Carttable.delegate = self
        Carttable.dataSource = self
    }
    
 // MARK: CheckStatus func
//
    
    // MARK: get data in bulk
    
    func getData12(){

        Service.shareInstance.getAllMovieDataINList { (list, error) in
        
        if error == nil {
             //   print(list)
            
            self.arrMovieVM = list?.map({ return ListViewModel(movie: $0) }) ?? []
                    DispatchQueue.main.async {
                        self.Carttable.reloadData()
                    }
            }
            else {
                print(error?.localizedDescription)
            }
        }
        
    }
    
    
    //MARK: get particular data
    /*
    func getData(){
        
        Service.shareInstance.getAllMovieData { (movies, error) in
            if(error==nil){
                self.arrMovieVM = movies?.map({ return MovieViewModel(movie: $0) }) ?? []
                DispatchQueue.main.async {
                    self.Carttable.reloadData()
                }
            }
        }

    }
     */
    
    
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

extension ViewController : UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrMovieVM.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Carttable.dequeueReusableCell(withIdentifier: "FirstTableViewCell", for: indexPath) as! FirstTableViewCell
        let data = arrMovieVM[indexPath.row]
        cell.lblCompleted.text = data.primaryGenreName//trackName
        cell.name.text = data.artistName
        cell.imageView?.backgroundColor = .yellow
      cell.imgImage.sd_setImage(with: URL(string:data.artworkUrl100!), placeholderImage: UIImage(named: "umbagog"))
        

        cell.orderBtn.tag = indexPath.row
        cell.orderBtn.addTarget(self, action: #selector(orderActionBtn(sender:)), for: .touchUpInside)


        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    @objc func orderActionBtn (sender:UIButton) {
        
        print("delete order")
//

        let vc =  SecondViewController ()
        self.navigationController?.pushViewController(vc, animated: true)

  
    }

    
}
