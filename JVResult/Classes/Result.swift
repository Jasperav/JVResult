public enum Result<T> {
    case succes(data: T), error(resultError: ResultError)
    
    // Is this possible without the switch? Can't get it to work
    // https://stackoverflow.com/questions/52803260/determine-value-of-parameter-in-a-generic-enum-without-a-switch
    public var error: ResultError? {
        switch self {
        case .succes(_):
            return nil
        case .error(let resultError):
            return resultError
        }
    }
    
}
