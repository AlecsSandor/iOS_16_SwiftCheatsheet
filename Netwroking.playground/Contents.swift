import Foundation
import SwiftUI

struct MainStruct {
    
    var user: GitHubUser?
    
    func getUser() async throws -> GitHubUser {
        let endpoint = "https://api.github.com/users/AlecsSandor"
        
        guard let url = URL(string: endpoint) else { throw GitHubError.invalidURL }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw GitHubError.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            return try decoder.decode(GitHubUser.self, from: data)
        } catch {
            throw GitHubError.invalidData
        }
        
    }
}

enum GitHubError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}

struct GitHubUser: Codable {
    let login: String
//    let avatarUrl: String
//    let bio: String
}

var newGitUser = MainStruct()

Task {
    do {
        newGitUser.user = try await newGitUser.getUser()
    } catch GitHubError.invalidURL {
        print("invalid URL")
    } catch GitHubError.invalidResponse {
        print("invalidResponse")
    } catch GitHubError.invalidData {
        print("invalidData")
    }
    
    print(newGitUser.user?.login ?? "Waiting...")
}

