Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F973A7EE5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 11:10:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1nSSB318VddfVJ8u+fqmiFuYngUj1gc6/SuhmMFUBn4=; b=M/VSdu5OZRVEBa
	SHJkOoJR1OENNljPLrpJmOAbz3qXpYjLhJkeB0AgM4hbj2Orj1Fpi97md1g6nmwxiMtYVtwjVbWB8
	B4kHZOAyUhIQMmUUopqWEZRAq722PhdEcuE6YLwIX++1M76M7niEImWFiAFPgMeD6/MBlW4ggvG3r
	f5e1xAtNEy0JtIt61zMW2Zkbpwav2k/GjANWPfo/sNiE/zVU310iFzUhgOzUY5DXptX8DoHPEvfHd
	L+kbb6jtXaX3AbGIvu63H2NV+tc8OeSaEhgEUUDAwtg0BcXuJHtWBHN0RVX6mx5T8WukolDzD4TpK
	a+rcVqvLwiVFhk6E+2LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5RJ0-0005UP-N0; Wed, 04 Sep 2019 09:10:23 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5RIg-0004mm-L6
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 09:10:05 +0000
Received: by mail-vk1-xa44.google.com with SMTP id u192so1653490vkb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 02:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/7UND9SOq0N/Mu7NFRIefvWNsoxRo00bN5EWVx1PPmg=;
 b=Mlg5W6F0m6BbiO7bLUIcb9iudFcat5z/DX3B7/G8pCGiW9ROsclogeu2jIRlvHzM/d
 IXAxYvgqLjxSbY15XuPpr7HHx82st/A8TT7KGrkwiAwb718KqM9yKz4SKhMnx/QM2w1U
 SMLB3tK9KTJrgBY5A+s3bOjaPYoMoxO05sCsY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/7UND9SOq0N/Mu7NFRIefvWNsoxRo00bN5EWVx1PPmg=;
 b=g983qX3AcP2zAc+DmDjB/80pnl8n8jDqgJdgt51+cIhYiKWQ/W4WyOAq/00sWgxQrt
 0befPBWQJzu9saMQkEhUgE0DAUkJDnzVk96vavdF/t2wsXJxMEnpDQWOr2jg/gVehT3e
 fN1Z1jc5CeF3U4toRclQ8jxyDqDYktjH8ydrYu/WR4pDGLBjdDz/gj3zpVcuviFwdoDz
 lOo2keG8KZ7BhXujtiIYr/qvAoV98X7XSdEJQ+R5L7qBo4JSX4IB9DDs+SidyFuBYYiZ
 X7AkpQ8bSC5TmORgD+AgJ9hTxSzo8N+/VJHZosKv1yz1JtR8qMBAdoz6UD4Jgt8BUsi1
 F4Jw==
X-Gm-Message-State: APjAAAUmU2oCIkF4Vb7hyCLVSlTmieHKkBGEY3vB/2iGxCIlnvWTz+Vj
 EvyA9hp0SLFVWmRV3gF0rPg/PbzpYR58aQhBQTkwaA==
X-Google-Smtp-Source: APXvYqxyUrMUAEkf02GxMqWIIOzfSuvgtrLWM2sSGK16hyG7HzhEOSHPAFZCD4s0FpvvQcKVYvJ3YZLL0+Bj3C67BUA=
X-Received: by 2002:ac5:c4f7:: with SMTP id b23mr14767555vkl.17.1567588196444; 
 Wed, 04 Sep 2019 02:09:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190903055103.134764-1-cychiang@chromium.org>
 <e1c3483c-baa6-c726-e547-fadf40d259f4@baylibre.com>
In-Reply-To: <e1c3483c-baa6-c726-e547-fadf40d259f4@baylibre.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Wed, 4 Sep 2019 17:09:29 +0800
Message-ID: <CAFv8NwKHZM+zTu7GF_J0Xk6hubA2JK4cCsdhsDPOGk=3rnbCZw@mail.gmail.com>
Subject: Re: [PATCH] drm: bridge/dw_hdmi: add audio sample channel status
 setting
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_021002_713674_C3CDF4D0 
X-CRM114-Status: GOOD (  24.35  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
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
 kuninori.morimoto.gx@renesas.com, Xing Zheng <zhengxing@rock-chips.com>,
 cain.cai@rock-chips.com, David Airlie <airlied@linux.ie>, sam@ravnborg.org,
 Jeffy Chen <jeffy.chen@rock-chips.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Doug Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 =?UTF-8?B?6JSh5p6r?= <eddie.cai@rock-chips.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Yakir Yang <ykk@rock-chips.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-rockchip@lists.infradead.org, Dylan Reid <dgreid@chromium.org>,
 kuankuan.y@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Sep 3, 2019 at 5:53 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Hi,
>
> On 03/09/2019 07:51, Cheng-Yi Chiang wrote:
> > From: Yakir Yang <ykk@rock-chips.com>
> >
> > When transmitting IEC60985 linear PCM audio, we configure the
> > Audio Sample Channel Status information of all the channel
> > status bits in the IEC60958 frame.
> > Refer to 60958-3 page 10 for frequency, original frequency, and
> > wordlength setting.
> >
> > This fix the issue that audio does not come out on some monitors
> > (e.g. LG 22CV241)
> >
> > Signed-off-by: Yakir Yang <ykk@rock-chips.com>
> > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > ---
> >  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 59 +++++++++++++++++++++++
> >  drivers/gpu/drm/bridge/synopsys/dw-hdmi.h | 20 ++++++++
> >  2 files changed, 79 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > index bd65d0479683..34d46e25d610 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > @@ -582,6 +582,63 @@ static unsigned int hdmi_compute_n(unsigned int freq, unsigned long pixel_clk)
> >       return n;
> >  }
> >
> > +static void hdmi_set_schnl(struct dw_hdmi *hdmi)
> > +{
> > +     u8 aud_schnl_samplerate;
> > +     u8 aud_schnl_8;
> > +
> > +     /* These registers are on RK3288 using version 2.0a. */
> > +     if (hdmi->version != 0x200a)
> > +             return;
>
> Are these limited to the 2.0a version *in* RK3288, or 2.0a version on all
> SoCs ?
>

In the original patch by Yakir,

https://lore.kernel.org/patchwork/patch/539653/   (sorry, I should
have added this link in the "after the cut" note)

The fix is limited to version 2.0.
Since I am only testing on RK3288 with 2.0a, I change the check to 2.0a only.
I can not test 2.0a version on other SoCs.
The databook I have at hand is 2.0a (not specific to RK3288) so I
think all 2.0a should have this register.

As for other version like version 1.3 on iMX6, there is no such
register, as stated by Russell

http://lkml.iu.edu/hypermail/linux/kernel/1501.3/06268.html.

So at least we should check the version.
Maybe we can set the criteria as version 2.0 or above to make it a safe patch ?
If there is the same need on other SoC with version < 2.0, it can be
added later.
Presumably, there will be databook of that version to help confirming
this setting.

Thanks!
> > +
> > +     switch (hdmi->sample_rate) {
> > +     case 32000:
> > +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_32K;
> > +             break;
> > +     case 44100:
> > +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_44K1;
> > +             break;
> > +     case 48000:
> > +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_48K;
> > +             break;
> > +     case 88200:
> > +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_88K2;
> > +             break;
> > +     case 96000:
> > +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_96K;
> > +             break;
> > +     case 176400:
> > +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_176K4;
> > +             break;
> > +     case 192000:
> > +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_192K;
> > +             break;
> > +     case 768000:
> > +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_768K;
> > +             break;
> > +     default:
> > +             dev_warn(hdmi->dev, "Unsupported audio sample rate (%u)\n",
> > +                      hdmi->sample_rate);
> > +             return;
> > +     }
> > +
> > +     /* set channel status register */
> > +     hdmi_modb(hdmi, aud_schnl_samplerate, HDMI_FC_AUDSCHNLS7_SMPRATE_MASK,
> > +               HDMI_FC_AUDSCHNLS7);
> > +
> > +     /*
> > +      * Set original frequency to be the same as frequency.
> > +      * Use one-complement value as stated in IEC60958-3 page 13.
> > +      */
> > +     aud_schnl_8 = (~aud_schnl_samplerate) <<
> > +                     HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_OFFSET;
> > +
> > +     /* This means word length is 16 bit. Refer to IEC60958-3 page 12. */
> > +     aud_schnl_8 |= 2 << HDMI_FC_AUDSCHNLS8_WORDLEGNTH_OFFSET;
> > +
> > +     hdmi_writeb(hdmi, aud_schnl_8, HDMI_FC_AUDSCHNLS8);
> > +}
> > +
> >  static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
> >       unsigned long pixel_clk, unsigned int sample_rate)
> >  {
> > @@ -620,6 +677,8 @@ static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
> >       hdmi->audio_cts = cts;
> >       hdmi_set_cts_n(hdmi, cts, hdmi->audio_enable ? n : 0);
> >       spin_unlock_irq(&hdmi->audio_lock);
> > +
> > +     hdmi_set_schnl(hdmi);
> >  }
> >
> >  static void hdmi_init_clk_regenerator(struct dw_hdmi *hdmi)
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> > index 6988f12d89d9..619ebc1c8354 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> > @@ -158,6 +158,17 @@
> >  #define HDMI_FC_SPDDEVICEINF                    0x1062
> >  #define HDMI_FC_AUDSCONF                        0x1063
> >  #define HDMI_FC_AUDSSTAT                        0x1064
> > +#define HDMI_FC_AUDSV                           0x1065
> > +#define HDMI_FC_AUDSU                           0x1066
> > +#define HDMI_FC_AUDSCHNLS0                      0x1067
> > +#define HDMI_FC_AUDSCHNLS1                      0x1068
> > +#define HDMI_FC_AUDSCHNLS2                      0x1069
> > +#define HDMI_FC_AUDSCHNLS3                      0x106a
> > +#define HDMI_FC_AUDSCHNLS4                      0x106b
> > +#define HDMI_FC_AUDSCHNLS5                      0x106c
> > +#define HDMI_FC_AUDSCHNLS6                      0x106d
> > +#define HDMI_FC_AUDSCHNLS7                      0x106e
> > +#define HDMI_FC_AUDSCHNLS8                      0x106f
> >  #define HDMI_FC_DATACH0FILL                     0x1070
> >  #define HDMI_FC_DATACH1FILL                     0x1071
> >  #define HDMI_FC_DATACH2FILL                     0x1072
> > @@ -706,6 +717,15 @@ enum {
> >  /* HDMI_FC_AUDSCHNLS7 field values */
> >       HDMI_FC_AUDSCHNLS7_ACCURACY_OFFSET = 4,
> >       HDMI_FC_AUDSCHNLS7_ACCURACY_MASK = 0x30,
> > +     HDMI_FC_AUDSCHNLS7_SMPRATE_MASK = 0x0f,
> > +     HDMI_FC_AUDSCHNLS7_SMPRATE_192K = 0xe,
> > +     HDMI_FC_AUDSCHNLS7_SMPRATE_176K4 = 0xc,
> > +     HDMI_FC_AUDSCHNLS7_SMPRATE_96K = 0xa,
> > +     HDMI_FC_AUDSCHNLS7_SMPRATE_768K = 0x9,
> > +     HDMI_FC_AUDSCHNLS7_SMPRATE_88K2 = 0x8,
> > +     HDMI_FC_AUDSCHNLS7_SMPRATE_32K = 0x3,
> > +     HDMI_FC_AUDSCHNLS7_SMPRATE_48K = 0x2,
> > +     HDMI_FC_AUDSCHNLS7_SMPRATE_44K1 = 0x0,
> >
> >  /* HDMI_FC_AUDSCHNLS8 field values */
> >       HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_MASK = 0xf0,
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
