//
//  ViewController.swift
//  calculate
//
//  Created by 20141105074 on 16/6/27.
//  Copyright © 2016年 20141105074. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var z: UITextField!
    var flag=0
    var temp:Double=0
    var x:Double=0
    var judgepoint:Bool=false;
    
    @IBAction func one(sender: AnyObject) {
        z.text=z.text!+"1"

    }
    @IBAction func two(sender: AnyObject) {
        z.text=z.text!+"2"

    }
    @IBAction func three(sender: AnyObject) {
        z.text=z.text!+"3"

    }
    @IBAction func four(sender: AnyObject) {
        z.text=z.text!+"4"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func five(sender: AnyObject) {
        z.text=z.text!+"5"
    }
    @IBAction func six(sender: AnyObject) {
        z.text=z.text!+"6"
    }
    @IBAction func seven(sender: AnyObject) {
        z.text=z.text!+"7"
    }
    @IBAction func eight(sender: AnyObject) {
        z.text=z.text!+"8"
    }
    @IBAction func nine(sender: AnyObject) {
        z.text=z.text!+"9"
    }
    @IBAction func zero(sender: AnyObject) {
        z.text=z.text!+"0"
    }
    @IBAction func add(sender: AnyObject) {
        if flag==0{
            temp=(Double)(z.text!)!
            z.text=""
            judgepoint = false
        }
        flag=1
    }
    @IBAction func jian(sender: AnyObject) {
        if flag==0{
            temp=(Double)(z.text!)!
            z.text=""
            judgepoint = false
        }
        flag=2
    }
    @IBAction func cheng(sender: AnyObject) {
        if flag==0{
            temp=(Double)(z.text!)!
            z.text=""
            judgepoint = false
        }
        flag=3
    }
    @IBAction func chufa(sender: AnyObject) {
        if flag==0{
            temp=(Double)(z.text!)!
            z.text=""
            judgepoint = false
        }
        flag=4
    }
    @IBAction func dian(sender: AnyObject) {
        if(judgepoint == false){
            z.text=z.text!+"."
            judgepoint = true
        }
        else
        {
            z.text=z.text!+""
        }
    }
    @IBAction func dengyu(sender: AnyObject) {
        switch flag{
        case 1:
            temp=temp+(Double)(z.text!)!
            z.text="\(temp)"
        case 2:
            temp=temp-(Double)(z.text!)!
            z.text="\(temp)"
        case 3:
            temp=temp*(Double)(z.text!)!
            z.text="\(temp)"
        case 4:
            if(Double)(z.text!)==0
            {
                z.text="0不能为除数"
            }
            else
            {
                temp=temp/(Double)(z.text!)!
                z.text="\(temp)"
            }
        default:
            break;
        }

    }
    @IBAction func qingling(sender: AnyObject) {
        temp=0
        z.text=""
        flag=0
    }
    @IBAction func tuiyi(sender: AnyObject) {
        var str = z.text!
        if str != ""{
            str.removeAtIndex(str.endIndex.predecessor())
            z.text=str
        }
        else{
            z.text="0"
        }

    }
    @IBAction func fuhao(sender: AnyObject) {
        temp=(Double)(z.text!)!
        temp=(-temp)
        z.text="\(temp)"
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

