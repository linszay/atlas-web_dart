String longestPalindrome(String s) {
  if (s.length < 3) {
    return null;
  }

  String longest = '';
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring;
      }
    }
  }

  return longest.isNotEmpty ? longest : null;
}

bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  
  String reversed = s.split('').reversed.join('');
  
  return s == reversed;
}

