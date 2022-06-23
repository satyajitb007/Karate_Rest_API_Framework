package features;


import com.intuit.karate.junit5.Karate;


public class Test_Runner {
	
	@Karate.Test
	Karate getAPITest() {
		return Karate.run("getAPI").relativeTo(getClass());
	}

}
