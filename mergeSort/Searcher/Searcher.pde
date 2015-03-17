int[] primes = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97};

void setup(){
  search(67, primes);
}

int search(int needle, int[] haystack){
  if (haystack.length == 1){
    if (haystack.equals(needle)){
      println(haystack[0]);
      return haystack[0];
    } else {
      return -1;
    }
  }
  int mid = haystack.length/2;
  int[] temp = new int[haystack.length/2];
  arrayCopy(haystack, mid, temp, 0, haystack.length/2);

  if (needle == haystack[mid]){
    println(mid);
    return haystack[mid];
  }
  if (needle > haystack[mid]){
    search(needle, temp);
    return -1;
  }
  if (needle < haystack[mid]){
    search(needle, temp);
    return -1;
  }
  println("Not Found");
  return -1;
  
}
  
  
