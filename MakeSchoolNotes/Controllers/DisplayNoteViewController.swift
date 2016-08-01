//
//  DisplayNoteViewController.swift
//  MakeSchoolNotes
//
//  Created by Chris Orcutt on 1/10/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

class DisplayNoteViewController: UIViewController {
    var note: Note?
    @IBOutlet weak var noteTitleTextField: UITextField!
    @IBOutlet weak var noteContentTextView: UITextView!
    override func viewDidLoad() {
    super.viewDidLoad()
  }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            if identifier == "Cancel" {
                print("Cancel button tapped")
            } else if identifier == "Save" {
                print("Save button tapped")
                
                let note = Note()
                note.title = noteTitleTextField.text ?? ""
                note.content = noteContentTextView.text
                // 3
                note.modificationTime = NSDate()
                // 1
                let listNotesTableViewController = segue.destinationViewController as! ListNotesTableViewController
                // 2
                listNotesTableViewController.notes.append(note)
                
            }
        }
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // 1
        if let note = note{
            noteTitleTextField.text = note.title
            noteContentTextView.text = note.content
        } else {
        noteTitleTextField.text = ""
        noteContentTextView.text = ""
        }
    }
}
