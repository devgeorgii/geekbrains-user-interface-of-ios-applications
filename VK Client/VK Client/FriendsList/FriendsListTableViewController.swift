//
//  FriendsListTableViewController.swift
//  VK Client
//
//  Created by Georgii Akhalaia on 26.08.24.
//

import UIKit

class FriendsListTableViewController: UITableViewController {
    
    // Список друзей
    let friends = [
        User(name: "Иван Иванов", image: UIImage(named: "thispersondoesnotexist-1")),
        User(name: "Анна Крылова", image: UIImage(named: "thispersondoesnotexist-2")),
        User(name: "Мария Романова", image: UIImage(named: "thispersondoesnotexist-3")),
        User(name: "Ирина Попова", image: UIImage(named: "thispersondoesnotexist-4")),
        User(name: "Максим Петров", image: UIImage(named: "thispersondoesnotexist-5")),
        User(name: "Ольга Егорова", image: UIImage(named: "thispersondoesnotexist-6")),
        User(name: "Дмитрий Кузнецов", image: UIImage(named: "thispersondoesnotexist-7")),
        User(name: "Николай Смирнов", image: UIImage(named: "thispersondoesnotexist-8")),
        User(name: "Елена Васильева", image: UIImage(named: "thispersondoesnotexist-9")),
        User(name: "Михаил Волков", image: UIImage(named: "thispersondoesnotexist-10")),
        User(name: "Андрей Кириллов", image: UIImage(named: "thispersondoesnotexist-11")),
        User(name: "Анастасия Новикова", image: UIImage(named: "thispersondoesnotexist-12")),
        User(name: "София Ромашкина", image: UIImage(named: "thispersondoesnotexist-13")),
        User(name: "Вадим Соколов", image: UIImage(named: "thispersondoesnotexist-14")),
        User(name: "Кристина Федотова", image: UIImage(named: "thispersondoesnotexist-15"))
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
        return friends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsListCell", for: indexPath) as? FriendsListTableViewCell else {
            preconditionFailure("FriendsListCell Error")
        }
        
        // Показываем фотографию и имя друга
        cell.friendProfileImage.image = friends[indexPath.row].image
        cell.friendName.text = friends[indexPath.row].name

        // Configure the cell...

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowFriendProfile", let destinationViewController = segue.destination as? FriendProfileCollectionViewController, let indexPath = tableView.indexPathForSelectedRow {
            // Передаём имя как название Title для UICollectionViewController
            let friendName = friends[indexPath.row].name
            destinationViewController.title = friendName
            // Передаём фотографию друга для отображения в CollectionViewCell
            destinationViewController.friendImage = friends[indexPath.row].image
        }
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
