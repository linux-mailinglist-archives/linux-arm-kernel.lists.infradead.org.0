Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E15E0135F20
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 18:19:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWJGtaI6MK69iYcDpJwq70An+CJyNnjeQi6YOeZWeO8=; b=n1Fe9halEffJHS
	PjsgcQeaZQ5ZOHXw56EU1uBpesEYg/rb3tIdEZTpXzce/QIC1w3aARNfWWuaFmf8CNQO6RVNY7qBw
	ITO5DTJA0qWCRjiAL1JX/ycNZ2KwppcKv5do64xx7KB/DUagaJngDWQ+YbO0dGmNniTH+vzzCrZLp
	FvFz3D6pA3Vv9l+fvef5G/cfUIMLp5g48o51jGrljSirYtu/+rbafBtt/ehP8v5ouNYw2Ja85+5+A
	/4BRZcAzsfPeEgd9zVU4o9G7sEdqC8YURi+WGYqi/GmZTBHiXcs/bNnD/hyt+80qO8MW+th/MKJMl
	9czgj2IMYFHdqEpyXv7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipbSS-0003st-N0; Thu, 09 Jan 2020 17:18:56 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipbSJ-0003sE-CC
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 17:18:48 +0000
Received: by mail-pl1-x642.google.com with SMTP id az3so2798647plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 09:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QruM7l3SXYsrtTftygXWTt26xmnmd51hymBru/1sk+A=;
 b=vDN469ME9O0x1vwjid10Hgw5pByx0LPoB7vOdzhqJRFKnguE2dYv1Mb/JtV9KNovXj
 jKuWM5OJ56843S/WBYOWUgL8Mr9SZA4utT/ViCxykJPG6mTwSKlzcZmkPtKCGgVLg+hI
 waZAeb7DWj1lUljFIMsFOvw/JqfOXWAN01Ln/KG8vO47EeiRTK3UjrbnU54fwQGuRp8A
 t1L1GAu/ruk6lZaGXp5ipPLJ96V6gaASz9i9HQH6NAv4OyVDiBmd7DuIhw9zef5RyOhQ
 ZbkoOoD+km4xg7u/X2eZAisi/rwfBCepGux/a6Q8nG+a3oxcihUrAYo3UlijX2jB7zof
 60oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QruM7l3SXYsrtTftygXWTt26xmnmd51hymBru/1sk+A=;
 b=McqnXwi8UzsdyCUARORuBOEQ/3++snrkXNezU2WRLNZsPbBBg2QkpL3z4b8jleQCOJ
 UeqArDRJEabizClrceuwXxFcsKydrvFbfFSl8cHADqzxfm93nzmHf4ndbUS65jZAMeto
 SNqrERAiWxS18EHzzlWCU0I2mqHrz+IniY7ZoAG8Qd3xs0o37ICdWMlKLW3BO3JTcDXK
 +sbVEYilaAnaCuTXyEOTk6lBWNehEFlMLR4gqt/CzoOCe8NuF+NPajgFiPRXTQoZdiut
 PAofwSVJzuXALLRIJCi3SypR0lg+b1p0nHVTUPc/x0q9C1l9iycGAKb/JK1bkcRD30pI
 +rjQ==
X-Gm-Message-State: APjAAAWC9A9ie9Jf4T/HPK72xIpvLuSqiinBz3W5zugFOvHVZHefoh+7
 /eh0g6NiY2X9T0Sj+YYWI+E=
X-Google-Smtp-Source: APXvYqwAGw9yBi00yDxZBkva7g0lK9/ubOJMap59QLnLvz6Pb4obxJUDwn4byntRSZKeqYbhy9TWbQ==
X-Received: by 2002:a17:902:694b:: with SMTP id
 k11mr12805432plt.334.1578590326176; 
 Thu, 09 Jan 2020 09:18:46 -0800 (PST)
Received: from sriram-VirtualBox ([106.51.31.254])
 by smtp.gmail.com with ESMTPSA id a17sm4085998pjv.6.2020.01.09.09.18.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 09:18:45 -0800 (PST)
Date: Thu, 9 Jan 2020 22:48:36 +0530
From: Sriram Periyasamy <sriram.oqensourz@gmail.com>
To: Jeff Chang <richtek.jeff.chang@gmail.com>
Subject: Re: [alsa-devel] [PATCH v4] ASoC: Add MediaTek MT6660 Speaker Amp
 Driver
Message-ID: <20200109171833.GA2709@sriram-VirtualBox>
References: <1578366545-30251-1-git-send-email-richtek.jeff.chang@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578366545-30251-1-git-send-email-richtek.jeff.chang@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_091847_439515_3E370A2E 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sriram.oqensourz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, tiwai@suse.com,
 lgirdwood@gmail.com, matthias.bgg@gmail.com, broonie@kernel.org,
 jeff_chang@richtek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 11:09:05AM +0800, Jeff Chang wrote:
> From: Jeff Chang <jeff_chang@richtek.com>
> 
> The MT6660 is a boosted BTL class-D amplifier with V/I sensing.
> A built-in DC-DC step-up converter is used to provide efficient
> power for class-D amplifier with multi-level class-G operation.
> The digital audio interface supports I2S, left-justified,
> right-justified, TDM and DSP A/B format for audio in with a data
> out used for chip information like voltage sense and current
> sense, which are able to be monitored via DATAO through proper
> 
> diff --git a/sound/soc/codecs/mt6660.c b/sound/soc/codecs/mt6660.c
> new file mode 100644
> index 0000000..b8fc53b
> --- /dev/null
> +++ b/sound/soc/codecs/mt6660.c
> @@ -0,0 +1,628 @@

> +
> +struct codec_reg_val {
> +	u32 addr;
> +	u32 mask;
> +	u32 data;
> +};

packed structures could have been better.

> +
> +struct reg_size_table {
> +	u32 addr;
> +	u8 size;
> +};

here as well.

> +static int mt6660_get_reg_size(uint32_t addr)
> +{
> +	int i = 0;

redundant initialization.

> +
> +	for (i = 0; i < ARRAY_SIZE(mt6660_reg_size_table); i++) {
> +		if (mt6660_reg_size_table[i].addr == addr)
> +			return mt6660_reg_size_table[i].size;
> +	}
> +	return 1;
> +}
> +
> +static int mt6660_reg_write(void *context, unsigned int reg, unsigned int val)
> +{
> +	struct mt6660_chip *chip = context;
> +	int size = mt6660_get_reg_size(reg);
> +	u8 reg_data[4] = {0};
> +	int i = 0, ret = 0;

redundant initialization.

> +
> +	for (i = 0; i < size; i++)
> +		reg_data[size - i - 1] = (val >> (8 * i)) & 0xff;
> +
> +	ret = i2c_smbus_write_i2c_block_data(chip->i2c, reg, size, reg_data);
> +	if (ret < 0)
> +		return ret;
> +	return 0;

one return can be removed.

> +}
> +
> +static int mt6660_reg_read(void *context, unsigned int reg, unsigned int *val)
> +{
> +	struct mt6660_chip *chip = context;
> +	int size = mt6660_get_reg_size(reg);
> +	int i = 0, ret = 0;

redundant initialization.

> +
> +static int mt6660_codec_dac_event(struct snd_soc_dapm_widget *w,
> +	struct snd_kcontrol *kcontrol, int event)
> +{
> +	switch (event) {
> +	case SND_SOC_DAPM_POST_PMU:
> +		usleep_range(1000, 1100);
> +		break;
> +	}

switch is redundant for one condition.

> +	return 0;
> +}
> +
> +static int mt6660_codec_classd_event(struct snd_soc_dapm_widget *w,
> +	struct snd_kcontrol *kcontrol, int event)
> +{
> +	struct snd_soc_component *component =
> +		snd_soc_dapm_to_component(w->dapm);
> +	int ret = 0;

redundant intialization.

> +static inline int _mt6660_chip_power_on(struct mt6660_chip *chip, int on_off)

inline must here and other places also? Doesn't look like very small code. 
> +{
> +	u8 reg_data = 0;
> +	int ret = 0;
> +

redundant intialization.

> +
> +static int mt6660_apply_plat_data(struct mt6660_chip *chip,
> +		struct snd_soc_component *component)
> +{
> +	size_t i = 0;
> +	int num = chip->plat_data.init_setting_num;
> +	int ret = 0;
> +

redundant intialization and please take care of all places.

> +static inline int _mt6660_chip_sw_reset(struct mt6660_chip *chip)
> +{
> +	int ret;
> +
> +	/* turn on main pll first, then trigger reset */
> +	ret = regmap_write(chip->regmap, 0x03, 0x00);
> +	if (ret < 0)
> +		return ret;
> +	ret = regmap_write(chip->regmap, MT6660_REG_SYSTEM_CTRL, 0x80);

error check not needed?

> +static int mt6660_parse_dt(struct mt6660_chip *chip, struct device *dev)
> +{
> +	struct device_node *np = dev->of_node;
> +	u32 val;
> +	size_t i = 0;
> +
> +	if (!np) {
> +		dev_err(dev, "no device node\n");
> +		return -EINVAL;
> +	}
> +
> +	if (of_property_read_u32(np, "rt,init_setting_num", &val)) {
> +		dev_err(dev, "no init setting\n");
> +		chip->plat_data.init_setting_num = 0;
> +	} else {
> +		chip->plat_data.init_setting_num = val;
> +	}
> +
> +	chip->plat_data.init_setting_addr =
> +		devm_kzalloc(dev, sizeof(u32) *
> +				chip->plat_data.init_setting_num, GFP_KERNEL);
> +	chip->plat_data.init_setting_mask =
> +		devm_kzalloc(dev, sizeof(u32) *
> +				chip->plat_data.init_setting_num, GFP_KERNEL);
> +	chip->plat_data.init_setting_val =
> +		devm_kzalloc(dev, sizeof(u32) *
> +				chip->plat_data.init_setting_num, GFP_KERNEL);
> +

memory allocation failures not taken care of and if
chip->plat_data.init_setting_num is 0, allocation required.

> diff --git a/sound/soc/codecs/mt6660.h b/sound/soc/codecs/mt6660.h
> new file mode 100644
> index 0000000..6c40b40
> --- /dev/null
> +++ b/sound/soc/codecs/mt6660.h
> +
> +struct mt6660_platform_data {
> +	u8 init_setting_num;
> +	u32 *init_setting_addr;
> +	u32 *init_setting_mask;
> +	u32 *init_setting_val;
> +};

packed could have been better.

> +
> +struct mt6660_chip {
> +	struct i2c_client *i2c;
> +	struct device *dev;
> +	struct platform_device *param_dev;
> +	struct mt6660_platform_data plat_data;
> +	struct mutex io_lock;
> +	struct regmap *regmap;
> +	u16 chip_rev;
> +};
> +

here as well.

Thanks,
Sriram.

-- 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
