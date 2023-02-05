//
//  ViewController.swift
//  Odev_TO-DO
//
//  Created by Muhsin Can Yılmaz on 3.02.2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: HomeViewToPresenter?
    
    var toDos: [ToDo] = [] {
        didSet{
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        HomeRouter.createModule(ref: self)
        copyDatabase()
        setUpVC()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        presenter?.sendData()
    }
    
    fileprivate func setUpVC() {
        presenter?.sendData()
        
        searchBar.backgroundImage = UIImage()
        tableView.rowHeight = 60
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 100, bottom: 0, right: 100)
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
    }

    func copyDatabase(){
        let bundleYolu = Bundle.main.path(forResource: "todo", ofType: ".sqlite")
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let fileManager = FileManager.default
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("todo.sqlite")
        
        if fileManager.fileExists(atPath: kopyalanacakYer.path) {
        }else{
            do {
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
            }catch{
                print(error)
            }
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toUpdate"{
            if let row = sender as? Int {
                let destinationVC = segue.destination as! UpdateViewController
                destinationVC.toDo = toDos[row]
            }
        }
    }
}

extension HomeViewController: HomePresenterToView{
    func transportData(list: [ToDo]) {
        toDos = list
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        toDos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellToDo
        
        let todo = toDos[indexPath.row]
        cell.label.text = "\(indexPath.row + 1). \(todo.name!)"
        
        let perLevel:CGFloat = CGFloat(1.0) / CGFloat(15)
        cell.backgroundColor = UIColor.init(red: 76 / 255.0, green: 215/255.0, blue: 155/255.0, alpha: (perLevel + CGFloat(indexPath.row) * perLevel))
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "toUpdate", sender: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { action, view, completion in
            let todo = self.toDos[indexPath.row]
//            Tododao().deleteData(id: "\(todo.id!)")
            self.presenter?.deleteData(id: todo.id!)
            self.presenter?.sendData()
        }
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
    
}

extension HomeViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        presenter?.searchData(with: searchText)
    }
}

