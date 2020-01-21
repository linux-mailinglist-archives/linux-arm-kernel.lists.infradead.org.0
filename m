Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6617814444B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 19:30:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XJE8ikct0y2i7wwVlSNw6KU10Kkdy3IXWbRbMQMu8GE=; b=j6gtfuurLYbpXHy7H5+HaSuEV
	zbJk45gXYXwYoTVVCFtRYfLOpO84q8qhEptpU6ph1ibWb3DLHSJsm7vtLgccsJxhednuIV/BQ7rri
	YE33NZWQSXIbFphecMHKo1yQxhWV1sKkS9ffl2h52kFcjH7qzTzziXmMM6HySNVexG56v3DA3V1vW
	4yOyimoFTzg8Bwjo4BL4nGLGuAIZ7RpXehBJzaD2I8iDh4zejw7yyAylGesPRFV5Q3EaGATpUWff2
	+iq8t6RJZ2uHJyUvZr0Eh6Z/tamrq7NA6yflxwhBNNrJCAR4bhaZDOFtYnXCY5OGN/Q85n1Uu6Ym9
	Q0ezz8kiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ityHm-0005oj-J6; Tue, 21 Jan 2020 18:29:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ityHU-0005nu-4c
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 18:29:45 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F99A2087E;
 Tue, 21 Jan 2020 18:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579631379;
 bh=51yKrmQlPgmeyaypex2fjkBrhPuOWZH0iB5oi4tqThI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eW95Fo3d5uqoxtpENcsNkgmzU63zFhMaZKv/F5WPZkVNdlGolI/KGuuQD6Yy4aJQq
 V8kY9bvRwA+dJ8hUm4SrupskWqblO+Yd29STduEam1HvbJsehbxMNt2TpTkSSfPK56
 Vh4YONOIomQ6fZ9oTBMv4+iaqWFAJqUARF9h1rsE=
Date: Tue, 21 Jan 2020 19:29:37 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Stefan Mavrodiev <stefan@olimex.com>, Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 2/2] drm: sun4i: hdmi: Add support for sun4i HDMI
 encoder audio
Message-ID: <20200121182937.2ak72e4eklk4za2u@gilmour.lan>
References: <20200120123326.30743-1-stefan@olimex.com>
 <20200120123326.30743-3-stefan@olimex.com>
 <20200121182905.pxs72ojqx5fz2gi3@gilmour.lan>
MIME-Version: 1.0
In-Reply-To: <20200121182905.pxs72ojqx5fz2gi3@gilmour.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_102940_220823_4A2F0F63 
X-CRM114-Status: GOOD (  26.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Content-Type: multipart/mixed; boundary="===============8288163861415374347=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8288163861415374347==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cag4omdmo5ru62iz"
Content-Disposition: inline


--cag4omdmo5ru62iz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Actually Cc'ing this time..

On Tue, Jan 21, 2020 at 07:29:05PM +0100, Maxime Ripard wrote:
> +Mark
>
> On Mon, Jan 20, 2020 at 02:33:26PM +0200, Stefan Mavrodiev wrote:
> > Add HDMI audio support for the sun4i-hdmi encoder, used on
> > the older Allwinner chips - A10, A20, A31.
> >
> > Most of the code is based on the BSP implementation. In it
> > dditional formats are supported (S20_3LE and S24_LE), however
> > there where some problems with them and only S16_LE is left.
>
> What are those problems?
>
> > Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
> > ---
>
> > +static int sun4i_hdmi_audio_probe(struct platform_device *pdev)
> > +{
> > +	struct snd_soc_card *card = &sun4i_hdmi_audio_card;
> > +	struct snd_soc_dai_link_component *comp;
> > +	struct snd_soc_dai_link *link;
> > +	struct device *dev = &pdev->dev;
> > +	struct sun4i_hdmi_audio *priv;
> > +	int ret;
> > +
> > +	ret = devm_snd_dmaengine_pcm_register(dev,
> > +					      &sun4i_hdmi_audio_pcm_config, 0);
> > +	if (ret) {
> > +		dev_err(dev, "Failed registering PCM DMA component\n");
> > +		return ret;
> > +	}
> > +
> > +	ret = devm_snd_soc_register_component(dev,
> > +					      &sun4i_hdmi_audio_component,
> > +					      &sun4i_hdmi_audio_dai, 1);
> > +	if (ret) {
> > +		dev_err(dev, "Failed registering DAI component\n");
> > +		return ret;
> > +	}
> > +
> > +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> > +	if (!priv)
> > +		return -ENOMEM;
> > +
> > +	priv->hdmi = dev->parent;
> > +	dev->of_node = dev->parent->of_node;
> > +
> > +	link = devm_kzalloc(dev, sizeof(*link), GFP_KERNEL);
> > +	if (!link)
> > +		return -ENOMEM;
> > +
> > +	comp = devm_kzalloc(dev, sizeof(*comp) * 3, GFP_KERNEL);
> > +	if (!comp)
> > +		return -ENOMEM;
> > +
> > +	link->cpus = &comp[0];
> > +	link->codecs = &comp[1];
> > +	link->platforms = &comp[2];
> > +
> > +	link->num_cpus = 1;
> > +	link->num_codecs = 1;
> > +	link->num_platforms = 1;
> > +
> > +	link->playback_only = 1;
> > +
> > +	link->name = "SUN4I-HDMI";
> > +	link->stream_name = "SUN4I-HDMI PCM";
> > +
> > +	link->codecs->name = dev_name(dev);
> > +	link->codecs->dai_name	= sun4i_hdmi_audio_dai.name;
> > +
> > +	link->cpus->dai_name = dev_name(dev);
> > +
> > +	link->platforms->name = dev_name(dev);
> > +
> > +	link->dai_fmt = SND_SOC_DAIFMT_I2S;
> > +
> > +	card->dai_link = link;
> > +	card->num_links = 1;
> > +	card->dev = dev;
> > +
> > +	snd_soc_card_set_drvdata(card, priv);
> > +	return devm_snd_soc_register_card(dev, card);
> > +}
> > +
> > +static int sun4i_hdmi_audio_remove(struct platform_device *pdev)
> > +{
> > +	return 0;
> > +}
> > +
> > +static struct platform_driver sun4i_hdmi_audio_driver = {
> > +	.probe	= sun4i_hdmi_audio_probe,
> > +	.remove	= sun4i_hdmi_audio_remove,
> > +	.driver	= {
> > +		.name = DRIVER_NAME,
> > +	},
> > +};
> > +module_platform_driver(sun4i_hdmi_audio_driver);
> > +
> > +MODULE_AUTHOR("Stefan Mavrodiev <stefan@olimex.com");
> > +MODULE_DESCRIPTION("Allwinner A10 HDMI Audio driver");
> > +MODULE_LICENSE("GPL v2");
> > +MODULE_ALIAS("platform:" DRIVER_NAME);
>
> Sorry if I wasn't clear enough in the previous mail, I didn't suggest
> to do a driver, this will open another can of worm (as kbuild already
> pointed out), but to create a new device, and pass that new device to
> ASoC's functions.
>
> I tried that, and failed, so I guess it's not an option either.
>
> Mark, our issue here is that we have a driver tied to a device that is
> an HDMI encoder. Obviously, we'll want to register into DRM, which is
> what we were doing so far, with the usual case where at remove /
> unbind time, in order to free the resources, we just retrieve our
> pointer to our private structure using the device's drvdata.
>
> Now, snd_soc_register_card also sets that pointer to the card we try
> to register, which is problematic. It seems that it's used to handle
> suspend / resume automatically, which in this case would be also not
> really fit for us (or rather, we would need to do more that just
> suspend the audio part).
>
> Is there anyway we can have that kind of setup? I believe vc4 is in a
> similar situation, but they worked around it by storing the data they
> want to access in a global pointer, but that only works for one device
> which doesn't really suit us either.
>
> Any suggestions?
> Thanks!
> Maxime

--cag4omdmo5ru62iz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXidDEQAKCRDj7w1vZxhR
xcfQAP9h+bAMOK6CttQGExCiUhHsu7AAwXShhNOzsQ0EX4W+5wD9HoQMFxRS3p4X
/GofiUq7GHDK4SgSeA3DOZKvj2lQdwk=
=ZXb2
-----END PGP SIGNATURE-----

--cag4omdmo5ru62iz--


--===============8288163861415374347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8288163861415374347==--

