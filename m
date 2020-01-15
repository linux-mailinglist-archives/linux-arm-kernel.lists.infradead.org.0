Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3992A13C0BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:24:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LYGxknsStWJSbbmbKVABcCX8HuRDvAcQzp4hgM8JtCg=; b=meKRLosn/EMJ/vNl9Y6+PVXmm
	0dcUx2RcC02RmYBrIMZKXzuGqFoQjtHFwiMEjFrAa/Uv4930QDlB7pYgv7UKC6Lyb5lOp8mCNIlJQ
	iI5YjMqmrjtHlYAOFC28xwJaYK9MrRZltIh7GHIDAnIsasNeENPpGd+UpN9SaKM4Vb8aFoXB1X1F8
	a21rTxV64v8WzCWC9qDFIfVv8gauJpua6ITYNsnqB12AEeccXgpyitQ2894LzBFhvn8g7PECeXs2m
	HHibVi49Uo5zp/DJBN0VUzB/DDyUIPdD6phZjHYTM8z88qp9rTNiRi7BKz+ov0CvvCt9U1pwHfaOK
	COFhoN2Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irhiE-0008KZ-TE; Wed, 15 Jan 2020 12:23:54 +0000
Received: from olimex.com ([184.105.72.32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irhi1-0008J2-NC
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:23:46 +0000
Received: from 94.155.250.134 ([94.155.250.134]) by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 15 Jan 2020 04:23:28 -0800
Subject: Re: [PATCH 2/2] drm: sun4i: hdmi: Add support for sun4i HDMI encoder
 audio
To: Maxime Ripard <mripard@kernel.org>, Stefan Mavrodiev <stefan@olimex.com>
References: <20200110141140.28527-1-stefan@olimex.com>
 <20200110141140.28527-3-stefan@olimex.com>
 <20200110162631.wbufz5h7nqfgd6am@gilmour.lan>
 <f4ad41ce-e3d0-33e4-1e85-d23e557b484d@olimex.com>
 <20200115083233.7wedmnkj4ju4eccv@gilmour.lan>
From: Stefan Mavrodiev <stefan@olimex.com>
Message-ID: <03081515-efd8-f281-947a-29928c8d5923@olimex.com>
Date: Wed, 15 Jan 2020 14:23:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200115083233.7wedmnkj4ju4eccv@gilmour.lan>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_042341_756678_7FA55716 
X-CRM114-Status: GOOD (  34.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

Hi,

On 1/15/20 10:32 AM, Maxime Ripard wrote:
> Hi Stefan,
>
> On Tue, Jan 14, 2020 at 11:04:55AM +0200, Stefan Mavrodiev wrote:
>> On 1/10/20 6:26 PM, Maxime Ripard wrote:
>>> Hi,
>>>
>>> On Fri, Jan 10, 2020 at 04:11:40PM +0200, Stefan Mavrodiev wrote:
>>>> Add HDMI audio support for the sun4i-hdmi encoder, used on
>>>> the older Allwinner chips - A10, A20, A31.
>>>>
>>>> Most of the code is based on the BSP implementation. In it
>>>> dditional formats are supported (S20_3LE and S24_LE), however
>>>> there where some problems with them and only S16_LE is left.
>>>>
>>>> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
>>>> ---
>>>>    drivers/gpu/drm/sun4i/Kconfig            |   1 +
>>>>    drivers/gpu/drm/sun4i/Makefile           |   1 +
>>>>    drivers/gpu/drm/sun4i/sun4i_hdmi.h       |  30 ++
>>>>    drivers/gpu/drm/sun4i/sun4i_hdmi_audio.c | 375 +++++++++++++++++++++++
>>>>    drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c   |   4 +
>>>>    5 files changed, 411 insertions(+)
>>>>    create mode 100644 drivers/gpu/drm/sun4i/sun4i_hdmi_audio.c
>>>>
>>>> diff --git a/drivers/gpu/drm/sun4i/Kconfig b/drivers/gpu/drm/sun4i/Kconfig
>>>> index 37e90e42943f..192b732b10cd 100644
>>>> --- a/drivers/gpu/drm/sun4i/Kconfig
>>>> +++ b/drivers/gpu/drm/sun4i/Kconfig
>>>> @@ -19,6 +19,7 @@ if DRM_SUN4I
>>>>    config DRM_SUN4I_HDMI
>>>>           tristate "Allwinner A10 HDMI Controller Support"
>>>>           default DRM_SUN4I
>>>> +       select SND_PCM_ELD
>>>>           help
>>>>    	  Choose this option if you have an Allwinner SoC with an HDMI
>>>>    	  controller.
>>>> diff --git a/drivers/gpu/drm/sun4i/Makefile b/drivers/gpu/drm/sun4i/Makefile
>>>> index 0d04f2447b01..e2d82b451c36 100644
>>>> --- a/drivers/gpu/drm/sun4i/Makefile
>>>> +++ b/drivers/gpu/drm/sun4i/Makefile
>>>> @@ -5,6 +5,7 @@ sun4i-frontend-y		+= sun4i_frontend.o
>>>>    sun4i-drm-y			+= sun4i_drv.o
>>>>    sun4i-drm-y			+= sun4i_framebuffer.o
>>>>
>>>> +sun4i-drm-hdmi-y		+= sun4i_hdmi_audio.o
>>>>    sun4i-drm-hdmi-y		+= sun4i_hdmi_ddc_clk.o
>>>>    sun4i-drm-hdmi-y		+= sun4i_hdmi_enc.o
>>>>    sun4i-drm-hdmi-y		+= sun4i_hdmi_i2c.o
>>>> diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi.h b/drivers/gpu/drm/sun4i/sun4i_hdmi.h
>>>> index 7ad3f06c127e..456964e681b0 100644
>>>> --- a/drivers/gpu/drm/sun4i/sun4i_hdmi.h
>>>> +++ b/drivers/gpu/drm/sun4i/sun4i_hdmi.h
>>>> @@ -42,7 +42,32 @@
>>>>    #define SUN4I_HDMI_VID_TIMING_POL_VSYNC		BIT(1)
>>>>    #define SUN4I_HDMI_VID_TIMING_POL_HSYNC		BIT(0)
>>>>
>>>> +#define SUN4I_HDMI_AUDIO_CTRL_REG	0x040
>>>> +#define SUN4I_HDMI_AUDIO_CTRL_ENABLE		BIT(31)
>>>> +#define SUN4I_HDMI_AUDIO_CTRL_RESET		BIT(30)
>>>> +
>>>> +#define SUN4I_HDMI_AUDIO_FMT_REG	0x048
>>>> +#define SUN4I_HDMI_AUDIO_FMT_SRC		BIT(31)
>>>> +#define SUN4I_HDMI_AUDIO_FMT_LAYOUT		BIT(3)
>>>> +#define SUN4I_HDMI_AUDIO_FMT_CH_CFG(n)		(n - 1)
>>> There's the issue multiple times in the headers, but you should wrap n
>>> in parentheses to make sure we have no issue with precedence when
>>> calling the macro.
>>>
>>>> +int sun4i_hdmi_audio_create(struct sun4i_hdmi *hdmi)
>>>> +{
>>>> +	struct snd_soc_card *card = &sun4i_hdmi_audio_card;
>>>> +	struct snd_soc_dai_link_component *comp;
>>>> +	struct snd_soc_dai_link *link;
>>>> +	int ret;
>>>> +
>>>> +	ret = devm_snd_dmaengine_pcm_register(hdmi->dev,
>>>> +					      &sun4i_hdmi_audio_pcm_config, 0);
>>>> +	if (ret) {
>>>> +		DRM_ERROR("Could not register PCM\n");
>>>> +		return ret;
>>>> +	}
>>>> +
>>>> +	ret = devm_snd_soc_register_component(hdmi->dev,
>>>> +					      &sun4i_hdmi_audio_component,
>>>> +					      &sun4i_hdmi_audio_dai, 1);
>>>> +	if (ret) {
>>>> +		DRM_ERROR("Could not register DAI\n");
>>>> +		return ret;
>>>> +	}
>>>> +
>>>> +	link = devm_kzalloc(hdmi->dev, sizeof(*link), GFP_KERNEL);
>>>> +	if (!link)
>>>> +		return -ENOMEM;
>>>> +
>>>> +	comp = devm_kzalloc(hdmi->dev, sizeof(*comp) * 3, GFP_KERNEL);
>>>> +	if (!comp)
>>>> +		return -ENOMEM;
>>>> +
>>>> +	link->cpus = &comp[0];
>>>> +	link->codecs = &comp[1];
>>>> +	link->platforms = &comp[2];
>>>> +
>>>> +	link->num_cpus = 1;
>>>> +	link->num_codecs = 1;
>>>> +	link->num_platforms = 1;
>>>> +
>>>> +	link->playback_only = 1;
>>>> +
>>>> +	link->name = "SUN4I-HDMI";
>>>> +	link->stream_name = "SUN4I-HDMI PCM";
>>>> +
>>>> +	link->codecs->name = dev_name(hdmi->dev);
>>>> +	link->codecs->dai_name	= sun4i_hdmi_audio_dai.name;
>>>> +
>>>> +	link->cpus->dai_name = dev_name(hdmi->dev);
>>>> +
>>>> +	link->platforms->name = dev_name(hdmi->dev);
>>>> +
>>>> +	link->dai_fmt = SND_SOC_DAIFMT_I2S;
>>>> +
>>>> +	card->dai_link = link;
>>>> +	card->num_links = 1;
>>>> +	card->dev = hdmi->dev;
>>>> +
>>>> +	snd_soc_card_set_drvdata(card, hdmi);
>>>> +	return devm_snd_soc_register_card(hdmi->dev, card);
>>> Out of curiosity, did you try to remove the module with that patch
>>> applied? IIRC, these functions will overwrite the device drvdata, and
>>> we will try to access them in unbind / remove.
>> Actually I did not. Just tried that and you're right. The module
>> crashes at the unbind call.  I use sun4i_hdmi struct only for
>> regmap. Maybe create separate private structure and copy only
>> regmap?
> I think the issue is that:
>
>    - In bind, we first call dev_set_drvdata on the bound device, with a
>      pointer to struct sun4i_hdmi as the value. The driver_data field
>      in struct device is now a pointer to our instance of struct
>      sun4i_hdmi.
>
>    - In audio create, you then call snd_soc_card_set_drvdata with a
>      pointer to struct sun4i_hdmi as the value. The drvdata field in
>      the struct snd_soc_card is now a pointer to our instance of struct
>      sun4i_hdmi (so far so good).
>
>    - Then you call (devm_)snd_soc_register_card. One of the thing that
>      it will do is call drv_set_drvdata on the card->dev device,
>      setting it to our pointer to the struct snd_soc_card we provided.
>      However, since you set card->dev to the same device than the one
>      initially bound, this means that you just overwrote the struct
>      sun4i_hdmi pointer with a pointer to struct snd_soc_card.
>
>    - The driver will operate properly, since we never really use the
>      driver_data field, in the HDMI driver, except when...
>
>    - At unbind, you retrieve the driver_data field, expecting a struct
>      sun4i_hdmi pointer, except you have a pointer to struct
>      snd_soc_card, and everything explodes.
>
> I think the way to work around that would be to create a new
> (platform_)device for the HDMI audio component, so that ASoC can work
> on that device instead.
>
> This seems to be what dw-hdmi is doing here:
> https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c#L2812
>
> (Except that they are also using platform_data, since they have
> multiple drivers, we wouldn't, so we can just lookup sun4i_hdmi using
> the parent's device driver_data).
>
>>>> +}
>>>> diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
>>>> index a7c4654445c7..79ecd89fb705 100644
>>>> --- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
>>>> +++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
>>>> @@ -114,6 +114,9 @@ static void sun4i_hdmi_enable(struct drm_encoder *encoder)
>>>>    		val |= SUN4I_HDMI_VID_CTRL_HDMI_MODE;
>>>>
>>>>    	writel(val, hdmi->base + SUN4I_HDMI_VID_CTRL_REG);
>>>> +
>>>> +	if (hdmi->hdmi_audio && sun4i_hdmi_audio_create(hdmi))
>>>> +		DRM_ERROR("Couldn't create the HDMI audio adapter\n");
>>> So you create the audio card each time the display is enabled? I guess
>>> this is to deal with the hotplug?
>> Yes. See below.
>>
>>> I'm not sure this is the right thing to do. If I remember well, the
>>> ELD are here precisely to let userspace know that the display is
>>> plugged (and audio-capable) or not.
>>>
>>> Also, you don't remove that card in the disable, which mean that if
>>> you end up in a situation where you would enable the display, disable
>>> it and then enable it again, you have two audio cards now.
>> There is issue with the hotplug. When inserting the cable, the event
>> is detected and the hdmi encoder is enabled. Thus the card is
>> created. However further removal and insertions are not
>> detected.
> I guess we would need to fix that then?
>
>> This is why I don't remove the card.
>>
>> Also I count on devm_snd_soc_register_card() to release the card.
> I think you should really create the card all the time, and just
> update the ELD to let the userspace know when something has been
> created.
>
> And yeah, we should have a working hotplug, but that's a separate
> story :)

Thank you for the review. Soon I'll prepare v2.

Also I'll check the hotplug issue.

>
> Maxime

Best regards,
Stefan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
