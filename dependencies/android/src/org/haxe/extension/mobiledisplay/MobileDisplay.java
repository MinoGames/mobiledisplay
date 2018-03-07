package org.haxe.extension.mobiledisplay;

import org.haxe.extension.extensionkit.Trace;

import android.os.Bundle;


public class MobileDisplay extends org.haxe.extension.Extension
{
    private static SoftKeyboardListener m_softKeyboardListener;
    
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
    }

    public static void KeepScreenOn(final boolean enabled)
    {
        m_softKeyboardListener = new SoftKeyboardListener();
        m_softKeyboardListener.InstallKeyboardListener(mainView);

        mainActivity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                mainView.setKeepScreenOn(enabled);
                m_softKeyboardListener.resize(mainView);
            }
        });
    }	
}