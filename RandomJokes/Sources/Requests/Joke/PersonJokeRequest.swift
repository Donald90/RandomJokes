import Foundation

class PersonJokeRequest: Request<Joke> {
    let repository: JokesRepositoryProtocol
    let person: Person

    init(repository: JokesRepositoryProtocol, person: Person) {
        self.repository = repository
        self.person = person
    }

    override func execute(success: @escaping (Joke) -> Void, failure: @escaping (Error) -> Void) {
        repository.fetch(person: person) {
            switch $0 {
            case .success(let joke):
                success(joke)
            case .failure(let error):
                failure(error)
            }
        }
    }
}