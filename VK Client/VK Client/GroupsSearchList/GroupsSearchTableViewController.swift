//
//  GroupsSearchTableViewController.swift
//  VK Client
//
//  Created by Georgii Akhalaia on 26.08.24.
//

import UIKit

class GroupsSearchTableViewController: UITableViewController {
    
    // Список доступных групп
    var groupsSearch = [
        Group(name: "Вконтакте", image: UIImage(named: "Vkontakte")),
        Group(name: "VK Team", image: UIImage(named: "VKTeam")),
        Group(name: "Котий", image: UIImage(named: "Kotii")),
        Group(name: "Яндекс для разработчиков", image: UIImage(named: "YandexForDevelopers")),
        Group(name: "Журнал \"Код\"", image: UIImage(named: "JournalCode")),
        Group(name: "Яндекс", image: UIImage(named: "Yandex")),
        Group(name: "VK Музыка", image: UIImage(named: "VKMusic")),
        Group(name: "Яндекс Go", image: UIImage(named: "YandexGo")),
        Group(name: "ВКонтакте для бизнеса", image: UIImage(named: "VkontakteForBusiness")),
        Group(name: "VK Мессенджер", image: UIImage(named: "VKMessenger")),
        Group(name: "Яндекс Маркет", image: UIImage(named: "YandexMarket")),
        Group(name: "OZON", image: UIImage(named: "OZON")),
        Group(name: "VK WorkSpace", image: UIImage(named: "VKWorkSpace"))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groupsSearch.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GroupsSearchListCell", for: indexPath) as? GroupsSearchTableViewCell else {
            preconditionFailure("")
        }

        // Показываем фотографию и название группы
        cell.groupProfileImage.image = groupsSearch[indexPath.row].image
        cell.groupName.text = groupsSearch[indexPath.row].name

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
