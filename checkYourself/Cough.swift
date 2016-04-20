//
//  Cough.swift
//  checkYourself
//
//  Created by Ceferino Malabed on 4/18/16.
//  Copyright © 2016 Ceferino Malabed. All rights reserved.
//

import UIKit

struct Cough : manner
{
    var name : String
    var image : UIImage
    let description : String = ("Always cover your mouth when you cough." + "\r\n" +
        "If you don't cover your mouth for each cough, it risks the chance of your germs spreading around the room. This can cause people aound you to become sick!"
    )
}