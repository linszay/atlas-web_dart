String longestUniqueSubstring(String str) {
  String longestSubstring = '';
  String currentSubstring = '';

  for (int i = 0; i < str.length; i++) {
    String char = str[i];

    if (currentSubstring.contains(char)) {
      if (currentSubstring.length > longestSubstring.length) {
        longestSubstring = currentSubstring;
      }
      int index = currentSubstring.indexOf(char);
      currentSubstring = currentSubstring.substring(index + 1);
    }

    currentSubstring += char;
  }

  if (currentSubstring.length > longestSubstring.length) {
    longestSubstring = currentSubstring;
  }

  return longestSubstring;
}
