class Solution {
  int lengthOfLongestSubstring(String s) {
    String currentSubstring = "";
    int maxLength = 0;

    for (int i = 0; i < s.length; i++) {
      String char = s[i];

      if (currentSubstring.contains(char)) {
        int index = currentSubstring.indexOf(char);
        currentSubstring = currentSubstring.substring(index + 1);
      }

      currentSubstring += char;
      maxLength = currentSubstring.length > maxLength
          ? currentSubstring.length
          : maxLength;
    }

    return maxLength;
  }
}

// Time complexity: O(n)