//
//  TableViewController.swift
//  4thclass
//
//  Created by Sharleen Price on 2/19/18.
//  Copyright © 2018 Sharleen Price. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController
{
    
    let feedCellIdentifier = "feedCall"
    let defaultCellIdentifier = "defaultCell"
    var rows: Int = 0
    var sections: Int = 0
    var data = [Int]()
    
    func fibonacci(_ n: Int) -> Int
    {
        if (n<=1)
        {
            return n
        }
        else
        {
            return (fibonacci(n-1) + fibonacci(n-2))
        }
    }
    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: defaultCellIdentifier)
        self.tableView.register(UINib(nibName: feedCellIdentifier, bundle: nil), forCellReuseIdentifier: feedCellIdentifier)
        
        //load first 20 fib numbers into array data
        for i in 1..<21
        {
            data.append(fibonacci(i))
        }
        
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return data.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell : UITableViewCell
        cell = tableView.dequeueReusableCell(withIdentifier: defaultCellIdentifier, for: indexPath)
        cell.textLabel?.text = String(data[indexPath.row])
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
    {
        
        if (indexPath.row+1 == data.count)
        {
            var nextRow = indexPath.row
            for _ in 1..<11
            {
                let nextSum = data[nextRow-1] + data[nextRow]
                data.append(nextSum)
                nextRow = nextRow+1
            }
            tableView.reloadData()
        }
        
        
    }
    
    
}

