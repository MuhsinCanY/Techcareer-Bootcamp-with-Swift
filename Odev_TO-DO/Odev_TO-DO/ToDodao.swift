//
//  ToDosdao.swift
//  Odev_TO-DO
//
//  Created by Muhsin Can Yılmaz on 3.02.2023.
//

import Foundation

final class Tododao{
    
    var db: FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("todo.sqlite")
        
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func updateData(id: Int, name: String){
        db?.open()
        do {
            try db?.executeUpdate("UPDATE toDos SET name = ? WHERE id = ?", values: [name, id])
        } catch  {
            print(error.localizedDescription)
        }
        db?.close()
    }
    
    func insertData(name: String){
        db?.open()
        do {
            try db?.executeUpdate("INSERT INTO toDos (name) VALUES (?)", values: [name])
        } catch  {
            print(error.localizedDescription)
        }
        db?.close()
    }
    
    func deleteData(id: String){
        db?.open()
        do {
            try db?.executeUpdate("DELETE FROM toDos WHERE id = ?", values: [id])
        } catch  {
            print(error.localizedDescription)
        }
        db?.close()
    }
    
    func passAllData() -> [ToDo]{
        var list = [ToDo]()
        
        db?.open()
        do {
            let rs = try db!.executeQuery("SELECT * FROM toDos", values: nil)
            
            while rs.next(){
                let toDo = ToDo(
                    id: Int(rs.string(forColumn: "id"))!,
                    name: rs.string(forColumn: "name")
                )
                list.append(toDo)
            }
        } catch  {
            print(error.localizedDescription)
        }
        db?.close()
        
        return list
    }
    
    func searchData(with name: String) -> [ToDo]{
        var list = [ToDo]()
        
        db?.open()
        do {
            let rs = try db!.executeQuery("SELECT * FROM toDos WHERE name like '%\(name)%'", values: nil)
            
            while rs.next(){
                let toDo = ToDo(
                    id: Int(rs.string(forColumn: "id"))!,
                    name: rs.string(forColumn: "name")
                )
                list.append(toDo)
            }
        } catch  {
            print(error.localizedDescription)
        }
        db?.close()
        
        return list
    }

}
