//
//  tableMain.swift
//  PhotoGallery
//
//  Created by avishek on 29/10/23.
//

import UIKit

class tableMain: UIViewController {
    
    
    @IBOutlet weak var myTable: UITableView!
    
    var cam = ["cam01", "cam02", "cam03", "cam04", "cam05", "cam06", "cam07"]
    
    var camImg = [UIImage(named: "cam01"), UIImage(named: "cam02"), UIImage(named: "cam03")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension tableMain:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cam.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = cam[indexPath.row]
        //cell.imageView?.image = camImg[indexPath.row]
        
        return cell
    }
    
    
}