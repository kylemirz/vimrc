package Tests;
import android.test.ActivityInstrumentationTestCase2;
import android.widget.TextView;

import com.example.voski.project3.MainActivity;
import com.example.voski.project3.R;

/**
 * Created by Voski on 4/18/16.
 */

public class JUnit_test extends ActivityInstrumentationTestCase2 {

    MainActivity mainActivity;
    public JUnit_test() {

        super(MainActivity.class);
    }

    public void test_first() {
        mainActivity = (MainActivity) getActivity();

        TextView textView = (TextView) mainActivity.findViewById(R.id.tv1);
        String tester = textView.getText().toString();

        assertEquals("Hello World!", tester);
    }

}
