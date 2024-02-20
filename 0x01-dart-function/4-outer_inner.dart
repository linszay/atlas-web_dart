void outer(String name, String id) {
    print("Hello Agent B.${inner(name)} your id is $id");
}

String inner(String name) {
    List<String> splitName = name.split(" ");
    String firstName = splitName[0];
    return "$firstName";
}
