Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B845144BBD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 07:26:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PT0S8C0GdwJLMP9c7h3zdlnZX5mUTs/tmmUCFL2piiU=; b=Lu/9GkfEJYAWtdOSI+Y2nqM/W
	oAOf8XK+khQ9LH99IUpd4paY66qBDaoNvHq3ysFq4s/cWzX1BPP54MvMg8J2iBxtkJGoJV2js3Aeq
	nbxZQhNr7TqfwSn9Rtz3+y7kdSDQ/cZKaOv4JfYnji5upJH86zkiXB1rKuwY4w80/CZM/RRG75Os4
	e7O5qq21I3IhkUNnYyDfEPOAq7uwXNc4p3uD9nY4awrf1yhFTftKPg7+oioMLTHXKfi+QkTSjgThf
	OFbWIIvLihytVW0l+PqK7/55j2AgcyaHeAtEICu/XrnCJgww8c6TECS5SRM1diTE2Xa+u6QaKki7A
	uqIItg8BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu9TO-0007pM-72; Wed, 22 Jan 2020 06:26:42 +0000
Received: from olimex.com ([2001:470:0:1f2::b869:4820])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu9TF-0007oa-Ny
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 06:26:35 +0000
Received: from 94.155.250.134 ([94.155.250.134]) by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Tue, 21 Jan 2020 22:26:28 -0800
Subject: Re: [PATCH v2 2/2] drm: sun4i: hdmi: Add support for sun4i HDMI
 encoder audio
To: Maxime Ripard <mripard@kernel.org>, Stefan Mavrodiev <stefan@olimex.com>
References: <20200120123326.30743-1-stefan@olimex.com>
 <20200120123326.30743-3-stefan@olimex.com>
 <20200121182905.pxs72ojqx5fz2gi3@gilmour.lan>
From: Stefan Mavrodiev <stefan@olimex.com>
Message-ID: <7be957d3-9f04-f71c-3e63-910b0145a8cd@olimex.com>
Date: Wed, 22 Jan 2020 08:26:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200121182905.pxs72ojqx5fz2gi3@gilmour.lan>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_222633_785347_7BEE83B5 
X-CRM114-Status: GOOD (  25.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 1/21/20 8:29 PM, Maxime Ripard wrote:
> +Mark
>
> On Mon, Jan 20, 2020 at 02:33:26PM +0200, Stefan Mavrodiev wrote:
>> Add HDMI audio support for the sun4i-hdmi encoder, used on
>> the older Allwinner chips - A10, A20, A31.
>>
>> Most of the code is based on the BSP implementation. In it
>> dditional formats are supported (S20_3LE and S24_LE), however
>> there where some problems with them and only S16_LE is left.
> What are those problems?
It was all noise. Guess it's some byte alignment issue, but
I didn't manage to solve it.
>
>> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
>> ---
>> +static int sun4i_hdmi_audio_probe(struct platform_device *pdev)
>> +{
>> +	struct snd_soc_card *card = &sun4i_hdmi_audio_card;
>> +	struct snd_soc_dai_link_component *comp;
>> +	struct snd_soc_dai_link *link;
>> +	struct device *dev = &pdev->dev;
>> +	struct sun4i_hdmi_audio *priv;
>> +	int ret;
>> +
>> +	ret = devm_snd_dmaengine_pcm_register(dev,
>> +					      &sun4i_hdmi_audio_pcm_config, 0);
>> +	if (ret) {
>> +		dev_err(dev, "Failed registering PCM DMA component\n");
>> +		return ret;
>> +	}
>> +
>> +	ret = devm_snd_soc_register_component(dev,
>> +					      &sun4i_hdmi_audio_component,
>> +					      &sun4i_hdmi_audio_dai, 1);
>> +	if (ret) {
>> +		dev_err(dev, "Failed registering DAI component\n");
>> +		return ret;
>> +	}
>> +
>> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>> +	if (!priv)
>> +		return -ENOMEM;
>> +
>> +	priv->hdmi = dev->parent;
>> +	dev->of_node = dev->parent->of_node;
>> +
>> +	link = devm_kzalloc(dev, sizeof(*link), GFP_KERNEL);
>> +	if (!link)
>> +		return -ENOMEM;
>> +
>> +	comp = devm_kzalloc(dev, sizeof(*comp) * 3, GFP_KERNEL);
>> +	if (!comp)
>> +		return -ENOMEM;
>> +
>> +	link->cpus = &comp[0];
>> +	link->codecs = &comp[1];
>> +	link->platforms = &comp[2];
>> +
>> +	link->num_cpus = 1;
>> +	link->num_codecs = 1;
>> +	link->num_platforms = 1;
>> +
>> +	link->playback_only = 1;
>> +
>> +	link->name = "SUN4I-HDMI";
>> +	link->stream_name = "SUN4I-HDMI PCM";
>> +
>> +	link->codecs->name = dev_name(dev);
>> +	link->codecs->dai_name	= sun4i_hdmi_audio_dai.name;
>> +
>> +	link->cpus->dai_name = dev_name(dev);
>> +
>> +	link->platforms->name = dev_name(dev);
>> +
>> +	link->dai_fmt = SND_SOC_DAIFMT_I2S;
>> +
>> +	card->dai_link = link;
>> +	card->num_links = 1;
>> +	card->dev = dev;
>> +
>> +	snd_soc_card_set_drvdata(card, priv);
>> +	return devm_snd_soc_register_card(dev, card);
>> +}
>> +
>> +static int sun4i_hdmi_audio_remove(struct platform_device *pdev)
>> +{
>> +	return 0;
>> +}
>> +
>> +static struct platform_driver sun4i_hdmi_audio_driver = {
>> +	.probe	= sun4i_hdmi_audio_probe,
>> +	.remove	= sun4i_hdmi_audio_remove,
>> +	.driver	= {
>> +		.name = DRIVER_NAME,
>> +	},
>> +};
>> +module_platform_driver(sun4i_hdmi_audio_driver);
>> +
>> +MODULE_AUTHOR("Stefan Mavrodiev <stefan@olimex.com");
>> +MODULE_DESCRIPTION("Allwinner A10 HDMI Audio driver");
>> +MODULE_LICENSE("GPL v2");
>> +MODULE_ALIAS("platform:" DRIVER_NAME);
> Sorry if I wasn't clear enough in the previous mail, I didn't suggest
> to do a driver, this will open another can of worm (as kbuild already
> pointed out), but to create a new device, and pass that new device to
> ASoC's functions.

The problem here is that I used sunxi_defconfig instead of the arch
defconfig during testing. The difference is that in "our" config the
modules are built-in and thus there is no module_init.

However I've managed to get it working in v3 (it's not submitted
yet).

I've added separate entry in the Kconfig of type bool. This is to
manage the SND_SOC dependency. The current patch will fail if
SND_SOC=m and SUN4I_HDMI=y for example.

Then I've dropped this as it's useless:

> +module_platform_driver(sun4i_hdmi_audio_driver);
> +
> +MODULE_AUTHOR("Stefan Mavrodiev <stefan@olimex.com");
> +MODULE_DESCRIPTION("Allwinner A10 HDMI Audio driver");
> +MODULE_LICENSE("GPL v2");
> +MODULE_ALIAS("platform:" DRIVER_NAME);
In sun4i_hdmi_enc.c I've added __init and __exit
functions where I register/unregister the additional platform_driver.
Thus we get 2 platform drivers from one module, which is not something
uncommon.

If you like this approach I can submit v3.

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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
