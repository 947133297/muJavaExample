import static org.junit.Assert.*;

import java.util.Random;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;


public class testX {

	private X x;
	@Before
	public void setUp() throws Exception {
		x = new X();
	}

	@After
	public void tearDown() throws Exception {
		x = null;
	}

	@Test
	public void test() {
		assertEquals("2", "8" + (new Random()).nextInt());
	}

}
