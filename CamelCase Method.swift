//Write a simple camelCase function for strings. All words must have their first letter capitalized and all spaces removed.
//
//For instance:
//
//camelCase("hello case"); // ==> "HelloCase"
//camelCase("camel case word"); // ==> "CamelCaseWord"

import Foundation

func camelCase(_ str: String) -> String {
    return str.split(separator: " ").map { $0.prefix(1).capitalized + $0.dropFirst() }.joined()
}
