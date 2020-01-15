Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F15713BB21
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 09:33:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=smJ73ZPZF54nX3/P+f8iSyFumnMSgJBrw7Jwaa15q3k=; b=mXf58RNqJP4KAkblWaVwcV57L
	MyFLgHZgzlKvBYa4UEHtaTk5g93+VDr4K9a2bX1u7YBvQRemivq+tUR98wIL5UKISqW2RWPYokkuL
	Ra99OVIBIe/qGcpktrdjgBAJU08WPXMJZJ7yOnKK4tFDkolZwJZovoGvRsUchSmU5vhNkPJX9QGfk
	ACEz+5nTf16VZXWO5WJslhOdNm4S0VnuaUUK/dPk/gHSl5pDHA7JR2SLv9xjuplPDrETWggRcs4ih
	qp2ipmykiWEsioVKDPz/4Zaqe8K5qkSRV4w5FWRJIbKZiiJJi80ia1z+ka5DleykzSOHXxqq/K3uq
	URWakFduQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ire6g-000702-3E; Wed, 15 Jan 2020 08:32:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ire6P-0006ys-6b
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 08:32:41 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9EDB62187F;
 Wed, 15 Jan 2020 08:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579077156;
 bh=AJyv1HZR4EHgQ2ATWhJRGP+gmuAx89Jzdjy+Kx5JWto=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S3T1oBaqDC6tntUQMYVvrQOVvm4PoNHLCcm6dT2c4bq9ngC9hqWnNpR0Djn//d779
 ZINmrLjH4ZlDVmIA+PN/HR6pE4dCNhE0xcnADbgKkQzaq334ms0vj9p66uDVhBNl5y
 f1Jn3Lo8LiQ2vnlPTcg2SpvCvjbUGXfPcg2w4THI=
Date: Wed, 15 Jan 2020 09:32:33 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Stefan Mavrodiev <stefan@olimex.com>
Subject: Re: [PATCH 2/2] drm: sun4i: hdmi: Add support for sun4i HDMI encoder
 audio
Message-ID: <20200115083233.7wedmnkj4ju4eccv@gilmour.lan>
References: <20200110141140.28527-1-stefan@olimex.com>
 <20200110141140.28527-3-stefan@olimex.com>
 <20200110162631.wbufz5h7nqfgd6am@gilmour.lan>
 <f4ad41ce-e3d0-33e4-1e85-d23e557b484d@olimex.com>
MIME-Version: 1.0
In-Reply-To: <f4ad41ce-e3d0-33e4-1e85-d23e557b484d@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_003237_284684_34C6F6A2 
X-CRM114-Status: GOOD (  38.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 Vinod Koul <vkoul@kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8244443857276768995=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8244443857276768995==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7lkei534qhur3fvp"
Content-Disposition: inline


--7lkei534qhur3fvp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Stefan,

On Tue, Jan 14, 2020 at 11:04:55AM +0200, Stefan Mavrodiev wrote:
> On 1/10/20 6:26 PM, Maxime Ripard wrote:
> > Hi,
> >
> > On Fri, Jan 10, 2020 at 04:11:40PM +0200, Stefan Mavrodiev wrote:
> > > Add HDMI audio support for the sun4i-hdmi encoder, used on
> > > the older Allwinner chips - A10, A20, A31.
> > >
> > > Most of the code is based on the BSP implementation. In it
> > > dditional formats are supported (S20_3LE and S24_LE), however
> > > there where some problems with them and only S16_LE is left.
> > >
> > > Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
> > > ---
> > >   drivers/gpu/drm/sun4i/Kconfig            |   1 +
> > >   drivers/gpu/drm/sun4i/Makefile           |   1 +
> > >   drivers/gpu/drm/sun4i/sun4i_hdmi.h       |  30 ++
> > >   drivers/gpu/drm/sun4i/sun4i_hdmi_audio.c | 375 +++++++++++++++++++++++
> > >   drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c   |   4 +
> > >   5 files changed, 411 insertions(+)
> > >   create mode 100644 drivers/gpu/drm/sun4i/sun4i_hdmi_audio.c
> > >
> > > diff --git a/drivers/gpu/drm/sun4i/Kconfig b/drivers/gpu/drm/sun4i/Kconfig
> > > index 37e90e42943f..192b732b10cd 100644
> > > --- a/drivers/gpu/drm/sun4i/Kconfig
> > > +++ b/drivers/gpu/drm/sun4i/Kconfig
> > > @@ -19,6 +19,7 @@ if DRM_SUN4I
> > >   config DRM_SUN4I_HDMI
> > >          tristate "Allwinner A10 HDMI Controller Support"
> > >          default DRM_SUN4I
> > > +       select SND_PCM_ELD
> > >          help
> > >   	  Choose this option if you have an Allwinner SoC with an HDMI
> > >   	  controller.
> > > diff --git a/drivers/gpu/drm/sun4i/Makefile b/drivers/gpu/drm/sun4i/Makefile
> > > index 0d04f2447b01..e2d82b451c36 100644
> > > --- a/drivers/gpu/drm/sun4i/Makefile
> > > +++ b/drivers/gpu/drm/sun4i/Makefile
> > > @@ -5,6 +5,7 @@ sun4i-frontend-y		+= sun4i_frontend.o
> > >   sun4i-drm-y			+= sun4i_drv.o
> > >   sun4i-drm-y			+= sun4i_framebuffer.o
> > >
> > > +sun4i-drm-hdmi-y		+= sun4i_hdmi_audio.o
> > >   sun4i-drm-hdmi-y		+= sun4i_hdmi_ddc_clk.o
> > >   sun4i-drm-hdmi-y		+= sun4i_hdmi_enc.o
> > >   sun4i-drm-hdmi-y		+= sun4i_hdmi_i2c.o
> > > diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi.h b/drivers/gpu/drm/sun4i/sun4i_hdmi.h
> > > index 7ad3f06c127e..456964e681b0 100644
> > > --- a/drivers/gpu/drm/sun4i/sun4i_hdmi.h
> > > +++ b/drivers/gpu/drm/sun4i/sun4i_hdmi.h
> > > @@ -42,7 +42,32 @@
> > >   #define SUN4I_HDMI_VID_TIMING_POL_VSYNC		BIT(1)
> > >   #define SUN4I_HDMI_VID_TIMING_POL_HSYNC		BIT(0)
> > >
> > > +#define SUN4I_HDMI_AUDIO_CTRL_REG	0x040
> > > +#define SUN4I_HDMI_AUDIO_CTRL_ENABLE		BIT(31)
> > > +#define SUN4I_HDMI_AUDIO_CTRL_RESET		BIT(30)
> > > +
> > > +#define SUN4I_HDMI_AUDIO_FMT_REG	0x048
> > > +#define SUN4I_HDMI_AUDIO_FMT_SRC		BIT(31)
> > > +#define SUN4I_HDMI_AUDIO_FMT_LAYOUT		BIT(3)
> > > +#define SUN4I_HDMI_AUDIO_FMT_CH_CFG(n)		(n - 1)
> > There's the issue multiple times in the headers, but you should wrap n
> > in parentheses to make sure we have no issue with precedence when
> > calling the macro.
> >
> > > +int sun4i_hdmi_audio_create(struct sun4i_hdmi *hdmi)
> > > +{
> > > +	struct snd_soc_card *card = &sun4i_hdmi_audio_card;
> > > +	struct snd_soc_dai_link_component *comp;
> > > +	struct snd_soc_dai_link *link;
> > > +	int ret;
> > > +
> > > +	ret = devm_snd_dmaengine_pcm_register(hdmi->dev,
> > > +					      &sun4i_hdmi_audio_pcm_config, 0);
> > > +	if (ret) {
> > > +		DRM_ERROR("Could not register PCM\n");
> > > +		return ret;
> > > +	}
> > > +
> > > +	ret = devm_snd_soc_register_component(hdmi->dev,
> > > +					      &sun4i_hdmi_audio_component,
> > > +					      &sun4i_hdmi_audio_dai, 1);
> > > +	if (ret) {
> > > +		DRM_ERROR("Could not register DAI\n");
> > > +		return ret;
> > > +	}
> > > +
> > > +	link = devm_kzalloc(hdmi->dev, sizeof(*link), GFP_KERNEL);
> > > +	if (!link)
> > > +		return -ENOMEM;
> > > +
> > > +	comp = devm_kzalloc(hdmi->dev, sizeof(*comp) * 3, GFP_KERNEL);
> > > +	if (!comp)
> > > +		return -ENOMEM;
> > > +
> > > +	link->cpus = &comp[0];
> > > +	link->codecs = &comp[1];
> > > +	link->platforms = &comp[2];
> > > +
> > > +	link->num_cpus = 1;
> > > +	link->num_codecs = 1;
> > > +	link->num_platforms = 1;
> > > +
> > > +	link->playback_only = 1;
> > > +
> > > +	link->name = "SUN4I-HDMI";
> > > +	link->stream_name = "SUN4I-HDMI PCM";
> > > +
> > > +	link->codecs->name = dev_name(hdmi->dev);
> > > +	link->codecs->dai_name	= sun4i_hdmi_audio_dai.name;
> > > +
> > > +	link->cpus->dai_name = dev_name(hdmi->dev);
> > > +
> > > +	link->platforms->name = dev_name(hdmi->dev);
> > > +
> > > +	link->dai_fmt = SND_SOC_DAIFMT_I2S;
> > > +
> > > +	card->dai_link = link;
> > > +	card->num_links = 1;
> > > +	card->dev = hdmi->dev;
> > > +
> > > +	snd_soc_card_set_drvdata(card, hdmi);
> > > +	return devm_snd_soc_register_card(hdmi->dev, card);
> >
> > Out of curiosity, did you try to remove the module with that patch
> > applied? IIRC, these functions will overwrite the device drvdata, and
> > we will try to access them in unbind / remove.
>
> Actually I did not. Just tried that and you're right. The module
> crashes at the unbind call.  I use sun4i_hdmi struct only for
> regmap. Maybe create separate private structure and copy only
> regmap?

I think the issue is that:

  - In bind, we first call dev_set_drvdata on the bound device, with a
    pointer to struct sun4i_hdmi as the value. The driver_data field
    in struct device is now a pointer to our instance of struct
    sun4i_hdmi.

  - In audio create, you then call snd_soc_card_set_drvdata with a
    pointer to struct sun4i_hdmi as the value. The drvdata field in
    the struct snd_soc_card is now a pointer to our instance of struct
    sun4i_hdmi (so far so good).

  - Then you call (devm_)snd_soc_register_card. One of the thing that
    it will do is call drv_set_drvdata on the card->dev device,
    setting it to our pointer to the struct snd_soc_card we provided.
    However, since you set card->dev to the same device than the one
    initially bound, this means that you just overwrote the struct
    sun4i_hdmi pointer with a pointer to struct snd_soc_card.

  - The driver will operate properly, since we never really use the
    driver_data field, in the HDMI driver, except when...

  - At unbind, you retrieve the driver_data field, expecting a struct
    sun4i_hdmi pointer, except you have a pointer to struct
    snd_soc_card, and everything explodes.

I think the way to work around that would be to create a new
(platform_)device for the HDMI audio component, so that ASoC can work
on that device instead.

This seems to be what dw-hdmi is doing here:
https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c#L2812

(Except that they are also using platform_data, since they have
multiple drivers, we wouldn't, so we can just lookup sun4i_hdmi using
the parent's device driver_data).

> > > +}
> > > diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> > > index a7c4654445c7..79ecd89fb705 100644
> > > --- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> > > +++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> > > @@ -114,6 +114,9 @@ static void sun4i_hdmi_enable(struct drm_encoder *encoder)
> > >   		val |= SUN4I_HDMI_VID_CTRL_HDMI_MODE;
> > >
> > >   	writel(val, hdmi->base + SUN4I_HDMI_VID_CTRL_REG);
> > > +
> > > +	if (hdmi->hdmi_audio && sun4i_hdmi_audio_create(hdmi))
> > > +		DRM_ERROR("Couldn't create the HDMI audio adapter\n");
> >
> > So you create the audio card each time the display is enabled? I guess
> > this is to deal with the hotplug?
>
> Yes. See below.
>
> > I'm not sure this is the right thing to do. If I remember well, the
> > ELD are here precisely to let userspace know that the display is
> > plugged (and audio-capable) or not.
> >
> > Also, you don't remove that card in the disable, which mean that if
> > you end up in a situation where you would enable the display, disable
> > it and then enable it again, you have two audio cards now.
>
> There is issue with the hotplug. When inserting the cable, the event
> is detected and the hdmi encoder is enabled. Thus the card is
> created. However further removal and insertions are not
> detected.

I guess we would need to fix that then?

> This is why I don't remove the card.
>
> Also I count on devm_snd_soc_register_card() to release the card.

I think you should really create the card all the time, and just
update the ELD to let the userspace know when something has been
created.

And yeah, we should have a working hotplug, but that's a separate
story :)

Maxime

--7lkei534qhur3fvp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXh7OIQAKCRDj7w1vZxhR
xSGNAQCNXFtKsLB1nNmulxiyZXc/7/SfbpDPB/OKbkP52GqFbQEA63XlCs381oP3
sIQOwaZU0eGpZ8IU+Sse2PFWS9FNTgE=
=hGfC
-----END PGP SIGNATURE-----

--7lkei534qhur3fvp--


--===============8244443857276768995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8244443857276768995==--

