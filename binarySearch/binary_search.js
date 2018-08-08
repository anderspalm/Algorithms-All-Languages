

var searchList = function(array, min, max, targetValue) {
        let mid = Math.floor((min + max)/2);
        if (targetValue === array[mid]) {
            return mid;
        } else if (targetValue > array[mid]) { 
            searchList(array, mid + 1, max, targetValue);
        } else {
            searchList(array, min, mid, targetValue);
        }
    };

var doSearch = function(array, targetValue) {
    	var min = 0;
    	var max = array.length - 1;
    	
        prime_found = searchList(array, min, max, targetValue);
        console.log(prime_found);
    	return prime_found;
};


doSearch([1,2,3,4,5,6,7,8,9], 1);
