Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D338CE60
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 10:27:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y63byGzFI7HI+MauXsdmRGreV/ACBKj4F+8w5h72saM=; b=mFmfQNajC5CcRw
	XHyJMnZTIADhxbNdpDWBA3Fm1SheGLvqYnX8yRZou3kjxjXKzWZCwOCLpNK037dQifKf88PI1ZU0E
	13xmUZ4RVfEvgzaVNAPY94RERZfAxnLQY3jMD9NS2ONQ+SpsMoMDBCFe1chOGoXlTBuNewanzHuKr
	s7rOYZWc7pZ37LTOL40Jw+py/uePM447f8NDIqBVgEFk6N2pQNGfC5ko4BV3pqXgaY50kjahheh4V
	hdJM9Ev4USJeuXQa8QI06GSSpbbrdcFrD6CNLmcPc/U/L4CqI7NC/iuy9oFVrO2tyYuAgSVV4F9Do
	DSkiFRjMGkAyVNqdEMRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxodG-0004BJ-Tt; Wed, 14 Aug 2019 08:27:47 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxod3-0004AW-UE
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 08:27:35 +0000
Received: by mail-wm1-x342.google.com with SMTP id m125so3656467wmm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 01:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3gE5kEXYFGYp1NL5CVXFOoRMz6qJmDaHUxtSZp9tvPo=;
 b=XFpfp1W3puWa/3htoMflxHKUuAj7OYdt2KBmq8Qvkhz1yRx5mUcc9kKoRC7hcl+kw2
 Swg5Ybcs6f153Zr3/5NCmVnCmeMvhgvJBZj9+M6S0jK95Ci5q6VSCqHBe8hwkKvHTwOk
 ZEWIOWEN/+ENTAwjEPMmLLYvJv5tcpaVFqzMunbAImN5LndqSbQfw82Q91TqeOsYqPMo
 GaSraPnht5Tk6e8yoWUPi1sOVbSw6DeNqgnQMe/sPZlqY60bbE8qf37lciaeNuPZM7ju
 3AmLP+MxhPVpsrhnLA7eqrrNanxkqQeEMYJn6e/8Fh/QujCfmNy8deCvfNV/JzRR1AHv
 8SRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3gE5kEXYFGYp1NL5CVXFOoRMz6qJmDaHUxtSZp9tvPo=;
 b=i434j9pTLAROvxZm8MRbs3eKuJOBWI9yRckHziAzvlhbThzH1HpN5zWpAPeBKuklPt
 tQuswkP2PIdHcA3HQBgivPLSHkFGarIwdNynRUnXKpWHC1dXssCvaH2GD4MMHJsuZZ0k
 Iwnh2z2446Vuei0wbeVB61ch0qIc4erp56PPC/hnizr8KW83aItq1bpk7V7GUH/aBEKF
 rvLnhLefdg9j0IOmpcBiNod7uKQd8DtmqRipx1iDMc2+//rBXX4W5mmtQ4uFvapfE5hj
 /r/4gza5kuCa/MTc33RzcAvIyqD10czQGYtoiuieJ39w+ebrWONQQGQv8x8hzqKJMJ3O
 f+ng==
X-Gm-Message-State: APjAAAUnwgbV3vEElXcX+rq2/oxLQeOLCyzbhcG1UkZzrkYMIcfvPBLa
 OB5SFaf6zpikn31hkbU45I0=
X-Google-Smtp-Source: APXvYqzo4/ZRcpl9c0AcPvftjkr/MqHRgV4IMgbx+0AnvyTG/HDGl5/VL+ijBc9MbaW5tr8xILbI0A==
X-Received: by 2002:a1c:ed09:: with SMTP id l9mr7274205wmh.58.1565771249331;
 Wed, 14 Aug 2019 01:27:29 -0700 (PDT)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net.
 [89.212.178.211])
 by smtp.gmail.com with ESMTPSA id c15sm65833981wrb.80.2019.08.14.01.27.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 01:27:27 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, codekipper@gmail.com
Subject: Re: [linux-sunxi] [PATCH v5 12/15] ASoC: sun4i-i2s: Add multi-lane
 functionality
Date: Wed, 14 Aug 2019 10:27:26 +0200
Message-ID: <3526410.lk6A0UfGIS@jernej-laptop>
In-Reply-To: <20190814060854.26345-13-codekipper@gmail.com>
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-13-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_012733_980140_9E996749 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 lgirdwood@gmail.com, be17068@iperbole.bo.it, wens@csie.org, broonie@kernel.org,
 maxime.ripard@free-electrons.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne sreda, 14. avgust 2019 ob 08:08:51 CEST je codekipper@gmail.com 
napisal(a):
> From: Marcus Cooper <codekipper@gmail.com>
> 
> The i2s block supports multi-lane i2s output however this functionality
> is only possible in earlier SoCs where the pins are exposed and for
> the i2s block used for HDMI audio on the later SoCs.
> 
> To enable this functionality, an optional property has been added to
> the bindings.
> 
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 28 +++++++++++++++++++++++++---
>  1 file changed, 25 insertions(+), 3 deletions(-)
> 
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index a8d98696fe7c..a020c3b372a8 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -23,7 +23,7 @@
> 
>  #define SUN4I_I2S_CTRL_REG		0x00
>  #define SUN4I_I2S_CTRL_SDO_EN_MASK		GENMASK(11, 8)
> -#define SUN4I_I2S_CTRL_SDO_EN(sdo)			BIT(8 + 
(sdo))
> +#define SUN4I_I2S_CTRL_SDO_EN(lines)		(((1 << lines) - 1) 
<< 8)
>  #define SUN4I_I2S_CTRL_MODE_MASK		BIT(5)
>  #define SUN4I_I2S_CTRL_MODE_SLAVE			(1 << 5)
>  #define SUN4I_I2S_CTRL_MODE_MASTER			(0 << 5)
> @@ -614,6 +614,7 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream
> *substream, struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
>  	int sr, wss, channels;
>  	u32 width;
> +	int lines;
> 
>  	channels = params_channels(params);
>  	if (channels != 2) {
> @@ -622,6 +623,13 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream
> *substream, return -EINVAL;
>  	}
> 
> +	lines = (channels + 1) / 2;
> +
> +	/* Enable the required output lines */
> +	regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
> +			   SUN4I_I2S_CTRL_SDO_EN_MASK,
> +			   SUN4I_I2S_CTRL_SDO_EN(lines));

As Maxime said before, this doesn't work for TDM. Maybe we can skip this for 
now, until we agree on method how to describe channel allocation?

> +
>  	if (i2s->variant->has_chcfg) {
>  		regmap_update_bits(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
>  				   
SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM_MASK,
> @@ -1389,9 +1397,10 @@ static int sun4i_i2s_init_regmap_fields(struct device
> *dev, static int sun4i_i2s_probe(struct platform_device *pdev)
>  {
>  	struct sun4i_i2s *i2s;
> +	struct snd_soc_dai_driver *soc_dai;
>  	struct resource *res;
>  	void __iomem *regs;
> -	int irq, ret;
> +	int irq, ret, val;
> 
>  	i2s = devm_kzalloc(&pdev->dev, sizeof(*i2s), GFP_KERNEL);
>  	if (!i2s)
> @@ -1456,6 +1465,19 @@ static int sun4i_i2s_probe(struct platform_device
> *pdev) i2s->capture_dma_data.addr = res->start + SUN4I_I2S_FIFO_RX_REG;
> i2s->capture_dma_data.maxburst = 8;
> 
> +	soc_dai = devm_kmemdup(&pdev->dev, &sun4i_i2s_dai,
> +			       sizeof(*soc_dai), GFP_KERNEL);
> +	if (!soc_dai) {
> +		ret = -ENOMEM;
> +		goto err_pm_disable;
> +	}
> +
> +	if (!of_property_read_u32(pdev->dev.of_node,
> +				  "allwinner,playback-channels", 
&val)) {
> +		if (val >= 2 && val <= 8)
> +			soc_dai->playback.channels_max = val;
> +	}
> +

Rather than inventing new DT properties, I would rather have multiple 
snd_soc_dai_driver structures, depending on capabilities of that particular 
I2S block. That way we avoid some boilerplate code as can be seen here and 
it's IMO more transparent.

In this case, I would make another snd_soc_dai_driver struct for H3, which has 
channel_max property set to 8 and from patch 14, additional supported formats.

Best regards,
Jernej

>  	pm_runtime_enable(&pdev->dev);
>  	if (!pm_runtime_enabled(&pdev->dev)) {
>  		ret = sun4i_i2s_runtime_resume(&pdev->dev);
> @@ -1465,7 +1487,7 @@ static int sun4i_i2s_probe(struct platform_device
> *pdev)
> 
>  	ret = devm_snd_soc_register_component(&pdev->dev,
>  					      
&sun4i_i2s_component,
> -					      &sun4i_i2s_dai, 
1);
> +					      soc_dai, 1);
>  	if (ret) {
>  		dev_err(&pdev->dev, "Could not register DAI\n");
>  		goto err_suspend;





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
