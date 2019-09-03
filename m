Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7C1A7245
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 20:09:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVcUrKnBWJet/9m3MIKPxuXwcBzp7El4TDxkECakFpw=; b=Yh1zdV4CtVaSqE
	mc3T3ZJg0L2UuClNn7sHIWgVHpzmAeMNF6WiDQUeF9i/bezAmms+5w3+oJVneXEjJscnIdwkBtpPP
	hS4oo/rzuU64p7ckld/5seOYcvQcfYoa8RmprSldPRTVxLjVjwMssflOkmcVhx/TwcRtmxqQIOOuW
	KeaHoQKWOAx7bllLmZX4sh60gUjhHbbCpq/OQfZPpLhxAP7HUfc+0OAQwWRRCzYwoEjxXYY2mhphi
	8pyqjhiKnYB4WD09PhmvKr6hCc9X/u4CRF9BusApbMsQdPI9xBm74egNnyZO3ARaUEdw1uROJm3Or
	2lf6XG/gGhwS+2fCZhXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5DEf-0006vX-Hg; Tue, 03 Sep 2019 18:08:57 +0000
Received: from mailoutvs7.siol.net ([185.57.226.198] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5DER-0006uZ-TS; Tue, 03 Sep 2019 18:08:46 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id A94315219C4;
 Tue,  3 Sep 2019 20:08:33 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id P2mZ8gzE8-O5; Tue,  3 Sep 2019 20:08:33 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id E59FD521C1B;
 Tue,  3 Sep 2019 20:08:32 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 5FE0D5219C4;
 Tue,  3 Sep 2019 20:08:28 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] drm: bridge/dw_hdmi: add audio sample channel status
 setting
Date: Tue, 03 Sep 2019 20:08:28 +0200
Message-ID: <19353031.SdOy5F5fmg@jernej-laptop>
In-Reply-To: <d8a80ba5-dd2b-f84d-bbfc-9dd5ccbc26e9@baylibre.com>
References: <20190903055103.134764-1-cychiang@chromium.org>
 <e1c3483c-baa6-c726-e547-fadf40d259f4@baylibre.com>
 <d8a80ba5-dd2b-f84d-bbfc-9dd5ccbc26e9@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_110844_114828_3AF34CA9 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
 dianders@chromium.org, a.hajda@samsung.com, Laurent.pinchart@ideasonboard.com,
 Yakir Yang <ykk@rock-chips.com>, sam@ravnborg.org,
 Cheng-Yi Chiang <cychiang@chromium.org>, zhengxing@rock-chips.com,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, jeffy.chen@rock-chips.com,
 eddie.cai@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, enric.balletbo@collabora.com,
 kuankuan.y@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne torek, 03. september 2019 ob 20:00:33 CEST je Neil Armstrong napisal(a):
> Hi,
> =

> Le 03/09/2019 =E0 11:53, Neil Armstrong a =E9crit :
> > Hi,
> > =

> > On 03/09/2019 07:51, Cheng-Yi Chiang wrote:
> >> From: Yakir Yang <ykk@rock-chips.com>
> >> =

> >> When transmitting IEC60985 linear PCM audio, we configure the
> >> Audio Sample Channel Status information of all the channel
> >> status bits in the IEC60958 frame.
> >> Refer to 60958-3 page 10 for frequency, original frequency, and
> >> wordlength setting.
> >> =

> >> This fix the issue that audio does not come out on some monitors
> >> (e.g. LG 22CV241)
> >> =

> >> Signed-off-by: Yakir Yang <ykk@rock-chips.com>
> >> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> >> ---
> >> =

> >>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 59 +++++++++++++++++++++++
> >>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.h | 20 ++++++++
> >>  2 files changed, 79 insertions(+)
> >> =

> >> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> >> b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c index
> >> bd65d0479683..34d46e25d610 100644
> >> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> >> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> >> @@ -582,6 +582,63 @@ static unsigned int hdmi_compute_n(unsigned int
> >> freq, unsigned long pixel_clk)>> =

> >>  	return n;
> >>  =

> >>  }
> >> =

> >> +static void hdmi_set_schnl(struct dw_hdmi *hdmi)
> >> +{
> >> +	u8 aud_schnl_samplerate;
> >> +	u8 aud_schnl_8;
> >> +
> >> +	/* These registers are on RK3288 using version 2.0a. */
> >> +	if (hdmi->version !=3D 0x200a)
> >> +		return;
> > =

> > Are these limited to the 2.0a version *in* RK3288, or 2.0a version on a=
ll
> > SoCs ?
> =

> After investigations, Amlogic sets these registers on their 2.0a version
> aswell, and Jernej (added in Cc) reported me Allwinner sets them on their
> < 2.0a and > 2.0a IPs versions.
> =

> Can you check on the Rockchip IP versions in RK3399 ?
> =

> For reference, the HDMI 1.4a IP version allwinner setups is:
> https://github.com/Allwinner-Homlet/H3-BSP4.4-linux/blob/master/drivers/v=
ide
> o/fbdev/sunxi/disp2/hdmi/hdmi_bsp_sun8iw7.c#L531-L539 (registers a
> "scrambled" but a custom bit can reset to the original mapping, 0x1066 ...
> 0x106f)

For easier reading, here is similar, but annotated version: http://ix.io/1U=
b6
Check function bsp_hdmi_audio().

Unless there is a special reason, you can just remove that check.

Best regards,
Jernej

> =

> Neil
> =

> >> +
> >> +	switch (hdmi->sample_rate) {
> >> +	case 32000:
> >> +		aud_schnl_samplerate =3D HDMI_FC_AUDSCHNLS7_SMPRATE_32K;
> >> +		break;
> >> +	case 44100:
> >> +		aud_schnl_samplerate =3D HDMI_FC_AUDSCHNLS7_SMPRATE_44K1;
> >> +		break;
> >> +	case 48000:
> >> +		aud_schnl_samplerate =3D HDMI_FC_AUDSCHNLS7_SMPRATE_48K;
> >> +		break;
> >> +	case 88200:
> >> +		aud_schnl_samplerate =3D HDMI_FC_AUDSCHNLS7_SMPRATE_88K2;
> >> +		break;
> >> +	case 96000:
> >> +		aud_schnl_samplerate =3D HDMI_FC_AUDSCHNLS7_SMPRATE_96K;
> >> +		break;
> >> +	case 176400:
> >> +		aud_schnl_samplerate =3D =

HDMI_FC_AUDSCHNLS7_SMPRATE_176K4;
> >> +		break;
> >> +	case 192000:
> >> +		aud_schnl_samplerate =3D HDMI_FC_AUDSCHNLS7_SMPRATE_192K;
> >> +		break;
> >> +	case 768000:
> >> +		aud_schnl_samplerate =3D HDMI_FC_AUDSCHNLS7_SMPRATE_768K;
> >> +		break;
> >> +	default:
> >> +		dev_warn(hdmi->dev, "Unsupported audio sample rate (%u)
\n",
> >> +			 hdmi->sample_rate);
> >> +		return;
> >> +	}
> >> +
> >> +	/* set channel status register */
> >> +	hdmi_modb(hdmi, aud_schnl_samplerate, =

HDMI_FC_AUDSCHNLS7_SMPRATE_MASK,
> >> +		  HDMI_FC_AUDSCHNLS7);
> >> +
> >> +	/*
> >> +	 * Set original frequency to be the same as frequency.
> >> +	 * Use one-complement value as stated in IEC60958-3 page 13.
> >> +	 */
> >> +	aud_schnl_8 =3D (~aud_schnl_samplerate) <<
> >> +			HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_OFFSET;
> >> +
> >> +	/* This means word length is 16 bit. Refer to IEC60958-3 page 12. =

*/
> >> +	aud_schnl_8 |=3D 2 << HDMI_FC_AUDSCHNLS8_WORDLEGNTH_OFFSET;
> >> +
> >> +	hdmi_writeb(hdmi, aud_schnl_8, HDMI_FC_AUDSCHNLS8);
> >> +}
> >> +
> >> =

> >>  static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
> >>  =

> >>  	unsigned long pixel_clk, unsigned int sample_rate)
> >>  =

> >>  {
> >> =

> >> @@ -620,6 +677,8 @@ static void hdmi_set_clk_regenerator(struct dw_hdmi
> >> *hdmi,>> =

> >>  	hdmi->audio_cts =3D cts;
> >>  	hdmi_set_cts_n(hdmi, cts, hdmi->audio_enable ? n : 0);
> >>  	spin_unlock_irq(&hdmi->audio_lock);
> >> =

> >> +
> >> +	hdmi_set_schnl(hdmi);
> >> =

> >>  }
> >>  =

> >>  static void hdmi_init_clk_regenerator(struct dw_hdmi *hdmi)
> >> =

> >> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> >> b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h index
> >> 6988f12d89d9..619ebc1c8354 100644
> >> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> >> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> >> @@ -158,6 +158,17 @@
> >> =

> >>  #define HDMI_FC_SPDDEVICEINF                    0x1062
> >>  #define HDMI_FC_AUDSCONF                        0x1063
> >>  #define HDMI_FC_AUDSSTAT                        0x1064
> >> =

> >> +#define HDMI_FC_AUDSV                           0x1065
> >> +#define HDMI_FC_AUDSU                           0x1066
> >> +#define HDMI_FC_AUDSCHNLS0                      0x1067
> >> +#define HDMI_FC_AUDSCHNLS1                      0x1068
> >> +#define HDMI_FC_AUDSCHNLS2                      0x1069
> >> +#define HDMI_FC_AUDSCHNLS3                      0x106a
> >> +#define HDMI_FC_AUDSCHNLS4                      0x106b
> >> +#define HDMI_FC_AUDSCHNLS5                      0x106c
> >> +#define HDMI_FC_AUDSCHNLS6                      0x106d
> >> +#define HDMI_FC_AUDSCHNLS7                      0x106e
> >> +#define HDMI_FC_AUDSCHNLS8                      0x106f
> >> =

> >>  #define HDMI_FC_DATACH0FILL                     0x1070
> >>  #define HDMI_FC_DATACH1FILL                     0x1071
> >>  #define HDMI_FC_DATACH2FILL                     0x1072
> >> =

> >> @@ -706,6 +717,15 @@ enum {
> >> =

> >>  /* HDMI_FC_AUDSCHNLS7 field values */
> >>  =

> >>  	HDMI_FC_AUDSCHNLS7_ACCURACY_OFFSET =3D 4,
> >>  	HDMI_FC_AUDSCHNLS7_ACCURACY_MASK =3D 0x30,
> >> =

> >> +	HDMI_FC_AUDSCHNLS7_SMPRATE_MASK =3D 0x0f,
> >> +	HDMI_FC_AUDSCHNLS7_SMPRATE_192K =3D 0xe,
> >> +	HDMI_FC_AUDSCHNLS7_SMPRATE_176K4 =3D 0xc,
> >> +	HDMI_FC_AUDSCHNLS7_SMPRATE_96K =3D 0xa,
> >> +	HDMI_FC_AUDSCHNLS7_SMPRATE_768K =3D 0x9,
> >> +	HDMI_FC_AUDSCHNLS7_SMPRATE_88K2 =3D 0x8,
> >> +	HDMI_FC_AUDSCHNLS7_SMPRATE_32K =3D 0x3,
> >> +	HDMI_FC_AUDSCHNLS7_SMPRATE_48K =3D 0x2,
> >> +	HDMI_FC_AUDSCHNLS7_SMPRATE_44K1 =3D 0x0,
> >> =

> >>  /* HDMI_FC_AUDSCHNLS8 field values */
> >>  =

> >>  	HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_MASK =3D 0xf0,





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
