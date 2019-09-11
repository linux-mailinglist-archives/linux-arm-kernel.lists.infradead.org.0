Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A914CB022C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 18:54:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ePpg+sjUoyLxDty913o+p8o+TkQpfOZW6BkGnQgjAvI=; b=jZ3BQFqOc/yWnp
	9ViuWLqa5wZG+N19UDCEIFV/rdV9KVnK78gucLwyJ6qtdbVvkUv3+OKYp6J7FqBumsVy5jHWl+7ya
	MtvgfZg6u5fqHjHVmiDuA9yvc66BW6ldzL0OuncctEzkKvVCcymavn8yzjHN8unt+nCECOaYOAqZ4
	d+nyREu8fl4JqA1J07nBR0xq4VafN4nR44OVyF93rH48s/Pv6GOt+3EbPjHni9j3jDVbTGnZsJg4/
	CERjaT/xFMvrO2AxlkCG2jyl7uXn7VIeX2/zxa8QY+tSfEY8YHoe5LoknbnBePUFSQOGc0T29sQgZ
	pfc/rUd5W88DQ+ih5M4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i85tD-0003U1-UL; Wed, 11 Sep 2019 16:54:44 +0000
Received: from mailoutvs4.siol.net ([185.57.226.195] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i85sy-0003Sw-R3; Wed, 11 Sep 2019 16:54:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 44A12522489;
 Wed, 11 Sep 2019 18:54:20 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id JqGzle1UahVN; Wed, 11 Sep 2019 18:54:19 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 9203F521CBC;
 Wed, 11 Sep 2019 18:54:19 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id 8399E522314;
 Wed, 11 Sep 2019 18:54:16 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v3] drm: bridge/dw_hdmi: add audio sample channel status
 setting
Date: Wed, 11 Sep 2019 18:54:16 +0200
Message-ID: <10668907.r1TyVuJQb1@jernej-laptop>
In-Reply-To: <1e2ec69d-e42d-4e1b-7ce9-d1620cfbb4c9@baylibre.com>
References: <20190911082646.134347-1-cychiang@chromium.org>
 <1e2ec69d-e42d-4e1b-7ce9-d1620cfbb4c9@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_095429_200883_D3B346D0 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, dianders@chromium.org,
 kuninori.morimoto.gx@renesas.com, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, cain.cai@rock-chips.com, a.hajda@samsung.com,
 Laurent.pinchart@ideasonboard.com, Yakir Yang <ykk@rock-chips.com>,
 sam@ravnborg.org, Jerome Brunet <jbrunet@baylibre.com>,
 zhengxing@rock-chips.com, linux-rockchip@lists.infradead.org,
 dgreid@chromium.org, Cheng-Yi Chiang <cychiang@chromium.org>,
 tzungbi@chromium.org, Jonas Karlman <jonas@kwiboo.se>,
 jeffy.chen@rock-chips.com, eddie.cai@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, enric.balletbo@collabora.com, kuankuan.y@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne sreda, 11. september 2019 ob 18:23:59 CEST je Neil Armstrong napisal(a):
> On 11/09/2019 10:26, Cheng-Yi Chiang wrote:
> > From: Yakir Yang <ykk@rock-chips.com>
> > 
> > When transmitting IEC60985 linear PCM audio, we configure the
> > Aduio Sample Channel Status information in the IEC60958 frame.
> > The status bit is already available in iec.status of hdmi_codec_params.
> > 
> > This fix the issue that audio does not come out on some monitors
> > (e.g. LG 22CV241)
> > 
> > Note that these registers are only for interfaces:
> > I2S audio interface, General Purpose Audio (GPA), or AHB audio DMA
> > (AHBAUDDMA).
> > For S/PDIF interface this information comes from the stream.
> > 
> > Currently this function dw_hdmi_set_channel_status is only called
> > from dw-hdmi-i2s-audio in I2S setup.
> > 
> > Signed-off-by: Yakir Yang <ykk@rock-chips.com>
> > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > ---
> > 
> > Change from v2 to v3:
> > 1. Reuse what is already set in iec.status in hw_param.
> > 2. Remove all useless definition of registers and values.
> > 3. Note that the original sampling frequency is not written to
> > 
> >    the channel status as we reuse create_iec958_consumer in pcm_iec958.c.
> >    Without that it can still play audio fine.
> >  
> >  .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  1 +
> >  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     | 20 +++++++++++++++++++
> >  drivers/gpu/drm/bridge/synopsys/dw-hdmi.h     |  2 ++
> >  include/drm/bridge/dw_hdmi.h                  |  1 +
> >  4 files changed, 24 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c index
> > 34d8e837555f..20f4f92dd866 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > @@ -102,6 +102,7 @@ static int dw_hdmi_i2s_hw_params(struct device *dev,
> > void *data,> 
> >  	}
> >  	
> >  	dw_hdmi_set_sample_rate(hdmi, hparms->sample_rate);
> > 
> > +	dw_hdmi_set_channel_status(hdmi, hparms->iec.status);
> > 
> >  	dw_hdmi_set_channel_count(hdmi, hparms->channels);
> >  	dw_hdmi_set_channel_allocation(hdmi, hparms-
>cea.channel_allocation);
> > 
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c index
> > bd65d0479683..aa7efd4da1c8 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > @@ -582,6 +582,26 @@ static unsigned int hdmi_compute_n(unsigned int freq,
> > unsigned long pixel_clk)> 
> >  	return n;
> >  
> >  }
> > 
> > +/*
> > + * When transmitting IEC60958 linear PCM audio, these registers allow to
> > + * configure the channel status information of all the channel status
> > + * bits in the IEC60958 frame. For the moment this configuration is only
> > + * used when the I2S audio interface, General Purpose Audio (GPA),
> > + * or AHB audio DMA (AHBAUDDMA) interface is active
> > + * (for S/PDIF interface this information comes from the stream).
> > + */
> > +void dw_hdmi_set_channel_status(struct dw_hdmi *hdmi,
> > +				u8 *channel_status)
> > +{
> > +	/*
> > +	 * Set channel status register for frequency and word length.
> > +	 * Use default values for other registers.
> > +	 */
> > +	hdmi_writeb(hdmi, channel_status[3], HDMI_FC_AUDSCHNLS7);
> > +	hdmi_writeb(hdmi, channel_status[4], HDMI_FC_AUDSCHNLS8);
> > +}
> > +EXPORT_SYMBOL_GPL(dw_hdmi_set_channel_status);
> > +
> > 
> >  static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
> >  
> >  	unsigned long pixel_clk, unsigned int sample_rate)
> >  
> >  {
> > 
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> > b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h index
> > 6988f12d89d9..fcff5059db24 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
> > @@ -158,6 +158,8 @@
> > 
> >  #define HDMI_FC_SPDDEVICEINF                    0x1062
> >  #define HDMI_FC_AUDSCONF                        0x1063
> >  #define HDMI_FC_AUDSSTAT                        0x1064
> > 
> > +#define HDMI_FC_AUDSCHNLS7                      0x106e
> > +#define HDMI_FC_AUDSCHNLS8                      0x106f
> > 
> >  #define HDMI_FC_DATACH0FILL                     0x1070
> >  #define HDMI_FC_DATACH1FILL                     0x1071
> >  #define HDMI_FC_DATACH2FILL                     0x1072
> > 
> > diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
> > index cf528c289857..4b3e863c4f8a 100644
> > --- a/include/drm/bridge/dw_hdmi.h
> > +++ b/include/drm/bridge/dw_hdmi.h
> > @@ -156,6 +156,7 @@ void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool
> > hpd, bool rx_sense);> 
> >  void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate);
> >  void dw_hdmi_set_channel_count(struct dw_hdmi *hdmi, unsigned int cnt);
> > 
> > +void dw_hdmi_set_channel_status(struct dw_hdmi *hdmi, u8
> > *channel_status);
> > 
> >  void dw_hdmi_set_channel_allocation(struct dw_hdmi *hdmi, unsigned int
> >  ca);
> >  void dw_hdmi_audio_enable(struct dw_hdmi *hdmi);
> >  void dw_hdmi_audio_disable(struct dw_hdmi *hdmi);
> 
> Looks fine for me:
> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
> 
> Jonas ? Jernej ? Russell ?

Patch itself is fine, I'm just wondering if more information should be copied 
from status array to registers. But I think they are not 1:1 mapping so some 
more work would be needed. Anyway, patch is:

Reviewed-by: Jernej Skrabec <jernej.skrabec@siol.net>

Best regards,
Jernej

> 
> If it's ok for you I'll apply it.
> 
> Neil





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
