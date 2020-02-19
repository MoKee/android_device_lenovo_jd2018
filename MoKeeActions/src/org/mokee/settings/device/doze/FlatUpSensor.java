/*
 * Copyright (c) 2015 The CyanogenMod Project
 * Copyright (C) 2017 The LineageOS Project
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

package org.mokee.settings.device.doze;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.util.Log;

import org.mokee.settings.device.MoKeeActionsSettings;
import org.mokee.settings.device.SensorAction;
import org.mokee.settings.device.SensorHelper;

public class FlatUpSensor implements ScreenStateNotifier {
    private static final String TAG = "MoKeeActions-FlatUpSensor";

    private final MoKeeActionsSettings mMoKeeActionsSettings;
    private final SensorHelper mSensorHelper;
    private final SensorAction mSensorAction;
    private final Sensor mFlatUpSensor;

    private boolean mEnabled;
    private boolean mLastFlatUp;

    public FlatUpSensor(MoKeeActionsSettings MoKeeActionsSettings, SensorHelper sensorHelper,
                SensorAction action) {
        mMoKeeActionsSettings = MoKeeActionsSettings;
        mSensorHelper = sensorHelper;
        mSensorAction = action;

        mFlatUpSensor = sensorHelper.getFlatUpSensor();
    }

    @Override
    public void screenTurnedOn() {
        if (mEnabled) {
            Log.d(TAG, "Disabling");
            mSensorHelper.unregisterListener(mFlatUpListener);
            mEnabled = false;
        }
    }

    @Override
    public void screenTurnedOff() {
        if (mMoKeeActionsSettings.isPickUpEnabled() && !mEnabled) {
            Log.d(TAG, "Enabling");
            mSensorHelper.registerListener(mFlatUpSensor, mFlatUpListener);
            mEnabled = true;
        }
    }

    private SensorEventListener mFlatUpListener = new SensorEventListener() {
        @Override
        public synchronized void onSensorChanged(SensorEvent event) {
                mSensorAction.action();
        }

        @Override
        public void onAccuracyChanged(Sensor mSensor, int accuracy) {
        }
    };

}
