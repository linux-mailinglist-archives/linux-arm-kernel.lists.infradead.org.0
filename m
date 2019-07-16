Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC996A830
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 14:05:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=frbBXkU2MLcqn1iekJA1r72odJa//iKbGWyXFESW3Pc=; b=RaUwOUhr6nleHz
	+KXm/TuMAk4fSvvcOoSxNMVqt9R+yONvziOKhojkgfUkhlPUGa+PryzG8O6Vcw4aKdFytiEzJns1h
	xHD8wIdndkIrHf8m6lBMdhBX2YjFuvqsvIDNGMKp66reXa5+gMhdWFjjOrug8FBHXz2jH4qnL/DbK
	udSSJJyzxem26ZiF5INUWsO4reAW5+lyOOlWmF9zlhI7/DyeVCU3FtAKAe44Sp6rIaM3e1MOvFaa2
	yqd3ZkHqO0QCN2sjv+v2jJ5rg79HYOCaACdBE+QkwnYRORskm+7lnx9QG5QpJ/ZTOB4KyaxNNJiTO
	4bVwOYXLVD/c9w0jB94Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMCs-0001E3-Rr; Tue, 16 Jul 2019 12:05:18 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnMCW-00012j-Iz
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 12:04:58 +0000
Received: by mail-vk1-xa42.google.com with SMTP id b64so4109808vke.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 05:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P7ULxAuKEaSYzWYdGTr4IlP25QOrvD8KBofH6zWNyzQ=;
 b=mkw993/neQKAw2c2FfYVkxn+sOjDePcI0SFBqSo2uQ9XgxU7qFjPiY3YH5IUddHb1f
 0Zi+0q7QkAQBUfFLrw7PZjyy/zDoBIwIax+0NNKvtUxDk8C+SkzNSpFCXzQ0EZg4L/nh
 NgyhuIC9Ws15LrFjfBQKOKwslddMzuYtVkZiU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P7ULxAuKEaSYzWYdGTr4IlP25QOrvD8KBofH6zWNyzQ=;
 b=Ox0Iu9OVla7bn/Fpu0trBPm2R9EMjvt+dibTneLBBZ5Sev8g1hoSqmGineavF0Dvo+
 VOr5rX3a0WBJAlSGWw7A8PxVBSKVFKdDomkLqOCmHR73DgGqihUYhbGchMar1cB+sK7r
 4Kev3mk4+y/wHFiGqeKhlq2Wg11T9W/HWpDohka09I3ygKdYyniI/X3kWSU8May4BYR/
 Spluli2qv1qkxRGA28Utz4ZIF2WCV4h7/jJ8zsW7tUl+KZXDCUMkEUYvmQsvupAtTepN
 rVJIBK7UfJB8q4CwYDgPJ/cGuHiPQ95bhl6aPDyUtU6GAezQ6zQbrwCJiXHKi4UPi1G2
 Zd7g==
X-Gm-Message-State: APjAAAUaiyVYy0z6Bgb7lIH7zpxeUgSQaYWPF8YggAnqO1QEpF1WNI1j
 sAxZ+rxda9HhWm/kAjbFb6gdZ24Wonm0sHDJvc90qQ==
X-Google-Smtp-Source: APXvYqyV5nIBgRiOBlht43v8TH2KL+F06jklrgKSVXF6ezSHVkI2KPhvG8Y407cVFJ0e5gFjSSA+0asgnIsC1+p+aiY=
X-Received: by 2002:a1f:3692:: with SMTP id d140mr11929548vka.88.1563278694560; 
 Tue, 16 Jul 2019 05:04:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190712100443.221322-1-cychiang@chromium.org>
 <20190712100443.221322-3-cychiang@chromium.org>
 <20190712104748.zlgxgdjbtj2gw4yz@shell.armlinux.org.uk>
In-Reply-To: <20190712104748.zlgxgdjbtj2gw4yz@shell.armlinux.org.uk>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Tue, 16 Jul 2019 20:04:28 +0800
Message-ID: <CAFv8NwLBr+USzOJvSZzMt_EzxA=07-NTGzuKdusaMxbFyrBjFQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] drm: bridge: dw-hdmi: Report connector status
 using callback
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050456_658927_51146D69 
X-CRM114-Status: GOOD (  31.10  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 <alsa-devel@alsa-project.org>, tzungbi@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, Mark Brown <broonie@kernel.org>,
 Takashi Iwai <tiwai@suse.com>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, Doug Anderson <dianders@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Dylan Reid <dgreid@chromium.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 6:48 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Fri, Jul 12, 2019 at 06:04:40PM +0800, Cheng-Yi Chiang wrote:
> > Allow codec driver register callback function for plug event.
> >
> > The callback registration flow:
> > dw-hdmi <--- hw-hdmi-i2s-audio <--- hdmi-codec
> >
> > dw-hdmi-i2s-audio implements hook_plugged_cb op
> > so codec driver can register the callback.
> >
> > dw-hdmi implements set_plugged_cb op so platform device can register the
> > callback.
> >
> > When connector plug/unplug event happens, report this event using the
> > callback.
> >
> > Make sure that audio and drm are using the single source of truth for
> > connector status.
> >
> > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > ---
> >  .../gpu/drm/bridge/synopsys/dw-hdmi-audio.h   |  3 +
> >  .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   | 10 ++++
> >  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     | 55 ++++++++++++++++++-
> >  3 files changed, 67 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h
> > index 63b5756f463b..f523c590984e 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h
> > @@ -2,6 +2,8 @@
> >  #ifndef DW_HDMI_AUDIO_H
> >  #define DW_HDMI_AUDIO_H
> >
> > +#include <sound/hdmi-codec.h>
> > +
> >  struct dw_hdmi;
> >
> >  struct dw_hdmi_audio_data {
> > @@ -17,6 +19,7 @@ struct dw_hdmi_i2s_audio_data {
> >
> >       void (*write)(struct dw_hdmi *hdmi, u8 val, int offset);
> >       u8 (*read)(struct dw_hdmi *hdmi, int offset);
> > +     int (*set_plugged_cb)(struct dw_hdmi *hdmi, hdmi_codec_plugged_cb fn);
> >  };
> >
> >  #endif
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > index 5cbb71a866d5..7b93cf05c985 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > @@ -104,10 +104,20 @@ static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
> >       return -EINVAL;
> >  }
> >
> > +static int dw_hdmi_i2s_hook_plugged_cb(struct device *dev, void *data,
> > +                                    hdmi_codec_plugged_cb fn)
> > +{
> > +     struct dw_hdmi_i2s_audio_data *audio = data;
> > +     struct dw_hdmi *hdmi = audio->hdmi;
> > +
> > +     return audio->set_plugged_cb(hdmi, fn);
> > +}
> > +
> >  static struct hdmi_codec_ops dw_hdmi_i2s_ops = {
> >       .hw_params      = dw_hdmi_i2s_hw_params,
> >       .audio_shutdown = dw_hdmi_i2s_audio_shutdown,
> >       .get_dai_id     = dw_hdmi_i2s_get_dai_id,
> > +     .hook_plugged_cb = dw_hdmi_i2s_hook_plugged_cb,
> >  };
> >
> >  static int snd_dw_hdmi_probe(struct platform_device *pdev)
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > index 045b1b13fd0e..ce6646067472 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > @@ -26,6 +26,8 @@
> >  #include <drm/drm_probe_helper.h>
> >  #include <drm/bridge/dw_hdmi.h>
> >
> > +#include <sound/hdmi-codec.h>
> > +
> >  #include <uapi/linux/media-bus-format.h>
> >  #include <uapi/linux/videodev2.h>
> >
> > @@ -185,6 +187,9 @@ struct dw_hdmi {
> >       void (*disable_audio)(struct dw_hdmi *hdmi);
> >
> >       struct cec_notifier *cec_notifier;
> > +
> > +     hdmi_codec_plugged_cb plugged_cb;
> > +     enum drm_connector_status last_connector_result;
> >  };
> >
> >  #define HDMI_IH_PHY_STAT0_RX_SENSE \
> > @@ -209,6 +214,40 @@ static inline u8 hdmi_readb(struct dw_hdmi *hdmi, int offset)
> >       return val;
> >  }
> >
> > +static void handle_plugged_change(struct dw_hdmi *hdmi, bool plugged)
> > +{
> > +     struct platform_device *codec_pdev;
> > +
> > +     if (!hdmi->audio || IS_ERR(hdmi->audio))
> > +             return;
> > +     codec_pdev = platform_get_drvdata(hdmi->audio);
> > +     if (!codec_pdev || IS_ERR(codec_pdev))
> > +             return;
>
> This looks fragile to me, poking about in another device's driver data
> from another driver is really not a good design decision.  I think this
> can be simplified if the registration function took the function
> pointer and the struct device pointer, and then you only need one test
> below:
>
Hi Russell, Thank you for the detailed review.
ACK to this suggestion.
I have updated the registration function following your suggestion in v4.
It looks much cleaner.

> > +     if (!hdmi->plugged_cb)
> > +             return;
> > +
> > +     hdmi->plugged_cb(&codec_pdev->dev, plugged);
> > +}
> > +
> > +static int hdmi_set_plugged_cb(struct dw_hdmi *hdmi, hdmi_codec_plugged_cb fn)
> > +{
> > +     bool plugged;
> > +     struct platform_device *codec_pdev;
> > +
> > +     if (!hdmi->audio || IS_ERR(hdmi->audio))
> > +             return -EINVAL;
>
> Given the current code structure, how can this ever be true when the
> function is called?
>
ACK
Removed in v4.
> > +     codec_pdev = platform_get_drvdata(hdmi->audio);
> > +     if (!codec_pdev || IS_ERR(codec_pdev))
> > +             return -EINVAL;
>
> This doesn't seem like a good idea as I've pointed out above.
>
ACK
Fixed in v4.
> > +
> > +     mutex_lock(&hdmi->mutex);
> > +     hdmi->plugged_cb = fn;
> > +     plugged = hdmi->last_connector_result == connector_status_connected;
> > +     handle_plugged_change(hdmi, plugged);
> > +     mutex_unlock(&hdmi->mutex);
>
> Should be a blank line here for readability.
>
ACK
Fixed in v4.
> > +     return 0;
> > +}
> > +
> >  static void hdmi_modb(struct dw_hdmi *hdmi, u8 data, u8 mask, unsigned reg)
> >  {
> >       regmap_update_bits(hdmi->regm, reg << hdmi->reg_shift, mask, data);
> > @@ -2044,6 +2083,7 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
> >  {
> >       struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
> >                                            connector);
> > +     enum drm_connector_status result;
> >
> >       mutex_lock(&hdmi->mutex);
> >       hdmi->force = DRM_FORCE_UNSPECIFIED;
> > @@ -2051,7 +2091,18 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
> >       dw_hdmi_update_phy_mask(hdmi);
> >       mutex_unlock(&hdmi->mutex);
> >
> > -     return hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
> > +     result = hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
> > +
> > +     mutex_lock(&hdmi->mutex);
> > +     if (result != hdmi->last_connector_result) {
> > +             dev_dbg(hdmi->dev, "read_hpd result: %d", result);
> > +             handle_plugged_change(hdmi,
> > +                                   result == connector_status_connected);
> > +             hdmi->last_connector_result = result;
> > +     }
> > +     mutex_unlock(&hdmi->mutex);
> > +
> > +     return result;
> >  }
> >
> >  static int dw_hdmi_connector_get_modes(struct drm_connector *connector)
> > @@ -2460,6 +2511,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
> >       hdmi->rxsense = true;
> >       hdmi->phy_mask = (u8)~(HDMI_PHY_HPD | HDMI_PHY_RX_SENSE);
> >       hdmi->mc_clkdis = 0x7f;
> > +     hdmi->last_connector_result = connector_status_disconnected;
> >
> >       mutex_init(&hdmi->mutex);
> >       mutex_init(&hdmi->audio_mutex);
> > @@ -2653,6 +2705,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
> >               audio.hdmi      = hdmi;
> >               audio.write     = hdmi_writeb;
> >               audio.read      = hdmi_readb;
> > +             audio.set_plugged_cb = hdmi_set_plugged_cb;
>
> Why is this necessary?
>
> The I2S audio driver already depends on the dw-hdmi module through its
> use of functions already exported.  Indirecting this through the
> platform data makes no sense.
>
> Just rename hdmi_set_plugged_cb to dw_hdmi_set_plugged_cb() and export
> it for dw-hdmi-i2s-audio.c to use.
ACK.
Your suggestion makes sense.
Removed in v4.

>
> Thanks.
Thanks so much!

>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
