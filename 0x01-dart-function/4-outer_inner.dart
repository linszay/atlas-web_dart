void outer(String name, String id) {
    print("Hello Agent B.${inner(name)} your id is $id");
}

String inner(String name) {
    List<String> splitName = name.split(" ");
    String lastName = splitName[1];
    return "$lastName";
}
