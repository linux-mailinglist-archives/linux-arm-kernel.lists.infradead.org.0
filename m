Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93738AD05E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Sep 2019 20:38:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QouCL74+lNJWHMsPm1o7qiwA+JYDnJIt8qvqZlFeaZ4=; b=uwGMOy2LCXnqyJ
	UIKnLfAspJcXPUo2Ilesply19DMkRJWgQruUYMcv+8bBIrKUhTUzEGxxv4wahEA/RFV8OaQvufCGX
	KX6K+Xv8fZgp7hxf0eaj7jLvUrTe95akq+CI4mfTVmucUdEZRqbXmzuo+ZuZ1ucvsANadZPZ0G4Uu
	HJGXxuxaKjJWMU8U7FPrP0bkWPtbGXoEtAJoFlopAUWK2Vz9g1nsO8hNUCgihOroe1s1Ulyj2+sOX
	ljjNQjzK2zD9WWfUuLtSmyL242E1fTybFXBvO0fOiGFLXQRmtn+rEhG0s8ElsSJqSJ9GQiFanBGNa
	VwaQkfqLvtFcfzVuQgbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i725H-0006XQ-Kc; Sun, 08 Sep 2019 18:38:47 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7258-0006FV-AF; Sun, 08 Sep 2019 18:38:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ET7ieJFoegM1tM4/QqDzgswUMxtQx71qgXt8DoFaoWk=; b=0K8xsQpz/1zFDb7y0gmqVWZOy
 lTGgvTR6DE989anIM1Im8UOnQCXgX3FI1Gnl1t/E2fxuI7rfzU55ebHNJiA3OD22pYdXUkOtndeiV
 DJhbH0muPLu+GMTIiOUFGAY8lhB/fz5G8z7ldi2bXtZBRdL9B6x7pSlsRtV9qELOPzM4bS6zeJoGL
 TcNEPbdReT0S56fDmY+nU79dpWu2Vz56gemlD7F0/JA3f8r3qdxDjisq9NSdQbpfGeW4N04jjMbkW
 +XMDU9e+1Bi6LzitEJK6R+Bt3pdGblT+/ULYMI+3F9y66P1dLDBKboGX1nR0CHkzLoSTO/FhpmlL6
 6ny+bdz+g==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:37114)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i724Z-0006KP-1n; Sun, 08 Sep 2019 19:38:03 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i724K-0000LT-Ud; Sun, 08 Sep 2019 19:37:48 +0100
Date: Sun, 8 Sep 2019 19:37:48 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Cheng-Yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH v2] drm: bridge/dw_hdmi: add audio sample channel status
 setting
Message-ID: <20190908183748.GN13294@shell.armlinux.org.uk>
References: <20190905094325.33156-1-cychiang@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905094325.33156-1-cychiang@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_113838_664614_1ECDC3CA 
X-CRM114-Status: GOOD (  24.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, kuninori.morimoto.gx@renesas.com,
 cain.cai@rock-chips.com, airlied@linux.ie, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, a.hajda@samsung.com,
 Laurent.pinchart@ideasonboard.com, Yakir Yang <ykk@rock-chips.com>,
 sam@ravnborg.org, zhengxing@rock-chips.com, linux-rockchip@lists.infradead.org,
 dgreid@chromium.org, tzungbi@chromium.org, jonas@kwiboo.se,
 jeffy.chen@rock-chips.com, eddie.cai@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, jernej.skrabec@siol.net,
 dianders@chromium.org, daniel@ffwll.ch, enric.balletbo@collabora.com,
 kuankuan.y@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 05:43:25PM +0800, Cheng-Yi Chiang wrote:
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
>  	}
>  
>  	dw_hdmi_set_sample_rate(hdmi, hparms->sample_rate);
> +	dw_hdmi_set_channel_status(hdmi, hparms->sample_width);
>  	dw_hdmi_set_channel_count(hdmi, hparms->channels);
>  	dw_hdmi_set_channel_allocation(hdmi, hparms->cea.channel_allocation);
>  

dw_hdmi_i2s_hw_params() is passed the channel status data in
hparams->iec.status  Rather than re-creating it afresh in the driver,
I'd recommend programming the already supplied channel status data
into the registers.

> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index bd65d0479683..d1daa369c8ae 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -582,6 +582,76 @@ static unsigned int hdmi_compute_n(unsigned int freq, unsigned long pixel_clk)
>  	return n;
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
> +				unsigned int sample_width)
> +{
> +	u8 aud_schnl_samplerate;
> +	u8 aud_schnl_8;
> +	u8 word_length_bits;
> +
> +	switch (hdmi->sample_rate) {
> +	case 32000:
> +		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_32K;
> +		break;
> +	case 44100:
> +		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_44K1;
> +		break;
> +	case 48000:
> +		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_48K;
> +		break;
> +	case 88200:
> +		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_88K2;
> +		break;
> +	case 96000:
> +		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_96K;
> +		break;
> +	case 176400:
> +		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_176K4;
> +		break;
> +	case 192000:
> +		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_192K;
> +		break;
> +	case 768000:
> +		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_768K;
> +		break;
> +	default:
> +		dev_warn(hdmi->dev, "Unsupported audio sample rate (%u)\n",
> +			 hdmi->sample_rate);
> +		return;
> +	}
> +
> +	/* set channel status register */
> +	hdmi_modb(hdmi, aud_schnl_samplerate, HDMI_FC_AUDSCHNLS7_SMPRATE_MASK,
> +		  HDMI_FC_AUDSCHNLS7);
> +
> +	/*
> +	 * Set original frequency to be the same as frequency.
> +	 * Use one-complement value as stated in IEC60958-3 page 13.
> +	 */
> +	aud_schnl_8 = (~aud_schnl_samplerate) <<
> +			HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_OFFSET;
> +
> +	/*
> +	 * Refer to IEC60958-3 page 12. We can accept 16 bits or 24 bits.
> +	 * Otherwise, set the register to 0t o indicate using default value.
> +	 */
> +	word_length_bits = (sample_width == 16) ? 0x2 :
> +			    ((sample_width == 24) ? 0xb : 0);
> +
> +	aud_schnl_8 |= word_length_bits << HDMI_FC_AUDSCHNLS8_WORDLEGNTH_OFFSET;
> +
> +	hdmi_writeb(hdmi, aud_schnl_8, HDMI_FC_AUDSCHNLS8);
> +}
> +EXPORT_SYMBOL_GPL(dw_hdmi_set_channel_status);

As mentioned above, the channel status data is actually already
provided - so we don't really need the above at all.  It just
needs the data programmed into the registers.

> +
>  static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
>  	unsigned long pixel_clk, unsigned int sample_rate)
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
>  	HDMI_FC_AUDSCHNLS7_ACCURACY_OFFSET = 4,
>  	HDMI_FC_AUDSCHNLS7_ACCURACY_MASK = 0x30,
> +	HDMI_FC_AUDSCHNLS7_SMPRATE_MASK = 0x0f,
> +	HDMI_FC_AUDSCHNLS7_SMPRATE_192K = 0xe,
> +	HDMI_FC_AUDSCHNLS7_SMPRATE_176K4 = 0xc,
> +	HDMI_FC_AUDSCHNLS7_SMPRATE_96K = 0xa,
> +	HDMI_FC_AUDSCHNLS7_SMPRATE_768K = 0x9,
> +	HDMI_FC_AUDSCHNLS7_SMPRATE_88K2 = 0x8,
> +	HDMI_FC_AUDSCHNLS7_SMPRATE_32K = 0x3,
> +	HDMI_FC_AUDSCHNLS7_SMPRATE_48K = 0x2,
> +	HDMI_FC_AUDSCHNLS7_SMPRATE_44K1 = 0x0,

These look very much like the IEC958_AES* consumer definitions in
include/sound/asoundef.h.

>  /* HDMI_FC_AUDSCHNLS8 field values */
>  	HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_MASK = 0xf0,
> diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
> index cf528c289857..12144d2f80f4 100644
> --- a/include/drm/bridge/dw_hdmi.h
> +++ b/include/drm/bridge/dw_hdmi.h
> @@ -156,6 +156,8 @@ void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool hpd, bool rx_sense);
>  
>  void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate);
>  void dw_hdmi_set_channel_count(struct dw_hdmi *hdmi, unsigned int cnt);
> +void dw_hdmi_set_channel_status(struct dw_hdmi *hdmi,
> +				unsigned int sample_width);
>  void dw_hdmi_set_channel_allocation(struct dw_hdmi *hdmi, unsigned int ca);
>  void dw_hdmi_audio_enable(struct dw_hdmi *hdmi);
>  void dw_hdmi_audio_disable(struct dw_hdmi *hdmi);
> -- 
> 2.23.0.187.g17f5b7556c-goog
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
