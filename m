Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D15B6287
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 13:53:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=39X0AsJZdAsWo1kTSCposDdRDBBB/Xs3DtJE4MKYr4w=; b=AsQRWtemfM3yqw
	iatvwE5SxktW0nub+bFBwcwoB4GDAOM9jJJ2d+yVyLyVpGBm2DjIO83FivKgw2IngiSnGzQF2duWW
	pxfOSXgVKzCZL3oZvJKNdGqX99eOhTVoIefToYa7GyZMcvNNyJkiBo7QAzfusVMcjc/Tvf4Ap32k1
	z1xRWMI2A4E9WSCaRKv7etOnMD8oyC3HM3HWniLeXNokaHJexHbgOkRbZG1d2cdYdr4fa6U0QT7H1
	nc2U8jneEkjdSeWzZQYSjZDxPBQF5paayqX1kZygI18oTzDRkBzaWzHAgU2v4BSaCbhYOflJsjyDF
	T+oVrrnhCuJrdsOTPUKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAYWm-00018b-73; Wed, 18 Sep 2019 11:53:44 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAYWG-00015u-Et
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 11:53:14 +0000
Received: by mail-vs1-xe43.google.com with SMTP id w195so4226349vsw.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 04:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1KlX045+but4kZYDkxl79NCCq10iOcslEdRaiYLes50=;
 b=fego5LxIL6sB7nuVbbaJVJB9N7WNC8aIjmYR0y5szXrjm/cLvc2AEl4CT76peU8LyO
 ovgIJAkEcVdo/HQkTbgy73bCOznMQ54xCR6vuEpJF43zd/anX3d2aaBum9pZVtNEW2/S
 KaQ6549ctO0oKG1CzL2x+C+6Ci98YSp8YZRfo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1KlX045+but4kZYDkxl79NCCq10iOcslEdRaiYLes50=;
 b=GEcN43vI4pUffvx654jfeL/Ukcxqc6I8MViAqM0/2UTXFzknSlK3VFt7f98YcNGOH7
 kuuHD9YHKzexAvcVlM21kQsdAGVX3oxkcw9iHNuFVdofVVDxuxxLYyOdDkVsp5SrYCgu
 ODBdC2j9GI4O6YXNN8iTgXoFLi9RUFIT6Wnywp430IETv7kkWMjkkK7czzu5Q4ydnoHb
 efX5LLkrOd8bVwhmRBnhgv1JZ5it1ekbBLdk6Z6YGe7FZYMgBuP0IE1sHHPsMex9MfRi
 CKHiwttDg/Wi76zv5djhKBONdlD6IvoLsf1jDu1+3f+rhDMRGUvUb3F6Kkto5DNjjsGC
 4+tw==
X-Gm-Message-State: APjAAAXZRCZJBcvL9i8XSN5dSSDCM/TEo7rqoLfaUXXN2AA3u0AOw4bk
 SiefKQilBb/YThohm4TESea9pHFVezqbUm8yuAbH1w==
X-Google-Smtp-Source: APXvYqyhL40Vy4UIINlY/uIQouC/knlNQeJfWaG2W2HqYygbGI5RQ+ggz1DPkhARkI89YhNy/gvof3y7jgV5PmDT70U=
X-Received: by 2002:a67:db8d:: with SMTP id f13mr1855977vsk.163.1568807586619; 
 Wed, 18 Sep 2019 04:53:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190918082500.209281-1-cychiang@chromium.org>
 <20190918082500.209281-3-cychiang@chromium.org>
 <1j7e663sfu.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1j7e663sfu.fsf@starbuckisacylon.baylibre.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Wed, 18 Sep 2019 19:52:39 +0800
Message-ID: <CAFv8Nw+JssR+qJYWaQAjDRbHuNidHXQBPLsbOM7kNs4MN-Nkkw@mail.gmail.com>
Subject: Re: [PATCH v6 2/4] drm: dw-hdmi-i2s: Use fixed id for codec device
To: Jerome Brunet <jbrunet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_045312_615201_7907F8F2 
X-CRM114-Status: GOOD (  23.21  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Takashi Iwai <tiwai@suse.com>, linux-rockchip@lists.infradead.org,
 Dylan Reid <dgreid@chromium.org>, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, Liam Girdwood <lgirdwood@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Doug Anderson <dianders@chromium.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 4:43 PM Jerome Brunet <jbrunet@baylibre.com> wrote:
>
>
> On Wed 18 Sep 2019 at 10:24, Cheng-Yi Chiang <cychiang@chromium.org> wrote:
>
> > The problem of using auto ID is that the device name will be like
> > hdmi-audio-codec.<id number>.auto.
> >
> > The number might be changed when there are other platform devices being
> > created before hdmi-audio-codec device.
> > Use a fixed name so machine driver can set codec name on the DAI link.
> >
> > Using the fixed name should be fine because there will only be one
> > hdmi-audio-codec device.
>
> While this is true all platforms we know of (I suppose), It might not be
> the case later on. I wonder if making such assumption is really
> desirable in a code which is used by quite a few different platforms.
>
> Instead of trying to predict what the device name will be, can't you just
> query it in your machine driver ? Using a device tree phandle maybe ?
>
> It is quite usual to set the dai links this way, "simple-card" is a good
> example of this.
>

Hi Jerome,
Thanks for the quick reply!
And thanks for pointing this out.
I found that
soc_component_to_node searches upward for one layer so it can find the
node which creates hdmi-audio-codec in runtime. This works even that
hdmi-audio-codec does not have its own node in dts.
I will change accordingly in v7.
Thanks!



> >
> > Fix the codec name in rockchip rk3288_hdmi_analog machine driver.
> >
> > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > ---
> >  drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c | 2 +-
> >  sound/soc/rockchip/rk3288_hdmi_analog.c             | 3 ++-
> >  2 files changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > index d7e65c869415..86bd482b9f94 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > @@ -193,7 +193,7 @@ static int snd_dw_hdmi_probe(struct platform_device *pdev)
> >
> >       memset(&pdevinfo, 0, sizeof(pdevinfo));
> >       pdevinfo.parent         = pdev->dev.parent;
> > -     pdevinfo.id             = PLATFORM_DEVID_AUTO;
> > +     pdevinfo.id             = PLATFORM_DEVID_NONE;
> >       pdevinfo.name           = HDMI_CODEC_DRV_NAME;
> >       pdevinfo.data           = &pdata;
> >       pdevinfo.size_data      = sizeof(pdata);
> > diff --git a/sound/soc/rockchip/rk3288_hdmi_analog.c b/sound/soc/rockchip/rk3288_hdmi_analog.c
> > index 767700c34ee2..8286025a8747 100644
> > --- a/sound/soc/rockchip/rk3288_hdmi_analog.c
> > +++ b/sound/soc/rockchip/rk3288_hdmi_analog.c
> > @@ -15,6 +15,7 @@
> >  #include <linux/gpio.h>
> >  #include <linux/of_gpio.h>
> >  #include <sound/core.h>
> > +#include <sound/hdmi-codec.h>
> >  #include <sound/jack.h>
> >  #include <sound/pcm.h>
> >  #include <sound/pcm_params.h>
> > @@ -142,7 +143,7 @@ static const struct snd_soc_ops rk_ops = {
> >  SND_SOC_DAILINK_DEFS(audio,
> >       DAILINK_COMP_ARRAY(COMP_EMPTY()),
> >       DAILINK_COMP_ARRAY(COMP_CODEC(NULL, NULL),
> > -                        COMP_CODEC("hdmi-audio-codec.2.auto", "i2s-hifi")),
> > +                        COMP_CODEC(HDMI_CODEC_DRV_NAME, "i2s-hifi")),
> >       DAILINK_COMP_ARRAY(COMP_EMPTY()));
> >
> >  static struct snd_soc_dai_link rk_dailink = {
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
