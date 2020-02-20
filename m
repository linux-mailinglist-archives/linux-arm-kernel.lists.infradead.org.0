Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A47D166206
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 17:13:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MD4sAMxYjAOtqahJqC+9eTDY+AthTZDbzJj0KdJwVpQ=; b=Br8jHuW5avoAi4
	JB8fWkylH+2UIow9MQbboJ5eZnceXlEF1J0rTCX9LYP7bSsvw3UT+i2MhWmDUMfSFHBtLiXHLGdeL
	DZUeRCFfP8ItTXngMValzofp5r7Tk9qPWcOl66mUoRnABwSC3YBtJUIE+7FtQ4vcibhC4WsG+Qzsa
	ll5xw3CGdhHgajJIO9hlK+axbbybYF2gaVeNWcBWbcR6DOdj0mJ4RmPj3mmNevtUYnrRC2gLD/Hrx
	5uGTs7nVnX3pybPyRW9VICalQW8U+ULmboyiOlwvjtUdY83L1EdVhJezXMG8dqXf6lONh+Au1yAnZ
	28CeqK8cObDjPu6vvKlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4oS0-0006F6-Dt; Thu, 20 Feb 2020 16:13:20 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4oRp-0006Ea-TL
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 16:13:12 +0000
Received: by mail-ot1-x343.google.com with SMTP id 59so4121834otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 08:13:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2cv7a5bUQjuPkMHk7UwybBDaplNeaD9SMLS2O3cAc9A=;
 b=ONg5U5WoIFLjwMWKqZXu5j6b6CeDK0ikBrmyqfzmSkmcPq+7ZFFo3oT42ahVzdmeKw
 ZzioqQSMyj+vHsY8hYB5GJSNAXHhrfXMD0hgHXck17CT57sfBqyKDd4Yomp9Q0Xapexj
 dP5Ip/MwSNfvkbUENG9OlIvXOuVTlzqv8NOkw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2cv7a5bUQjuPkMHk7UwybBDaplNeaD9SMLS2O3cAc9A=;
 b=OoTgpgkQa+I0Ly3nY3D19wWmoEd5TshuJcyFMjyjFUxX5O9TIqJ41kwPWPBzHyYzO+
 bqahY/s83XJZcQrY4tA4zOQZdHU3z7FZhiKp0dC1HyoW3vcEroCoMp8wjt5B9xa/5lZG
 6BsVSglYDw2MJdd8Lwh2hyN+L4TZai/Nw/EtcO6HqwrfW96Ex2WL089LPGlhtJq3N4GT
 yC9e7fSNGrChekMGSqZqvAb5nARJvlDbIy/rRaJVKxclbm+/xzwAbNDlU+VbsfS2y4L4
 s2YMkDHTK1RlTyKQu6gBRta4wjvUClfRdYFTcXOuIaSGN8+JNjRdkI02YYmojGaRv+F1
 wdQA==
X-Gm-Message-State: APjAAAWMayF4B9hCzYrrJhF0s57g0rX3vd8vDQMGIvi0NZWiyBt2dFDZ
 /xS3nOZDlllaqdEN3jkYAiVvr1rPN8hUPleIBaQh2A==
X-Google-Smtp-Source: APXvYqzFIGcln3VKGQY6f7FjTVpMYXh7wPjZYVsdkIaSjoSgCmdzk2GkQ/rYXK8jFBx0wRnyWUrxMSC2cyklaYSHnDk=
X-Received: by 2002:a9d:7696:: with SMTP id j22mr25664349otl.188.1582215188621; 
 Thu, 20 Feb 2020 08:13:08 -0800 (PST)
MIME-Version: 1.0
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
 <20200219102122.1607365-40-daniel.vetter@ffwll.ch>
 <30ed80c9-8b18-8e23-a26b-2c406d43c90d@st.com>
In-Reply-To: <30ed80c9-8b18-8e23-a26b-2c406d43c90d@st.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 20 Feb 2020 17:12:57 +0100
Message-ID: <CAKMK7uFCus1X7A4c_SA_n=_9KEhRVwtom_aB1CecGkQuOptoNA@mail.gmail.com>
Subject: Re: [PATCH 39/52] drm/stm: Drop explicit drm_mode_config_cleanup call
To: Philippe CORNU <philippe.cornu@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_081310_679076_99EB0EBC 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Yannick FERTRE <yannick.fertre@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Vincent ABRIOU <vincent.abriou@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 3:19 PM Philippe CORNU <philippe.cornu@st.com> wrote:
>
> Hi Daniel,
>
> On 2/19/20 11:21 AM, Daniel Vetter wrote:
> > It's right above the drm_dev_put().
> >
> > Aside: Another driver with a bit much devm_kzalloc, which should
> > probably use drmm_kzalloc instead ...
> >
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Yannick Fertre <yannick.fertre@st.com>
> > Cc: Philippe Cornu <philippe.cornu@st.com>
> > Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>
> > Cc: Vincent Abriou <vincent.abriou@st.com>
> > Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> > Cc: Alexandre Torgue <alexandre.torgue@st.com>
> > Cc: linux-stm32@st-md-mailman.stormreply.com
> > Cc: linux-arm-kernel@lists.infradead.org
> > ---
> >   drivers/gpu/drm/stm/drv.c | 10 ++++------
> >   1 file changed, 4 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/stm/drv.c b/drivers/gpu/drm/stm/drv.c
> > index ea9fcbdc68b3..5b374531dd8c 100644
> > --- a/drivers/gpu/drm/stm/drv.c
> > +++ b/drivers/gpu/drm/stm/drv.c
> > @@ -88,7 +88,9 @@ static int drv_load(struct drm_device *ddev)
> >
> >       ddev->dev_private = (void *)ldev;
> >
> > -     drm_mode_config_init(ddev);
> > +     ret = drm_mode_config_init(ddev);
> > +     if (ret)
> > +             return ret;
> >
> >       /*
> >        * set max width and height as default value.
> > @@ -103,7 +105,7 @@ static int drv_load(struct drm_device *ddev)
> >
> >       ret = ltdc_load(ddev);
> >       if (ret)
> > -             goto err;
> > +             return ret;
> >
> >       drm_mode_config_reset(ddev);
> >       drm_kms_helper_poll_init(ddev);
> > @@ -111,9 +113,6 @@ static int drv_load(struct drm_device *ddev)
> >       platform_set_drvdata(pdev, ddev);
> >
> >       return 0;
> > -err:
> > -     drm_mode_config_cleanup(ddev);
> > -     return ret;
> >   }
> >
> >   static void drv_unload(struct drm_device *ddev)
> > @@ -122,7 +121,6 @@ static void drv_unload(struct drm_device *ddev)
> >
> >       drm_kms_helper_poll_fini(ddev);
> >       ltdc_unload(ddev);
> > -     drm_mode_config_cleanup(ddev);
> >   }
> >
> >   static __maybe_unused int drv_suspend(struct device *dev)
> >
>
> Thank you for your patch,
> For this stm part,
> Acked-by: Philippe Cornu <philippe.cornu@st.com>
>
> note: we will handle devm_kzalloc() asap, thanks.

Note that as-is you can't just blindly switch devm_kzalloc over to
drmm_kzalloc for the structures containing a drm_* object, or you'll
just replace one type of use-after free with another one (and probably
worse, since the new one will hit you on normal driver unload too).
There's a bit more work needed in this area, this here is just the
first steps and a heads up. And removing the devm_kzalloc would result
in lots of code added for a bunch of kfree() all over, not so great
option either.

I'd say wait for the next round :-)
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
