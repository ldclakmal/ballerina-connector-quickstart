public function subArray(any[] array, int low, int high) returns any[] {
    any[] arr;
    int count = 0;
    foreach i in low...(high - 1) {
        arr[count] = array[i];
        count += 1;
    }
    return arr;
}
