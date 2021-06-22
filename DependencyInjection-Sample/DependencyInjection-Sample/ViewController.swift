//
//  ViewController.swift
//  DependencyInjection-Sample
//
//  Created by Kazunori Aoki on 2021/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    // Constructor Dependency Injection
    @IBOutlet weak var tableView: UITableView!
    
    var data = [EmailAccount]()
    var someService: SomeService?

    /* コードでViewを生成する場合 */
//    init(someService: SomeService) {
//        self.someService = someService
//        super.init(nibName: nil, bundle: nil)
//        view.backgroundColor = .red
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // property injection
        someService?.doStuff()
        
        // Polymorphism
        tableView.dataSource = self
        data = models()
        
        //
        let computer = Computer(operatingSystem: "macOS")
        let programmer = Programmer(programmingLanguage: .swift, name: "Code Pro", computerUsed: computer)
        let catchPrase = programmer.cathcPharase()
        print(catchPrase)
        print(programmer.name)
        print(programmer.computerUsed.printOperatingSystem())
    }
    
    func models() -> [EmailAccount] {
        return [Gmail(), Yahoo(), Outlook()]
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let account = data[indexPath.row]
        cell.textLabel?.text = account.domain
        return cell
    }
}
