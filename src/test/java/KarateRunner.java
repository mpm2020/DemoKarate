import com.intuit.karate.junit5.Karate;

public class KarateRunner {
    @Karate.Test
    Karate testSample() {
       return Karate.run("classpath:apiREST/KarateTest_GET.feature","classpath:apiREST/KarateTest_POST.feature","classpath:apiREST/KarateTest_DELETE.feature");
       //return Karate.run("classpath:apiREST/KarateTest_CONFIG.feature").tags("~ignore");
        //return Karate.run("classpath:apiREST/KarateTest_CSV.feature");
        //return Karate.run().relativeTo(getClass());
       // return Karate.run("classpath:apiREST/KarateTest_POST.feature");
    }
}
