
import UIKit
//Imports avfoundation to get the methods for audio file execution

import AVFoundation

class ViewController: UIViewController {
    
    //Creates an instance of AVAudioPlayer
    var audioPlayer: AVAudioPlayer?

    @IBOutlet weak var richButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func richButton(_ sender: UIButton) {
        //Initialized audioPlayer with the url of the audio file
        if let path = Bundle.main.path(forResource: "cash", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
            } catch {
                print("Could not play due: \(error)")
            }
        }
        //Prepares to play, unwraps audioPlayer as it may be null if there was an error initializing it
        audioPlayer?.prepareToPlay()
        //Plays
        audioPlayer?.play()
    }
    
    
}
