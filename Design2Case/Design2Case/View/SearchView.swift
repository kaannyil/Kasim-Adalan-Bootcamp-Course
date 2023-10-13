//
//  ViewController.swift
//  Design2Case
//
//  Created by Kaan Yıldırım on 13.10.2023.
//

import UIKit

class SearchView: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let viewModel = SearchViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.view = self
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension SearchView: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.searchItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "searchViewCell", for: indexPath) 
                as? SearchTableViewCell else {
            return UITableViewCell()
        }
        
        let searchData = viewModel.searchItems[indexPath.row]
        cell.cellConfig(searchItems: searchData)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = view.bounds.height
        return height / 13
    }
}

