// This solution uses two pointers iterate over the given string.
class Solution {
  int lengthOfLongestSubstring(String s) {
    Map<String, int> charIndexMap = {};
    int maxLength = 0;
    int start = 0; // left pointer of the window

    for (int end = 0; end < s.length; end++) {
      String currentChar = s[end];

      // If the char is seen and it's index is inside the window
      if (charIndexMap.containsKey(currentChar) &&
          charIndexMap[currentChar]! >= start) {
        // Move start to right after last occurrence of currentChar
        start = charIndexMap[currentChar]! + 1;
      }

      charIndexMap[currentChar] = end;

      int windowLength = end - start + 1;
      maxLength = windowLength > maxLength ? windowLength : maxLength;
    }

    return maxLength;
  }
}

// Time complexity: O(n)
