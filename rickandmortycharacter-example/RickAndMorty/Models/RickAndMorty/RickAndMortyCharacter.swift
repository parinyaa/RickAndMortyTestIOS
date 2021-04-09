
import Foundation

struct RickAndMortyCharacter: Codable {
    var id: Int
    var name: String
    var image: URL
    var species: String
    var status: String
    var gender: String
    var episode: [URL]
    
}
