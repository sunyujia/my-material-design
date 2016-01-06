package com.jiandanlicai.library.widegt;

import android.content.Context;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.widget.ImageView;

/**
 * Created by max on 15/12/18.
 */
public class CircleImageView extends ImageView {



    public CircleImageView(Context context, int color, final float radius) {
        super(context);

    }

    private boolean elevationSupported() {
        return Build.VERSION.SDK_INT >= 21;
    }

    private class OvalShadow extends OvalShape{
//        ShapeDrawable
    }

}
