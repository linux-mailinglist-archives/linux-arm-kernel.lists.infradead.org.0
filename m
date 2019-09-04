Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FF4A80A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 12:53:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v10048V6Cn/DGvV6bLrIlKQQ4mIFI7YAeEVNGVVWNGM=; b=dbslEdDMrQp3hU
	uJ3j7B7eZNXRBo9046Tik5uIJB3ooLqI4sXq0ursAMoswuRR56d57irQ+jgYw59PRGiWHHiuoqX40
	i+tUUWSqoRv9sUrPvwdP6G7LnPC0hkp1YTY3cfPkTonVN4EDm1dOTVaSfWG69TXIETVupkM9gPiAh
	mprW2c+ZWm2gXsvz1Ji6ZbAziig+Qv/YABIJlR8H1nvYUGP7c+0nh2Sibg1E9cITNigT8eQSJgFkZ
	vaT9ldrzMPBSekWd5YgAlhKQs9bJ0VBdVR5+Tn0v9CW+t8vxwWjpJ4kZVCn6NOQhbHiHMpIwEJ7UB
	9UfDC8svvUoSPVWFnyHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5SuP-0005i6-Rs; Wed, 04 Sep 2019 10:53:05 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5SuH-0005gN-D1
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 10:52:59 +0000
Received: by mail-ua1-x943.google.com with SMTP id f9so6555140uaj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 03:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e4KIv9I3g7+mOQqRzTP4rO2ZJBefQoecY/Xb2Ym6olU=;
 b=F7InDeDdRxFYW2jGglTfH+IsPhK3owVOWn3dkfwpo+nJLSRDoIp+fkzvjDeg0KbMYy
 RLx8BUk6e8PoVvZbOix87mZMX/EOJHsHM970X3VY1pyk3ySyUBMaTu1Ryh10AN4LYkOQ
 VoGLVuBctVdz6OE9UTz0WnU5x/EoSaeM6JFcM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e4KIv9I3g7+mOQqRzTP4rO2ZJBefQoecY/Xb2Ym6olU=;
 b=AZ1EamGN4MjHKAb3wPgGrn9bPMiROMkaN69S8eufNw1o6FonYQ89aACnkzFSAlZ71a
 NocNYNWrzg6MjjngpQlvvCwhuhbVES2x71cOcPFFq2lONnzxS9eHvXfyrOhn5S5ueEth
 aslN3CJOpVJfRksla0aJLUpoD3dRxHtBF/odthMwDofhjrLIajwvhkUYj15C8anv2r4F
 vs8O42hMTODmgyaMczK51JKaXmediQELfGlI7UTcnHUY41GIQ285xM4sEPXrLxX8xZXU
 FFxn+ooG585tr5IkeDocowULtZS6dxnqlNNdBqVdqZQAE//5yesOSKxvWmRPEHJA+PcK
 Pt3Q==
X-Gm-Message-State: APjAAAW9ctp8GcAh/NqJp8iKpCr/J1Kf/rL0PQdPoMQpYAcEPX3Sj/Ha
 pzfNKFi9jSIuA7h+yIOQ5/9VPZE0z+1skcInPl7TwQ==
X-Google-Smtp-Source: APXvYqzTsm1PRXBLENmLqKrpnRjHHEkTnH3e+BsDOUowsK8ueNa1E9U4VdvhS65bKO4gdsnFmtPbwI6X5Ogz5qz4D7k=
X-Received: by 2002:ab0:7c3:: with SMTP id d3mr19181451uaf.131.1567594374428; 
 Wed, 04 Sep 2019 03:52:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190903055103.134764-1-cychiang@chromium.org>
 <e1c3483c-baa6-c726-e547-fadf40d259f4@baylibre.com>
 <CAFv8NwKHZM+zTu7GF_J0Xk6hubA2JK4cCsdhsDPOGk=3rnbCZw@mail.gmail.com>
 <1a167659-2eb1-d9be-c1ae-4958ac3f7929@baylibre.com>
 <CAFv8NwLFd4EZY5tcYeaagRiHWPx_QWDrtKs3WPT4ouJBMvM-LQ@mail.gmail.com>
 <20190904103150.GK13294@shell.armlinux.org.uk>
In-Reply-To: <20190904103150.GK13294@shell.armlinux.org.uk>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Wed, 4 Sep 2019 18:52:27 +0800
Message-ID: <CAFv8Nw+7DU2iM7XxZ1Nz4BW-=Xv731i-4LXe1_Bfm46hAosnkg@mail.gmail.com>
Subject: Re: [PATCH] drm: bridge/dw_hdmi: add audio sample channel status
 setting
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_035257_475960_BE20F8B6 
X-CRM114-Status: GOOD (  41.46  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
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
 <alsa-devel@alsa-project.org>, kuninori.morimoto.gx@renesas.com,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel <linux-kernel@vger.kernel.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, sam@ravnborg.org,
 cain.cai@rock-chips.com, Xing Zheng <zhengxing@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Dylan Reid <dgreid@chromium.org>,
 tzungbi@chromium.org, Jonas Karlman <jonas@kwiboo.se>,
 Jeffy Chen <jeffy.chen@rock-chips.com>,
 =?UTF-8?B?6JSh5p6r?= <eddie.cai@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Doug Anderson <dianders@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>, kuankuan.y@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 6:32 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Sep 04, 2019 at 05:45:20PM +0800, Cheng-yi Chiang wrote:
> > On Wed, Sep 4, 2019 at 5:28 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
> > >
> > > Hi,
> > >
> > > On 04/09/2019 11:09, Cheng-yi Chiang wrote:
> > > > Hi,
> > > >
> > > > On Tue, Sep 3, 2019 at 5:53 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
> > > >>
> > > >> Hi,
> > > >>
> > > >> On 03/09/2019 07:51, Cheng-Yi Chiang wrote:
> > > >>> From: Yakir Yang <ykk@rock-chips.com>
> > > >>>
> > > >>> When transmitting IEC60985 linear PCM audio, we configure the
> > > >>> Audio Sample Channel Status information of all the channel
> > > >>> status bits in the IEC60958 frame.
> > > >>> Refer to 60958-3 page 10 for frequency, original frequency, and
> > > >>> wordlength setting.
> > > >>>
> > > >>> This fix the issue that audio does not come out on some monitors
> > > >>> (e.g. LG 22CV241)
> > > >>>
> > > >>> Signed-off-by: Yakir Yang <ykk@rock-chips.com>
> > > >>> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > > >>> ---
> > > >>>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 59 +++++++++++++++++++++++
> > > >>>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.h | 20 ++++++++
> > > >>>  2 files changed, 79 insertions(+)
> > > >>>
> > > >>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > > >>> index bd65d0479683..34d46e25d610 100644
> > > >>> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > > >>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > > >>> @@ -582,6 +582,63 @@ static unsigned int hdmi_compute_n(unsigned int freq, unsigned long pixel_clk)
> > > >>>       return n;
> > > >>>  }
> > > >>>
> > > >>> +static void hdmi_set_schnl(struct dw_hdmi *hdmi)
> > > >>> +{
> > > >>> +     u8 aud_schnl_samplerate;
> > > >>> +     u8 aud_schnl_8;
> > > >>> +
> > > >>> +     /* These registers are on RK3288 using version 2.0a. */
> > > >>> +     if (hdmi->version != 0x200a)
> > > >>> +             return;
> > > >>
> > > >> Are these limited to the 2.0a version *in* RK3288, or 2.0a version on all
> > > >> SoCs ?
> > > >>
> > > >
> > > > In the original patch by Yakir,
> > > >
> > > > https://lore.kernel.org/patchwork/patch/539653/   (sorry, I should
> > > > have added this link in the "after the cut" note)
> > > >
> > > > The fix is limited to version 2.0.
> > > > Since I am only testing on RK3288 with 2.0a, I change the check to 2.0a only.
> > > > I can not test 2.0a version on other SoCs.
> > > > The databook I have at hand is 2.0a (not specific to RK3288) so I
> > > > think all 2.0a should have this register.
> > > >
> > > > As for other version like version 1.3 on iMX6, there is no such
> > > > register, as stated by Russell
> > > >
> > > > http://lkml.iu.edu/hypermail/linux/kernel/1501.3/06268.html.
> > >
> > > Russell assumes the registers are not present on the iMX6 IP not having
> > > the I2S registers, but they are present on the IPs configured with I2S
> > > at any versions.
> >
> > I see. Thanks for the check.
> >
> > >
> > > My databook version (1.40.a) specifies :
> > >
> > > fc_audschnls0 to fc_audschnls8
> > >
> > > ```
> > > When transmitting IEC60958 linear PCM audio, this registers allow to configure the channel status
> > > information of all the channel status bits in the IEC60958 frame. For the moment this configuration is only
> > > used when the I2S audio interface, General Purpose Audio (GPA), or AHB audio DMA (AHBAUDDMA)
> > > interface is active (for S/PDIF interface this information comes from the stream).
> > > ```
> > >
> > > But the databook Revision History shows these registers were present since version 1.10a.
> > >
> > > I propose you remove the version check, but you only setup these registers when I2S is enabled:
> > > (hdmi_readb(hdmi, HDMI_CONFIG0_ID) & HDMI_CONFIG0_I2S) until a AHBAUDDMA user needs this,
> > > with a small comment explaining the situation.
> >
> > I see. Sound like a good plan.
> > In sum, I will add
> > set_channel_status()
> > in dw_hdmi.c
> > And in the beginning of this function,
> > check it is using I2S
> >  (hdmi_readb(hdmi, HDMI_CONFIG0_ID) & HDMI_CONFIG0_I2S)
> > with a comment explaining the situation.
> >
> > And let dw-hdmi-audio-i2s dw_hdmi_i2s_hw_params() to call this
> > function after dw_hdmi_set_sample_rate, with word length (or
> > sample_bit) passed it as argument.
>
> If you're going to do it this way, there's little point having the
> check.  The dw-hdmi-audio-i2s device will only be created if that
> ID bit is already set.  So, provided set_channel_status() (which
> should probably be dw_hdmi_set_channel_status()) is only called from
> the I2S driver, then everything should be fine without such a check.
> However, it is worth noting in the docbook comments above the function
> that it is only for I2S setups.
>
I see. Yes it is simpler.
Thanks for the suggestion!
Will fix in v2.


> > I have not tested setting this register here as in the original patch
> > it was set in hdmi_set_clk_regenerator.
> > I will test it and update in my v2.
> >
> > Thanks again to everyone for the prompt reply and help.
> >
> > >
> > > Neil
> > >
> > > >
> > > > So at least we should check the version.
> > > > Maybe we can set the criteria as version 2.0 or above to make it a safe patch ?
> > > > If there is the same need on other SoC with version < 2.0, it can be
> > > > added later.
> > > > Presumably, there will be databook of that version to help confirming
> > > > this setting.
> > > >
> > > > Thanks!
> > > >>> +
> > > >>> +     switch (hdmi->sample_rate) {
> > > >>> +     case 32000:
> > > >>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_32K;
> > > >>> +             break;
> > > >>> +     case 44100:
> > > >>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_44K1;
> > > >>> +             break;
> > > >>> +     case 48000:
> > > >>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_48K;
> > > >>> +             break;
> > > >>> +     case 88200:
> > > >>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_88K2;
> > > >>> +             break;
> > > >>> +     case 96000:
> > > >>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_96K;
> > > >>> +             break;
> > > >>> +     case 176400:
> > > >>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_176K4;
> > > >>> +             break;
> > > >>> +     case 192000:
> > > >>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_192K;
> > > >>> +             break;
> > > >>> +     case 768000:
> > > >>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_768K;
> > > >>> +             break;
> > > >>> +     default:
> > > >>> +             dev_warn(hdmi->dev, "Unsupported audio sample rate (%u)\n",
> > > >>> +                      hdmi->sample_rate);
> > > >>> +             return;
> > > >>> +     }
> > > >>> +
> > > >>> +     /* set channel status register */
> > > >>> +     hdmi_modb(hdmi, aud_schnl_samplerate, HDMI_FC_AUDSCHNLS7_SMPRATE_MASK,
> > > >>> +               HDMI_FC_AUDSCHNLS7);
> > > >>> +
> > > >>> +     /*
> > > >>> +      * Set original frequency to be the same as frequency.
> > > >>> +      * Use one-complement value as stated in IEC60958-3 page 13.
> > > >>> +      */
> > > >>> +     aud_schnl_8 = (~aud_schnl_samplerate) <<
> > > >>> +                     HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_OFFSET;
> > > >>> +
> > > >>> +     /* This means word length is 16 bit. Refer to IEC60958-3 page 12. */
> > > >>> +     aud_schnl_8 |= 2 << HDMI_FC_AUDSCHNLS8_WORDLEGNTH_OFFSET;
> > > >>> +
> > > >>> +     hdmi_writeb(hdmi, aud_schnl_8, HDMI_FC_AUDSCHNLS8);
> > > >>> +}
> > > >>> +
> > > >>>  static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
> > > >>>       unsigned long pixel_clk, unsigned int sample_rate)
> > > >>>  {
> > > >>> @@ -620,6 +677,8 @@ static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
> > > >>>       hdmi->audio_cts = cts;
> > > >>>       hdmi_set_cts_n(hdmi, cts, hdmi->audio_enable ? n : 0);
> > > >>>       spin_unlock_irq(&hdmi->audio_lock);
> > > >>> +
> > > >>> +     hdmi_set_schnl(hdmi);
> > > >>>  }
> > > >>>
> > > >>>  static void hdmi_init_clk_regenerator(struct dw_hdmi *hdmi)
> > > >>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> > > >>> index 6988f12d89d9..619ebc1c8354 100644
> > > >>> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> > > >>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> > > >>> @@ -158,6 +158,17 @@
> > > >>>  #define HDMI_FC_SPDDEVICEINF                    0x1062
> > > >>>  #define HDMI_FC_AUDSCONF                        0x1063
> > > >>>  #define HDMI_FC_AUDSSTAT                        0x1064
> > > >>> +#define HDMI_FC_AUDSV                           0x1065
> > > >>> +#define HDMI_FC_AUDSU                           0x1066
> > > >>> +#define HDMI_FC_AUDSCHNLS0                      0x1067
> > > >>> +#define HDMI_FC_AUDSCHNLS1                      0x1068
> > > >>> +#define HDMI_FC_AUDSCHNLS2                      0x1069
> > > >>> +#define HDMI_FC_AUDSCHNLS3                      0x106a
> > > >>> +#define HDMI_FC_AUDSCHNLS4                      0x106b
> > > >>> +#define HDMI_FC_AUDSCHNLS5                      0x106c
> > > >>> +#define HDMI_FC_AUDSCHNLS6                      0x106d
> > > >>> +#define HDMI_FC_AUDSCHNLS7                      0x106e
> > > >>> +#define HDMI_FC_AUDSCHNLS8                      0x106f
> > > >>>  #define HDMI_FC_DATACH0FILL                     0x1070
> > > >>>  #define HDMI_FC_DATACH1FILL                     0x1071
> > > >>>  #define HDMI_FC_DATACH2FILL                     0x1072
> > > >>> @@ -706,6 +717,15 @@ enum {
> > > >>>  /* HDMI_FC_AUDSCHNLS7 field values */
> > > >>>       HDMI_FC_AUDSCHNLS7_ACCURACY_OFFSET = 4,
> > > >>>       HDMI_FC_AUDSCHNLS7_ACCURACY_MASK = 0x30,
> > > >>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_MASK = 0x0f,
> > > >>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_192K = 0xe,
> > > >>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_176K4 = 0xc,
> > > >>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_96K = 0xa,
> > > >>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_768K = 0x9,
> > > >>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_88K2 = 0x8,
> > > >>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_32K = 0x3,
> > > >>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_48K = 0x2,
> > > >>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_44K1 = 0x0,
> > > >>>
> > > >>>  /* HDMI_FC_AUDSCHNLS8 field values */
> > > >>>       HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_MASK = 0xf0,
> > > >>>
> > > >>
> > >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
