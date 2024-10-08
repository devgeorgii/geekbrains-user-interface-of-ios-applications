//
//  GroupsListTableViewController.swift
//  VK Client
//
//  Created by Georgii Akhalaia on 26.08.24.
//

import UIKit

class GroupsListTableViewController: UITableViewController {
    
    // Список групп пользователя
    var groups = [
        Group(name: "Вконтакте", image: UIImage(named: "Vkontakte")),
        Group(name: "VK Team", image: UIImage(named: "VKTeam"))
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
        return groups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GroupsListCell", for: indexPath) as? GroupsListTableViewCell else {
            preconditionFailure("GroupsListCell Error")
        }

        // Показываем фотографию и название группы
        cell.groupProfileImage.image = groups[indexPath.row].image
        cell.groupName.text = groups[indexPath.row].name

        return cell
    }
    
    // Добавляем группу
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        // Проверяем идентификатор перехода
        if segue.identifier == "addGroup" {
            // Получаем ссылку на контроллер
            guard let groupsSearchController = segue.source as? GroupsSearchTableViewController else { return }
            // Получаем индекс выделенной ячейки
            if let indexPath = groupsSearchController.tableView.indexPathForSelectedRow {
                // Получаем группу по индексу
                let group = groupsSearchController.groupsSearch[indexPath.row]
                // Проверяем что такой группы нет в списке
                if !groups.contains(where: {$0.name == group.name}) {
                    // Добавляем группу в список групп пользователя
                    groups.append(group)
                    // Обновляем таблицу
                    tableView.reloadData()
                }
            }
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Удаляем группу из массива
            groups.remove(at: indexPath.row)
            // Удаляем строку из таблицы
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

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
