package karate.request;

import com.intuit.karate.junit5.Karate;
public class SingleUser {
    @Karate.Test
    Karate testSample(){

        return Karate.run("classpath:karate/request/singleUser/SingleUser.feature").relativeTo(getClass());
    }
}
