public type List object {

    any[] list;

    public function __init(any[] list) {
	    self.list = list;
    }

    public function subList(int low, int high) returns any[];
    public function contains(any value) returns boolean;
};

function List.subList(int low, int high) returns any[] {
    any[] list = [];
    int count = 0;
    foreach i in low...(high - 1) {
        list[count] = self.list[i];
        count += 1;
    }
    return list;
}

function List.contains(any value) returns boolean {
    foreach item in self.list {
        if (item === value) {
            return true;
        }
    }
    return false;
}
