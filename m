Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0068FA9EBD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 11:46:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQBEkErWQpFwSPds5kMo/AdFbDf2/AuU0tYO4vxJ724=; b=uJ07RZOO0TUQyj
	5SeXMMSlt3L3bdOic69Piq9iRGJLNEK6On858kjxcwK09hoHG3lJb4GPWhBIXjzIk3cm4AgSriwt/
	L8+rSfnqw4a6KUBA1+8Z62wW9VO6xfCXw1G1EYI6qxJginBDyqiXmMp5grQ+35x8V9nELBEaGcg5I
	9lYdFq2/nHpDPVP3x6qx9kbM35zledodPeHprfcgvPL2rjJtYv6t8z1gzxehEgtXLWDO5d/xCgJWr
	+JktGWn/5KQvjjbHlf4dpTKD099zZjERBFwBNs1npB6Z7daooFoAG47orLodtY6sOzHxo1z5WXWgP
	aDvGPtr31BAqNl3GpZZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5oLL-0001dx-DW; Thu, 05 Sep 2019 09:46:19 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5oLB-0001cl-TL
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 09:46:11 +0000
Received: by mail-ua1-x944.google.com with SMTP id u18so572957uap.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 02:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UvRuIiqr/iKDV9aDWNlA8RrVDzREyScOlO/Z/R/SMk4=;
 b=WvjhViaVgl8x/auA7N3QoKa0pWASaXMpbqUiOjnZ1p3FYEgVVpJk0NHs6ARa3J/Mxc
 XbKEEFE7HfHLJL9pmMO/200PoywVrY3+4VKXW1BHqK01NlXD7cac0nZ89ATICbDRVbNB
 u+NLABTZnHIlKpb9pp2K/1XSrdisQsUgmUjeo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UvRuIiqr/iKDV9aDWNlA8RrVDzREyScOlO/Z/R/SMk4=;
 b=OUUbs9iaI3443ykg32GeSyWNvY3sKnXkUmU2Vxvnn+HgJufUSHZST2NusI20FEv5aV
 GbqMM4M58w4EXRmWsqursutMbF0+VdK5T2D4MJ3A07gUAJStEzVL84eAJjY4DPIN4gqq
 o8+egjMk5q//cg/dHdOcp2JevfnZByO9YU6lvZ8qkORka16R+3QmFgjWqvOANZE75pss
 x0yMgTrjA/gyOQzdYdFFMO0CRoXCX3nJZTQgs1kKRgdZBUY8lu39QK28UASL/jKkvZxa
 Xl5HNudkQGrQfXPdGKOWfIHUqzkxRoS/cc1Gk3+B2LqSbCDbS5kjoB9ARzl/c55EEral
 CdZQ==
X-Gm-Message-State: APjAAAXAIUYMYjVyjhjS5Yzksrmmd5LG0CS8+6qfM5qF20e8W/Uy++lq
 yvCe5deBjn4F3zy0O+aAkwo8wPjVODvjfriuhDZtWw==
X-Google-Smtp-Source: APXvYqwTvrQBn97z7rYT9ixy7UM/J7TliVkIaqrac8Xre+AMHO1uYOYzHMZzz7mlfTa7CsgN/vA8J0CGaj70IMm0CYI=
X-Received: by 2002:a9f:2924:: with SMTP id t33mr921037uat.69.1567676765459;
 Thu, 05 Sep 2019 02:46:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190905094325.33156-1-cychiang@chromium.org>
In-Reply-To: <20190905094325.33156-1-cychiang@chromium.org>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Thu, 5 Sep 2019 17:45:38 +0800
Message-ID: <CAFv8NwJ_3OQgNsim74u-Z3UHyY4OyTJ8Y8JeBSx9m0aWvnmNZA@mail.gmail.com>
Subject: Re: [PATCH v2] drm: bridge/dw_hdmi: add audio sample channel status
 setting
To: linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_024609_958557_3142909D 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 <alsa-devel@alsa-project.org>, kuninori.morimoto.gx@renesas.com,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 cain.cai@rock-chips.com, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Yakir Yang <ykk@rock-chips.com>, sam@ravnborg.org,
 Xing Zheng <zhengxing@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Dylan Reid <dgreid@chromium.org>, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 =?UTF-8?B?6JSh5p6r?= <eddie.cai@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Doug Anderson <dianders@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>, kuankuan.y@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sorry for the noise.
Removed original author ykk@rock-chips.com from the thread because
that mail is obsolete.
Yakir is now using kuankuan.y@gmail.com.


On Thu, Sep 5, 2019 at 5:43 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
>
> From: Yakir Yang <ykk@rock-chips.com>
>
> When transmitting IEC60985 linear PCM audio, we configure the
> Aduio Sample Channel Status information of all the channel
> status bits in the IEC60958 frame.
> Refer to 60958-3 page 10 for frequency, original frequency, and
> wordlength setting.
>
> This fix the issue that audio does not come out on some monitors
> (e.g. LG 22CV241)
>
> Note that these registers are only for interfaces:
> I2S audio interface, General Purpose Audio (GPA), or AHB audio DMA
> (AHBAUDDMA).
> For S/PDIF interface this information comes from the stream.
>
> Currently this function dw_hdmi_set_channel_status is only called
> from dw-hdmi-i2s-audio in I2S setup.
>
> Signed-off-by: Yakir Yang <ykk@rock-chips.com>
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> ---
>  Original patch by Yakir Yang is at
>
>  https://lore.kernel.org/patchwork/patch/539653/
>
>  Change from v1 to v2:
>  1. Remove the version check because this will only be called by
>     dw-hdmi-i2s-audio, and the registers are available in I2S setup.
>  2. Set these registers in dw_hdmi_i2s_hw_params.
>  3. Fix the sample width setting so it can use 16 or 24 bits.
>
>  .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  1 +
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     | 70 +++++++++++++++++++
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.h     | 20 ++++++
>  include/drm/bridge/dw_hdmi.h                  |  2 +
>  4 files changed, 93 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> index 34d8e837555f..b801a28b0f17 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> @@ -102,6 +102,7 @@ static int dw_hdmi_i2s_hw_params(struct device *dev, void *data,
>         }
>
>         dw_hdmi_set_sample_rate(hdmi, hparms->sample_rate);
> +       dw_hdmi_set_channel_status(hdmi, hparms->sample_width);
>         dw_hdmi_set_channel_count(hdmi, hparms->channels);
>         dw_hdmi_set_channel_allocation(hdmi, hparms->cea.channel_allocation);
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index bd65d0479683..d1daa369c8ae 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -582,6 +582,76 @@ static unsigned int hdmi_compute_n(unsigned int freq, unsigned long pixel_clk)
>         return n;
>  }
>
> +/*
> + * When transmitting IEC60958 linear PCM audio, these registers allow to
> + * configure the channel status information of all the channel status
> + * bits in the IEC60958 frame. For the moment this configuration is only
> + * used when the I2S audio interface, General Purpose Audio (GPA),
> + * or AHB audio DMA (AHBAUDDMA) interface is active
> + * (for S/PDIF interface this information comes from the stream).
> + */
> +void dw_hdmi_set_channel_status(struct dw_hdmi *hdmi,
> +                               unsigned int sample_width)
> +{
> +       u8 aud_schnl_samplerate;
> +       u8 aud_schnl_8;
> +       u8 word_length_bits;
> +
> +       switch (hdmi->sample_rate) {
> +       case 32000:
> +               aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_32K;
> +               break;
> +       case 44100:
> +               aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_44K1;
> +               break;
> +       case 48000:
> +               aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_48K;
> +               break;
> +       case 88200:
> +               aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_88K2;
> +               break;
> +       case 96000:
> +               aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_96K;
> +               break;
> +       case 176400:
> +               aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_176K4;
> +               break;
> +       case 192000:
> +               aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_192K;
> +               break;
> +       case 768000:
> +               aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_768K;
> +               break;
> +       default:
> +               dev_warn(hdmi->dev, "Unsupported audio sample rate (%u)\n",
> +                        hdmi->sample_rate);
> +               return;
> +       }
> +
> +       /* set channel status register */
> +       hdmi_modb(hdmi, aud_schnl_samplerate, HDMI_FC_AUDSCHNLS7_SMPRATE_MASK,
> +                 HDMI_FC_AUDSCHNLS7);
> +
> +       /*
> +        * Set original frequency to be the same as frequency.
> +        * Use one-complement value as stated in IEC60958-3 page 13.
> +        */
> +       aud_schnl_8 = (~aud_schnl_samplerate) <<
> +                       HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_OFFSET;
> +
> +       /*
> +        * Refer to IEC60958-3 page 12. We can accept 16 bits or 24 bits.
> +        * Otherwise, set the register to 0t o indicate using default value.
> +        */
> +       word_length_bits = (sample_width == 16) ? 0x2 :
> +                           ((sample_width == 24) ? 0xb : 0);
> +
> +       aud_schnl_8 |= word_length_bits << HDMI_FC_AUDSCHNLS8_WORDLEGNTH_OFFSET;
> +
> +       hdmi_writeb(hdmi, aud_schnl_8, HDMI_FC_AUDSCHNLS8);
> +}
> +EXPORT_SYMBOL_GPL(dw_hdmi_set_channel_status);
> +
>  static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
>         unsigned long pixel_clk, unsigned int sample_rate)
>  {
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> index 6988f12d89d9..619ebc1c8354 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> @@ -158,6 +158,17 @@
>  #define HDMI_FC_SPDDEVICEINF                    0x1062
>  #define HDMI_FC_AUDSCONF                        0x1063
>  #define HDMI_FC_AUDSSTAT                        0x1064
> +#define HDMI_FC_AUDSV                           0x1065
> +#define HDMI_FC_AUDSU                           0x1066
> +#define HDMI_FC_AUDSCHNLS0                      0x1067
> +#define HDMI_FC_AUDSCHNLS1                      0x1068
> +#define HDMI_FC_AUDSCHNLS2                      0x1069
> +#define HDMI_FC_AUDSCHNLS3                      0x106a
> +#define HDMI_FC_AUDSCHNLS4                      0x106b
> +#define HDMI_FC_AUDSCHNLS5                      0x106c
> +#define HDMI_FC_AUDSCHNLS6                      0x106d
> +#define HDMI_FC_AUDSCHNLS7                      0x106e
> +#define HDMI_FC_AUDSCHNLS8                      0x106f
>  #define HDMI_FC_DATACH0FILL                     0x1070
>  #define HDMI_FC_DATACH1FILL                     0x1071
>  #define HDMI_FC_DATACH2FILL                     0x1072
> @@ -706,6 +717,15 @@ enum {
>  /* HDMI_FC_AUDSCHNLS7 field values */
>         HDMI_FC_AUDSCHNLS7_ACCURACY_OFFSET = 4,
>         HDMI_FC_AUDSCHNLS7_ACCURACY_MASK = 0x30,
> +       HDMI_FC_AUDSCHNLS7_SMPRATE_MASK = 0x0f,
> +       HDMI_FC_AUDSCHNLS7_SMPRATE_192K = 0xe,
> +       HDMI_FC_AUDSCHNLS7_SMPRATE_176K4 = 0xc,
> +       HDMI_FC_AUDSCHNLS7_SMPRATE_96K = 0xa,
> +       HDMI_FC_AUDSCHNLS7_SMPRATE_768K = 0x9,
> +       HDMI_FC_AUDSCHNLS7_SMPRATE_88K2 = 0x8,
> +       HDMI_FC_AUDSCHNLS7_SMPRATE_32K = 0x3,
> +       HDMI_FC_AUDSCHNLS7_SMPRATE_48K = 0x2,
> +       HDMI_FC_AUDSCHNLS7_SMPRATE_44K1 = 0x0,
>
>  /* HDMI_FC_AUDSCHNLS8 field values */
>         HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_MASK = 0xf0,
> diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
> index cf528c289857..12144d2f80f4 100644
> --- a/include/drm/bridge/dw_hdmi.h
> +++ b/include/drm/bridge/dw_hdmi.h
> @@ -156,6 +156,8 @@ void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool hpd, bool rx_sense);
>
>  void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate);
>  void dw_hdmi_set_channel_count(struct dw_hdmi *hdmi, unsigned int cnt);
> +void dw_hdmi_set_channel_status(struct dw_hdmi *hdmi,
> +                               unsigned int sample_width);
>  void dw_hdmi_set_channel_allocation(struct dw_hdmi *hdmi, unsigned int ca);
>  void dw_hdmi_audio_enable(struct dw_hdmi *hdmi);
>  void dw_hdmi_audio_disable(struct dw_hdmi *hdmi);
> --
> 2.23.0.187.g17f5b7556c-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
