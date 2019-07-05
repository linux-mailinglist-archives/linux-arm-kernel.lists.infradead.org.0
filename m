Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E632C6070C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJno4/EZArkp24DuDvlwnwWw5A5kg5dh+WxxpvWbqDE=; b=cmmlQ6LtvQvOOD
	+2Cggzo7pmB8WP3SfDCm3i6mOIkvEobDGd6b1laaF7bIoqFpthAQg0l90aYYBAeIQNJSlBva9kjg0
	eFkt/OQIRIG6M94PD+f0pMjN7nEl2IkrPvNUBAyBvt+tFavlhmTr5/NGFHAX9pB30DxQaTdM92qlI
	R0MbSVaRhT+bgS8tdW8ANipvgv/MELU3uEDmRFjfQAfSa+o1GG0wx12wNMiAv2R/hk9lUiSFqADOM
	/ApnM6zpGGhd4uIhGKP8EFVUwy2yCUj7v7Nmxdrnj9gm/D3Vg2W4iqTqZat1SPESlgBqqoFga1hf+
	QGnCAjBY8L4/7MQelEeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOlS-0004a6-HN; Fri, 05 Jul 2019 14:00:38 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOfR-0004Yu-Ls
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 13:54:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rMd1u8f9GUtGM2BNqO4dxPBPUfEK4qgo6+64JcBSfZo=; b=pfHxMch707uNPOQE0Zgezaunl
 as+reb9NGSidG7AC1r+R6VExkDiNXblV+8Qcx4efrzjalB3NpBVkVwz7EYCNoELTPGL5Q1Acii5M4
 dGFxxVOxrlce3CKd0Vvr5XXD8OBM3SfJsMyPQfX0R2Pf5XE3f1bvfVv4KfCR20ycDu63MamF/NN3N
 R3QBP/9sE4hhLOz6q2B0NSbKw+lweRJClIWee9qBkJbnVp5EeoRZbnGVr9spxOdx4LmCkpAtV1pzP
 CXFTBqSsCMhycdt/2iEySdt/oNTXV3NtJzspClvyFc1kc5pY43lrMwDSPhPAY2+IJhiHwhBkjSnwF
 c6hstZHBQ==;
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjIjI-0003Xb-1c
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 07:34:02 +0000
Received: by mail-vs1-xe44.google.com with SMTP id 2so3257381vso.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 00:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rMd1u8f9GUtGM2BNqO4dxPBPUfEK4qgo6+64JcBSfZo=;
 b=NCAVIjM5oXEoOyTfLc1j5S059x2rfCv7/17EWp9Et1EVImM8xhz2b6qhUPm19tM+aD
 3+ZVdwnBS+Jajb4BoM70kV1GQ47wbUmxTn50xE4ev9Bx8gVtRLhl8fBx3ZksvBDiuqrQ
 xUg2H8J4gy8WPGrDWXxNkCsWaztk5/XXtdEP4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rMd1u8f9GUtGM2BNqO4dxPBPUfEK4qgo6+64JcBSfZo=;
 b=Zd0oTU6a7/huax+E7WvyPkjSB7rTBgOokQfJEEV5qJ28RHwP8G/+Qu+gLN1he5Wsbw
 TT57B8NKLHLLF96+Uk1MKQq8z1iw0thC6MAOyDBv7fRys9ALs2lzEyq9WBSGxT1NOi/9
 zodv8JZ6hRBkONdJEKiesYR5foCxY57fpmxNoQ0XyP5Hby+fkxodNb35skxuiHFwJNAJ
 RIWdQnspwSHxWIJ0pFRL/ZjN0NJ7rOPv0iCRDx1awktUv34rqksEYNgZggsO6beVJrEe
 ns1rdiFee+QE3qgQ+IdKZ5nN7pxh7p2dB4BN2kPmmBXjVGVfGOE89dXA7Cn6+C6IJVTs
 Fbjg==
X-Gm-Message-State: APjAAAX/til0SjWoYXCgQQfd/vJmCKAzcbcv1GRARN8XmDf/53rmNxGq
 YOfYl42nC2PDqZFFWIFPQ42BnSKtLitRktPlhqybNw==
X-Google-Smtp-Source: APXvYqz5mVOrkTHRsNytg+i93CjQ2GDoPSDWloDYQwydMlp+jUPs4nifh/0Ua8DYEXIwTxR4ajiGrHIn+cmJ3Pylqm0=
X-Received: by 2002:a67:eada:: with SMTP id s26mr1279515vso.163.1562311911794; 
 Fri, 05 Jul 2019 00:31:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190705042623.129541-1-cychiang@chromium.org>
 <20190705042623.129541-3-cychiang@chromium.org>
 <VI1PR06MB41425D1F24AC653F08AFA463ACF50@VI1PR06MB4142.eurprd06.prod.outlook.com>
In-Reply-To: <VI1PR06MB41425D1F24AC653F08AFA463ACF50@VI1PR06MB4142.eurprd06.prod.outlook.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Fri, 5 Jul 2019 15:31:24 +0800
Message-ID: <CAFv8NwJXbJo=z_NDj+JQHD9LOmnbfM8v_N1uHn4sdBzF-FZQfA@mail.gmail.com>
Subject: Re: [alsa-devel] [PATCH 2/4] drm: bridge: dw-hdmi: Report connector
 status using callback
To: Jonas Karlman <jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_083400_107103_F0CA151C 
X-CRM114-Status: GOOD (  36.86  )
X-Spam-Score: -7.6 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-7.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "tzungbi@chromium.org" <tzungbi@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, Mark Brown <broonie@kernel.org>,
 Takashi Iwai <tiwai@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "dianders@chromium.org" <dianders@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, "dgreid@chromium.org" <dgreid@chromium.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 5, 2019 at 1:45 PM Jonas Karlman <jonas@kwiboo.se> wrote:
>
> On 2019-07-05 06:26, Cheng-Yi Chiang wrote:
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
>
> I have a similar notification need for making a snd_ctl_notify() call from hdmi-codec when ELD changes,
> see [1] for work in progress patches (part of a dw-hdmi multi-channel lpcm series I am preparing).
>
> Any suggestions on how to handle a ELD change notification?
> Should I use a similar pattern as in this series?

Hi Jonas, I think we are using a very similar pattern.
The difference is that in my series the function is not exposed on hdmi-codec.h.
I think your method makes sense for your case because
dw-hdmi-i2s-audio.c needs to access and update data inside
dw_hdmi_i2s_audio_data,
while in my use case it is only a thin layer setting up the callback
for jack status.

> (I lost track of the hdmi-notifier/drm_audio_component discussion)
>

It was a long discussion.
I think the conclusion was that if we are only talking about
hdmi-codec, then we just need to extend the ops exposed in hdmi-codec
and don't need to use
hdmi-notifier or drm_audio_component.

> [1] https://github.com/Kwiboo/linux-rockchip/compare/54b40fdd264c7ed96017271eb6524cca4ff755ab...9c17284e8a8657e8b1da53a1c7ff056cbd8ce43c
>
> Best regards,
> Jonas
>
> >
> > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > ---
> >  .../gpu/drm/bridge/synopsys/dw-hdmi-audio.h   |  3 ++
> >  .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   | 10 ++++++
> >  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     | 34 ++++++++++++++++++-
> >  3 files changed, 46 insertions(+), 1 deletion(-)
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
> > index 045b1b13fd0e..c69a399fc7ca 100644
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
> > @@ -209,6 +214,17 @@ static inline u8 hdmi_readb(struct dw_hdmi *hdmi, int offset)
> >       return val;
> >  }
> >
> > +static int hdmi_set_plugged_cb(struct dw_hdmi *hdmi, hdmi_codec_plugged_cb fn)
> > +{
> > +     mutex_lock(&hdmi->mutex);
> > +     hdmi->plugged_cb = fn;
> > +     if (hdmi->audio && !IS_ERR(hdmi->audio))
> > +             fn(hdmi->audio,
> > +                hdmi->last_connector_result == connector_status_connected);
> > +     mutex_unlock(&hdmi->mutex);
> > +     return 0;
> > +}
> > +
> >  static void hdmi_modb(struct dw_hdmi *hdmi, u8 data, u8 mask, unsigned reg)
> >  {
> >       regmap_update_bits(hdmi->regm, reg << hdmi->reg_shift, mask, data);
> > @@ -2044,6 +2060,7 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
> >  {
> >       struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
> >                                            connector);
> > +     enum drm_connector_status result;
> >
> >       mutex_lock(&hdmi->mutex);
> >       hdmi->force = DRM_FORCE_UNSPECIFIED;
> > @@ -2051,7 +2068,20 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
> >       dw_hdmi_update_phy_mask(hdmi);
> >       mutex_unlock(&hdmi->mutex);
> >
> > -     return hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
> > +     result = hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
> > +
> > +     mutex_lock(&hdmi->mutex);
> > +     if (result != hdmi->last_connector_result) {
> > +             dev_dbg(hdmi->dev, "read_hpd result: %d", result);
> > +             if (hdmi->plugged_cb && hdmi->audio && !IS_ERR(hdmi->audio)) {
> > +                     hdmi->plugged_cb(hdmi->audio,
> > +                                      result == connector_status_connected);
> > +                     hdmi->last_connector_result = result;
> > +             }
> > +     }
> > +     mutex_unlock(&hdmi->mutex);
> > +
> > +     return result;
> >  }
> >
> >  static int dw_hdmi_connector_get_modes(struct drm_connector *connector)
> > @@ -2460,6 +2490,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
> >       hdmi->rxsense = true;
> >       hdmi->phy_mask = (u8)~(HDMI_PHY_HPD | HDMI_PHY_RX_SENSE);
> >       hdmi->mc_clkdis = 0x7f;
> > +     hdmi->last_connector_result = connector_status_disconnected;
> >
> >       mutex_init(&hdmi->mutex);
> >       mutex_init(&hdmi->audio_mutex);
> > @@ -2653,6 +2684,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
> >               audio.hdmi      = hdmi;
> >               audio.write     = hdmi_writeb;
> >               audio.read      = hdmi_readb;
> > +             audio.set_plugged_cb = hdmi_set_plugged_cb;
> >               hdmi->enable_audio = dw_hdmi_i2s_audio_enable;
> >               hdmi->disable_audio = dw_hdmi_i2s_audio_disable;
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
