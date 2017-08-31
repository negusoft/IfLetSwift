import Foundation

public extension Optional {

    @discardableResult public func ifLet<T>(handler: (Wrapped) -> (T)) -> T? {
        guard let value = self else { return nil }
        return handler(value)
    }

    public func elseDo(handler: () -> (Wrapped)) -> Wrapped {
        if let value = self {
            return value
        }
        return handler()
    }
}
