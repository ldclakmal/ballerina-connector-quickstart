# List object for list operations.
#
# + list - Set of values initialized as `any[]`
public type List object {

    any[] list;

    public function __init(any[] list) {
	    self.list = list;
    }

    # Returns the sub list of the given list.
    #
    # + low - Lower bound index of the sublist
    # + high - Upper bound index of the sublist
    # + return - Populated sub list as `any[]`
    public function subList(int low, int high) returns any[];

    # Returns whether the given value exists in the given list.
    #
    # + value - Value to be checked for existance
    # + return - Status of existance
    public function contains(any value) returns boolean;
};

function List.subList(int low, int high) returns any[] {
    any[] list = [];
    int count = 0;
    foreach int i in low...(high - 1) {
        list[count] = self.list[i];
        count += 1;
    }
    return list;
}

function List.contains(any value) returns boolean {
    foreach var item in self.list {
        if (item === value) {
            return true;
        }
    }
    return false;
}
