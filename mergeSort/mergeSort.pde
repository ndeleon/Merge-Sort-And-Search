void setup(){
  int[] list = {1,4,3,5,2,6,9,0,7,8};
  int[] sortedList = mergeSort(list);
  println(sortedList);
}

void draw(){
}

int[] merge(int[] first, int[] second){
  int[] result = new int[first.length + second.length];
  
  int fI = 0;
  int sI = 0;
  int rI = 0;
  
  while(fI < first.length && sI < second.length){
    if (first[fI] < second[sI]){
      result[rI] = first[fI];
      fI++;
    } else {
      result[rI] = second[sI];
      sI++;
    }
    rI++;
  }
  
  println(result.length);
  if (fI == first.length) {
    arrayCopy(second, sI, result, rI, result.length-rI);
  } else if (sI == second.length) {
    arrayCopy(first, fI, result, rI, result.length-rI);
  }
  return result;
}

int[] mergeSort(int[] list){
  
  //basecase
  if (list.length == 1){
    return list;
  }
  
  int[] first = new int [list.length/2];
  arrayCopy (list, 0, first, 0, list.length/2);
  int[] second = new int [list.length - (list.length/2)];
  arrayCopy (list, list.length/2, second, 0, list.length/2);  
  
  mergeSort(first);
  mergeSort(second);
  
  merge(first, second);
  return list;
}



