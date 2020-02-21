Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B18D7168165
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 16:22:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ruhouq5GAZHIs7KMQjoh0kh0IVWFsohTP0RGmd78AoQ=; b=tcVoMBgVMe91DqA1h01K3nMBUh
	Gt3qy5Ym6M19bDVPBxhrI4yUQnT3rd8vuf53zrYLldq0642YC36HbVRJeGpPc9Z01h9ZTHLgCWX5a
	7arr3JBgZl+8LlO2V+qQ9POCVSnkbBadVjd6zvF5oTW1EyvZ8KdtJeG4W0T6gt/faLHr2eB/xduRu
	prxbZgdvItT95KDPV/QESj97J72BfplMNBUIJhs7iIJnq2VcMpok1tfhooQD9Rkp5TrFeQEKXWe+b
	8YijKuXkEpBkRiwOH/OVX6wYmrLlXG3ZHBVwtxIDdi8BDIkl2haatR1or9SFGQnhNwOJkircC4UA4
	yQfIcEGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5A8i-0007lO-55; Fri, 21 Feb 2020 15:22:52 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5A8Z-0007k6-5u
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 15:22:45 +0000
Received: by mail-wr1-x444.google.com with SMTP id y11so2491147wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 07:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=MWznUWcF0+GyJXpKc77sr8V6T2rancb73H0vzc+QLOc=;
 b=zYcfxKYh5GVdsZmg/VVJtJjJHidVAdAv1fnWLBYz9Qrz9X2tuzafr/TrwUnnZgrVJ0
 oo/BGktTtz5M5+iAIBxO/IZGYNX5JtB/f0qTHFByoAUnTTSWHZyr/vy4DNdhXAAnrd6p
 w9UC8cXQyanPoaRPr57NkWERkM+O7GE+0v3vDXHYVz7yirmIDpPSlTLARtU9LAKMwDGc
 AEGrmIdAQreDdhoms69YXG+cNkuylJ81TqDCurkrK8BVsmuNIz2Gmm92vbpHfdExJeNh
 kiivhGNsMa7XBrLqrpIuZCXL/vk00lxZEJ19nL9AqHm9selU5roj/NJmSNle5A+btUU8
 B/OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=MWznUWcF0+GyJXpKc77sr8V6T2rancb73H0vzc+QLOc=;
 b=cFvk80bdDzGFLwYYNugF4CLeQuXhD0GjSyniUVvK5pO6kbaRjHLKGZhfvtWtPcE2D0
 rjaPHrnE3xLYTHxvJMH1akNg6vzhqbClgV+iiPbl6UDM3JcyB4iq4Mj4VL6E1aaMZHYo
 /jDvJPb/+K4rgOXwSROMxE6omTR7rtwZ9HTAiH2S9ZO+9lqaLbs3RWtZvB1WuJ5ibZi2
 a20WvSBzzHBbgxT+kHJoY5l5fJXVyH258vfJiurJ+c13spPfitqedjoIzG0uT6kXInIa
 YVL5SjYuR/C/D3oq98Rd9CJisVOwSD34dveyBHYSE9h2FgHvLyzEYghXSxfrS8rS9j8z
 t8qg==
X-Gm-Message-State: APjAAAUcHWd6sWRxKqR4oXGtQS/Sksg6nfLYEC5CMF/fdUaOMa40rfkD
 7zIhCoFl5ETStXOY2Weo0KehUg==
X-Google-Smtp-Source: APXvYqzC5K20NkO6ffmWnXnuQxw7QWs99/LdHFkp7c8I5pDrFUq2vNJSnU4dgWi0dy2FTPOqHv04Eg==
X-Received: by 2002:adf:e8ca:: with SMTP id k10mr46562839wrn.50.1582298561100; 
 Fri, 21 Feb 2020 07:22:41 -0800 (PST)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id z6sm4367616wrw.36.2020.02.21.07.22.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 07:22:40 -0800 (PST)
References: <20200220205711.77953-1-martin.blumenstingl@googlemail.com>
 <20200220205711.77953-4-martin.blumenstingl@googlemail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 broonie@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 3/3] ASoC: meson: aiu: add support for the Meson8 and
 Meson8b SoC families
In-reply-to: <20200220205711.77953-4-martin.blumenstingl@googlemail.com>
Date: Fri, 21 Feb 2020 16:22:39 +0100
Message-ID: <1jmu9c2ce8.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_072243_214359_AA625D74 
X-CRM114-Status: GOOD (  22.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, tiwai@suse.com, lgirdwood@gmail.com,
 linux-arm-kernel@lists.infradead.org, perex@perex.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Thu 20 Feb 2020 at 21:57, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> The AIU audio controller on the Meson8 and Meson8b SoC families is
> compatible with the one found in the later GXBB family. Add compatible
> strings for these two older SoC families so the driver can be loaded for
> them.
>
> Instead of using the I2S divider from the AIU_CLK_CTRL_MORE register we
> need to use the I2S divider from the AIU_CLK_CTRL register. This older
> register is less flexible because it only supports four divider settings
> (1, 2, 4, 8) compared to the AIU_CLK_CTRL_MORE register (which supports
> dividers in the range 0..64).
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  sound/soc/meson/Kconfig           |  2 +-
>  sound/soc/meson/aiu-encoder-i2s.c | 92 +++++++++++++++++++++++--------
>  sound/soc/meson/aiu.c             |  9 +++
>  sound/soc/meson/aiu.h             |  1 +
>  4 files changed, 81 insertions(+), 23 deletions(-)
>
> diff --git a/sound/soc/meson/Kconfig b/sound/soc/meson/Kconfig
> index 897a706dcda0..d27e9180b453 100644
> --- a/sound/soc/meson/Kconfig
> +++ b/sound/soc/meson/Kconfig
> @@ -10,7 +10,7 @@ config SND_MESON_AIU
>  	imply SND_SOC_HDMI_CODEC if DRM_MESON_DW_HDMI
>  	help
>  	  Select Y or M to add support for the Audio output subsystem found
> -	  in the Amlogic GX SoC family
> +	  in the Amlogic Meson8, Meson8b and GX SoC families
>  
>  config SND_MESON_AXG_FIFO
>  	tristate
> diff --git a/sound/soc/meson/aiu-encoder-i2s.c b/sound/soc/meson/aiu-encoder-i2s.c
> index 4900e38e7e49..cc73b5d5c2b7 100644
> --- a/sound/soc/meson/aiu-encoder-i2s.c
> +++ b/sound/soc/meson/aiu-encoder-i2s.c
> @@ -111,34 +111,40 @@ static int aiu_encoder_i2s_setup_desc(struct snd_soc_component *component,
>  	return 0;
>  }
>  
> -static int aiu_encoder_i2s_set_clocks(struct snd_soc_component *component,
> -				      struct snd_pcm_hw_params *params)
> +static int aiu_encoder_i2s_set_legacy_div(struct snd_soc_component *component,
> +					  struct snd_pcm_hw_params *params,
> +					  unsigned int bs)
>  {
> -	struct aiu *aiu = snd_soc_component_get_drvdata(component);
> -	unsigned int srate = params_rate(params);
> -	unsigned int fs, bs;
> -
> -	/* Get the oversampling factor */
> -	fs = DIV_ROUND_CLOSEST(clk_get_rate(aiu->i2s.clks[MCLK].clk), srate);
> +	switch (bs) {
> +	case 1:
> +	case 2:
> +	case 4:
> +	case 8:
> +		/* These are the only valid legacy dividers */
> +		break;
>  
> -	if (fs % 64)
> +	default:
> +		dev_err(component->dev, "Unsupported i2s divider: %u\n", bs);
>  		return -EINVAL;
> +	};

Not major but this semicolon should be removed (Thx coccinelle!)

>  
> -	/* Send data MSB first */
> -	snd_soc_component_update_bits(component, AIU_I2S_DAC_CFG,
> -				      AIU_I2S_DAC_CFG_MSB_FIRST,
> -				      AIU_I2S_DAC_CFG_MSB_FIRST);
> +	snd_soc_component_update_bits(component, AIU_CLK_CTRL,
> +				      AIU_CLK_CTRL_I2S_DIV,
> +				      FIELD_PREP(AIU_CLK_CTRL_I2S_DIV,
> +						 __ffs(bs)));
>  
> -	/* Set bclk to lrlck ratio */
> -	snd_soc_component_update_bits(component, AIU_CODEC_DAC_LRCLK_CTRL,
> -				      AIU_CODEC_DAC_LRCLK_CTRL_DIV,
> -				      FIELD_PREP(AIU_CODEC_DAC_LRCLK_CTRL_DIV,
> -						 64 - 1));
> +	snd_soc_component_update_bits(component, AIU_CLK_CTRL_MORE,
> +				      AIU_CLK_CTRL_MORE_I2S_DIV,
> +				      FIELD_PREP(AIU_CLK_CTRL_MORE_I2S_DIV,
> +						 0));
>  
> -	/* Use CLK_MORE for mclk to bclk divider */
> -	snd_soc_component_update_bits(component, AIU_CLK_CTRL,
> -				      AIU_CLK_CTRL_I2S_DIV, 0);
> +	return 0;
> +}
>  
> +static int aiu_encoder_i2s_set_more_div(struct snd_soc_component *component,
> +					struct snd_pcm_hw_params *params,
> +					unsigned int bs)
> +{
>  	/*
>  	 * NOTE: this HW is odd.
>  	 * In most configuration, the i2s divider is 'mclk / blck'.
> @@ -146,7 +152,6 @@ static int aiu_encoder_i2s_set_clocks(struct snd_soc_component *component,
>  	 * increased by 50% to get the correct output rate.
>  	 * No idea why !
>  	 */
> -	bs = fs / 64;
>  	if (params_width(params) == 16 && params_channels(params) == 8) {
>  		if (bs % 2) {
>  			dev_err(component->dev,
> @@ -156,11 +161,54 @@ static int aiu_encoder_i2s_set_clocks(struct snd_soc_component *component,
>  		bs += bs / 2;
>  	}
>  
> +	/* Use CLK_MORE for mclk to bclk divider */
> +	snd_soc_component_update_bits(component, AIU_CLK_CTRL,
> +				      AIU_CLK_CTRL_I2S_DIV,
> +				      FIELD_PREP(AIU_CLK_CTRL_I2S_DIV, 0));
> +
>  	snd_soc_component_update_bits(component, AIU_CLK_CTRL_MORE,
>  				      AIU_CLK_CTRL_MORE_I2S_DIV,
>  				      FIELD_PREP(AIU_CLK_CTRL_MORE_I2S_DIV,
>  						 bs - 1));
>  
> +	return 0;
> +}
> +
> +static int aiu_encoder_i2s_set_clocks(struct snd_soc_component *component,
> +				      struct snd_pcm_hw_params *params)
> +{
> +	struct aiu *aiu = snd_soc_component_get_drvdata(component);
> +	unsigned int srate = params_rate(params);
> +	unsigned int fs, bs;
> +	int ret;
> +
> +	/* Get the oversampling factor */
> +	fs = DIV_ROUND_CLOSEST(clk_get_rate(aiu->i2s.clks[MCLK].clk), srate);
> +
> +	if (fs % 64)
> +		return -EINVAL;
> +
> +	/* Send data MSB first */
> +	snd_soc_component_update_bits(component, AIU_I2S_DAC_CFG,
> +				      AIU_I2S_DAC_CFG_MSB_FIRST,
> +				      AIU_I2S_DAC_CFG_MSB_FIRST);
> +
> +	/* Set bclk to lrlck ratio */
> +	snd_soc_component_update_bits(component, AIU_CODEC_DAC_LRCLK_CTRL,
> +				      AIU_CODEC_DAC_LRCLK_CTRL_DIV,
> +				      FIELD_PREP(AIU_CODEC_DAC_LRCLK_CTRL_DIV,
> +						 64 - 1));
> +
> +	bs = fs / 64;
> +
> +	if (aiu->platform->has_clk_ctrl_more_i2s_div)
> +		ret = aiu_encoder_i2s_set_more_div(component, params, bs);
> +	else
> +		ret = aiu_encoder_i2s_set_legacy_div(component, params, bs);
> +
> +	if (ret)
> +		return ret;
> +
>  	/* Make sure amclk is used for HDMI i2s as well */
>  	snd_soc_component_update_bits(component, AIU_CLK_CTRL_MORE,
>  				      AIU_CLK_CTRL_MORE_HDMI_AMCLK,
> diff --git a/sound/soc/meson/aiu.c b/sound/soc/meson/aiu.c
> index 38209312a8c3..dc35ca79021c 100644
> --- a/sound/soc/meson/aiu.c
> +++ b/sound/soc/meson/aiu.c
> @@ -351,15 +351,24 @@ static int aiu_remove(struct platform_device *pdev)
>  
>  static const struct aiu_platform_data aiu_gxbb_pdata = {
>  	.has_acodec = false,
> +	.has_clk_ctrl_more_i2s_div = true,
>  };
>  
>  static const struct aiu_platform_data aiu_gxl_pdata = {
>  	.has_acodec = true,
> +	.has_clk_ctrl_more_i2s_div = true,
> +};
> +
> +static const struct aiu_platform_data aiu_meson8_pdata = {
> +	.has_acodec = false,
> +	.has_clk_ctrl_more_i2s_div = false,
>  };
>  
>  static const struct of_device_id aiu_of_match[] = {
>  	{ .compatible = "amlogic,aiu-gxbb", .data = &aiu_gxbb_pdata },
>  	{ .compatible = "amlogic,aiu-gxl", .data = &aiu_gxl_pdata },
> +	{ .compatible = "amlogic,aiu-meson8", .data = &aiu_meson8_pdata },
> +	{ .compatible = "amlogic,aiu-meson8b", .data = &aiu_meson8_pdata },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, aiu_of_match);
> diff --git a/sound/soc/meson/aiu.h b/sound/soc/meson/aiu.h
> index ab003638d5e5..87aa19ac4af3 100644
> --- a/sound/soc/meson/aiu.h
> +++ b/sound/soc/meson/aiu.h
> @@ -29,6 +29,7 @@ struct aiu_interface {
>  
>  struct aiu_platform_data {
>  	bool has_acodec;
> +	bool has_clk_ctrl_more_i2s_div;
>  };
>  
>  struct aiu {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
