/*
 * Copyright (C) 2013 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.neusoft;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.hardware.test.V1_0.ITest;
import android.widget.TextView;
import java.lang.*;

/**
 * Activity that displays all {@link Terminal} instances running in a bound
 * {@link TerminalService}.
 */
public class MainActivity extends Activity {
    ITest test;
    String TAG = "TestApp";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        TextView textView= findViewById(R.id.textView);
        try {
            test = ITest.getService();// 获取service
            if (test != null) {
                Log.d(TAG, "testApp:==========" + test.toString());
                 String result= test.helloWorld("sdfsf");
                 textView.setText(result);
            }else{
                Log.d(TAG, "testApp:==========" + "null");
            }

        } catch (Exception e) {
            textView.setText("error:");
            e.printStackTrace();
        }
    }

    @Override
    protected void onStart() {
        super.onStart();

    }

}
