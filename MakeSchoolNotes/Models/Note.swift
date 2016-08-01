//
//  Note.swift
//  MakeSchoolNotes
//
//  Created by Pavel Asparouhov on 8/1/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//
import Foundation
import RealmSwift

class Note: Object {
    dynamic var title = ""
    dynamic var content = ""
    dynamic var modificationTime = NSDate()
}