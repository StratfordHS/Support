// This should go in the file TestMain.java
// Example of a unit test that checks the value returned from a method in the Main class.

import org.junit.Before;
import org.junit.After;
import org.junit.Test;
import static org.junit.Assert.*;

public class TestMain {

    @Test
    public void equalTest() {
        assertFalse("Failed on an array where consecutive values are equal.", Main.isDecreasing(new int[] {9,8,7,6,6,5,4,3,3,2,1,0}));
    }
}
