//
//  TableViewController.swift
//  AliceFinalProject
//
//  Created by Soft Dev Student on 1/16/19.
//  Copyright © 2019 Alice Zhong. All rights reserved.
//

import Foundation
import UIKit

class ListTableViewController: UITableViewController {
    var lists: [List] {
        
        let firstListOneItem = ListItem(itemName: "apple")
        let secondListOneItem = ListItem(itemName: "banana")
        let thirdListOneItem = ListItem(itemName: "cherry")
        let listOne = List(listName: "fruit list", listItem: [firstListOneItem, secondListOneItem, thirdListOneItem])
        
        let firstListTwoItem = ListItem(itemName: "bean")
        let secondListTwoItem = ListItem(itemName: "cabbage")
        let thirdListTwoItem = ListItem(itemName: "eggplant")
        let listTwo = List(listName: "vegetable list", listItem: [firstListTwoItem, secondListTwoItem, thirdListTwoItem])
        
        let firstListThreeItem = ListItem(itemName: "cornflower")
        let secondListThreeItem = ListItem(itemName: "lavender")
        let thirdListThreeItem = ListItem(itemName: "orchid")
        let listThree = List(listName: "flower list", listItem: [firstListThreeItem, secondListThreeItem, thirdListThreeItem])
        
        return [listOne, listTwo, listThree]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return lists.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists[section].listItem.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "listItemCell", for: indexPath)
        
        let list = lists[indexPath.section]
        let listItem = list.listItem[indexPath.row]
        
        cell.textLabel?.text = listItem.itemName
        cell.detailTextLabel?.text = listItem.itemName
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return lists[section].listName
    }
}

