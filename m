Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E575607B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:19:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EWfU5W23mYfbjVB3v9ibRjmt7wU5nhld8HBdDj3AmS4=; b=Ls3SscymiQF769
	i6Qvhr2rvbsfeQTP4a80UKlwob8nbCS8Gpsgzlg14T2fWi5fuNa/zeQf8fmVgyHcBzRc/v7cLqk8x
	+Lk7rpjb4pXk3c1ETj2MOHTrkM3QY2QRt6rdIh6xhqCL1/EKChi5hc5zhLuoXuT9kjtl7/UVx1ARy
	xpl3wRO8G/u0hplU/iDetHyiuwP/vU9eCYED7Aq1hmRh1BdeGXqmwh5c+jk25nj4D5prnYU5so715
	ppHthucIbrNweB/PH+R21J/PgRr5xZaWY4OP5r37VuAbSM1a9ClfC2yCrnze8mNx8dnWP6kIStqse
	M/+FNPKsJY9q/GwF2jgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjP3j-0003uo-Lh; Fri, 05 Jul 2019 14:19:31 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjP3d-0003uf-HH
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:19:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+HA1gRJUU1q/vq10J2Cj5qnKuph6mRHyYxPoVAGdEoY=; b=TxEskOmeRoiWNCbivYWrcexN2
 0LHsYP9Trg57r3Ov7z1TLSYfkTTiURUmdp26urkiJRJj3co5UIpy4A/vCDzsgHHx8rvhogC/DrZmj
 JcVwbhkLSNjz3NNlhrS0au6mBQlY0B8t0sQQwSeJqCJ5hdbvBRV+zMVFNZS0KGqJIaxj5RHnnvzk5
 cvWXk5B0UTktNIOLyJCZy9PVNd2ZxfIYpJAC6ljRPVXmqZOREiMbi6hVY1vJ4VY2NgW6r+ydS2zlU
 HS2r8CD35F+ASjv2iPRxjVbrJNodE12sR0F5Lk2jnxmaiI5hblVCVy8zTAH2iP3AX5V4EwVPeqs5y
 8FQlqCOdA==;
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjINS-0002lH-KY
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 07:11:28 +0000
Received: by mail-ot1-x344.google.com with SMTP id z23so8078626ote.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 00:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+HA1gRJUU1q/vq10J2Cj5qnKuph6mRHyYxPoVAGdEoY=;
 b=Hn5+GLp28rD0iRoGwRHbRq7GRqhDGFy99Nq0elsuKdVJNwUHVcdvJRg+gisPdFcpAZ
 qEdsBQ/afocCCAKXjvk+7j6rsUbqRcawLyzd70CSM0IbNIX9k0WdbOckw9qauhSBUKbs
 KsS8UCyQhKHpbg2mJG97lYMWJdWnZIc9xlhH1aPkk/x65Lyq+DEu9zuQz3itB4uXU5Jx
 Wp2757OkuQRX27nYk26bC5yZaCPgQVKegnpuEwUi3IhMmeam8wEmZq0QBjIAZzjRK2Vy
 J6XUiGXIqYCImxBzdj/5HNLtVcjYug3zt2+FpURR/lYSVsNYx9z7L0YratiSYcZPpaf3
 EX3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+HA1gRJUU1q/vq10J2Cj5qnKuph6mRHyYxPoVAGdEoY=;
 b=N02FlXbTuyo2zZV9VPlU1Fczr6oWia1dQjm9o+9s0t4WHxvVFjvTCLjv7aLqXsFVxu
 IOR6Lq1cc2GvdqWjReLCbnzFwfughPSKrvJLGmzGcdZvM0luYQoNg46d26FzujfQu6yw
 R0D6l55EVBlE6zwNN2cNRYbYM37kELHN5QqUULZG8Tt0ZpOTw/Hde+l0a88EIQY7DtnS
 /hmltJLCpgQEYWnFHlgl0e7wWpQt3WlagRpKqResI02zB1kzz3p5qJubIMUbl4TJwRbO
 EyU2FRQyiN6jcQBMqJj2Uj0B6I8dn42KKTeu02AijWY/aH0tOgRMNANDlsiFXb+/N0mK
 zAyA==
X-Gm-Message-State: APjAAAUg4693Otsk4QdAnx5EN/J8daqGYBThcXOv8dSkKpVHwehgFuif
 iif8Gv2CszPeFrbADNZProy0XTAXqQpJ/ynYhnQKww==
X-Google-Smtp-Source: APXvYqx8fFkXm04Sl60WDxMfdqFj9kg/zYj7b4ElJ1xZR84JewuoulDPbrbiGgNIHjmSgRkaFR30qgpyyakxkZEcxHc=
X-Received: by 2002:a9d:6195:: with SMTP id g21mr1790572otk.103.1562310559416; 
 Fri, 05 Jul 2019 00:09:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190705042623.129541-1-cychiang@chromium.org>
 <20190705042623.129541-3-cychiang@chromium.org>
In-Reply-To: <20190705042623.129541-3-cychiang@chromium.org>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Fri, 5 Jul 2019 15:09:08 +0800
Message-ID: <CA+Px+wWwudeG5BLOkgcq_sJqfTxmre1O=XqU8OM6oqC966TUuQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] drm: bridge: dw-hdmi: Report connector status using
 callback
To: Cheng-Yi Chiang <cychiang@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_081126_730633_48E3B307 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-15.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: ALSA development <alsa-devel@alsa-project.org>, dianders@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Takashi Iwai <tiwai@suse.com>, tzungbi@chromium.org,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 dgreid@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 5, 2019 at 12:26 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h
> index 63b5756f463b..f523c590984e 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h
> @@ -2,6 +2,8 @@
>  #ifndef DW_HDMI_AUDIO_H
>  #define DW_HDMI_AUDIO_H
>
> +#include <sound/hdmi-codec.h>
> +
>  struct dw_hdmi;
>
>  struct dw_hdmi_audio_data {
> @@ -17,6 +19,7 @@ struct dw_hdmi_i2s_audio_data {
>
>         void (*write)(struct dw_hdmi *hdmi, u8 val, int offset);
>         u8 (*read)(struct dw_hdmi *hdmi, int offset);
> +       int (*set_plugged_cb)(struct dw_hdmi *hdmi, hdmi_codec_plugged_cb fn);
>  };
>
>  #endif
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> index 5cbb71a866d5..7b93cf05c985 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> @@ -104,10 +104,20 @@ static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
>         return -EINVAL;
>  }
>
> +static int dw_hdmi_i2s_hook_plugged_cb(struct device *dev, void *data,
> +                                      hdmi_codec_plugged_cb fn)
> +{
> +       struct dw_hdmi_i2s_audio_data *audio = data;
> +       struct dw_hdmi *hdmi = audio->hdmi;
> +
> +       return audio->set_plugged_cb(hdmi, fn);
> +}
> +
The first parameter dev could be removed.  Not used.

>  static struct hdmi_codec_ops dw_hdmi_i2s_ops = {
>         .hw_params      = dw_hdmi_i2s_hw_params,
>         .audio_shutdown = dw_hdmi_i2s_audio_shutdown,
>         .get_dai_id     = dw_hdmi_i2s_get_dai_id,
> +       .hook_plugged_cb = dw_hdmi_i2s_hook_plugged_cb,
>  };
>
>  static int snd_dw_hdmi_probe(struct platform_device *pdev)
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 045b1b13fd0e..c69a399fc7ca 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -26,6 +26,8 @@
>  #include <drm/drm_probe_helper.h>
>  #include <drm/bridge/dw_hdmi.h>
>
> +#include <sound/hdmi-codec.h>
> +
>  #include <uapi/linux/media-bus-format.h>
>  #include <uapi/linux/videodev2.h>
>
> @@ -185,6 +187,9 @@ struct dw_hdmi {
>         void (*disable_audio)(struct dw_hdmi *hdmi);
>
>         struct cec_notifier *cec_notifier;
> +
> +       hdmi_codec_plugged_cb plugged_cb;
> +       enum drm_connector_status last_connector_result;
>  };
>
>  #define HDMI_IH_PHY_STAT0_RX_SENSE \
> @@ -209,6 +214,17 @@ static inline u8 hdmi_readb(struct dw_hdmi *hdmi, int offset)
>         return val;
>  }
>
> +static int hdmi_set_plugged_cb(struct dw_hdmi *hdmi, hdmi_codec_plugged_cb fn)
> +{
> +       mutex_lock(&hdmi->mutex);
> +       hdmi->plugged_cb = fn;
> +       if (hdmi->audio && !IS_ERR(hdmi->audio))
I would expect if IS_ERR(hdmi->audio), then this should not be called
(i.e. should exit somewhere earlier).

> +               fn(hdmi->audio,
> +                  hdmi->last_connector_result == connector_status_connected);
> +       mutex_unlock(&hdmi->mutex);
> +       return 0;
> +}
> +
>  static void hdmi_modb(struct dw_hdmi *hdmi, u8 data, u8 mask, unsigned reg)
>  {
>         regmap_update_bits(hdmi->regm, reg << hdmi->reg_shift, mask, data);
> @@ -2044,6 +2060,7 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
>  {
>         struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
>                                              connector);
> +       enum drm_connector_status result;
>
>         mutex_lock(&hdmi->mutex);
>         hdmi->force = DRM_FORCE_UNSPECIFIED;
> @@ -2051,7 +2068,20 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
>         dw_hdmi_update_phy_mask(hdmi);
>         mutex_unlock(&hdmi->mutex);
>
> -       return hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
> +       result = hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
> +
> +       mutex_lock(&hdmi->mutex);
> +       if (result != hdmi->last_connector_result) {
> +               dev_dbg(hdmi->dev, "read_hpd result: %d", result);
> +               if (hdmi->plugged_cb && hdmi->audio && !IS_ERR(hdmi->audio)) {
Share the same concern above.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
