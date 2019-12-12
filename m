Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D4A11CA7B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 11:20:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RUybG3SfFrY0oCYLapZWIRO8EWo/MvvoDO+9PBW3vnY=; b=YRlX9zCH9wVTd2v5Oqbe7AAa+B
	wFm1pi1M8UAefp8/auBRlPaBCLqyjoorzvvxXTNwEzpiI1xUtq/M3xx5LrF360ZZrTitu12tf+Bqn
	yv3YRZ80tGTmA2B/UZ0m2a4JNzqsxBm8Eq9wX/UooHLv+YCUY/7sUucuezJxKFFhWaTTmf8oMDyZP
	/Zf+G1nE0Ce9NTbAOk6r4Neh4NXY0jcgLS6vb8ZL1NP8FTkchDVNTyDqt/BoQv2sL+URNlzjJX8Ao
	3rVecg3pBBubY5cAK+AgLCX8kAlHODi0X30DYHJkhLTRUHldIAIJYj7N5mRm54nQLAE58+EoMJD5i
	tFTP2a9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLZz-0001r0-B2; Thu, 12 Dec 2019 10:20:19 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLZk-00015e-Hh
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 10:20:06 +0000
Received: by mail-wr1-x441.google.com with SMTP id c14so2089731wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 02:20:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=FWshdGOlPI7yjVJAElFvMo0mlzQ6xIrNID/VuBYtMSo=;
 b=Ch+J675qtJbBX8NFcLS7CYqYDrNctC1O0yw6s4DcnHprhA91RaEmIlTNuyNTsQwWrC
 hvbgwH5ipBMwZN/Ar5J6GQJPFZwa49XYAT5QK12dmuqXkFJ0ZMPa8A24SpxxohwxxDIj
 S5KM2WaPLDMe6iu+lTejbUH7fGBZnQGwsexvq9rgMDEX9KjE9q5UJDGKhGFrNhSVAq+D
 xJWnK6ThYoeS8N9wQg0AWif5xusWzRBrA5KLqeo8coRGQUVOFs8e6o34T/CfPalY1nPl
 7K7IlI+Tg35SVoDo2AnDk4E0bjXPrZ+iNJn28zUBHamlbQDZxtlLAeg+ce0MtasPGheL
 RmPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=FWshdGOlPI7yjVJAElFvMo0mlzQ6xIrNID/VuBYtMSo=;
 b=QjoPknTNzHlYcMUqzdxyLGDjQjQ/+Lxu2wSNzCJnPL/Takqh5JTiNBMQqPe/W5LJc7
 N19SPetLQDMcR+IvoPpkwhU7Qq6WhOnVvzFI8/PbFqoCmBfoWTMg3xcG4tDOnNeoVTHM
 i/XyHJvCN5B6FjqgqG3V2nvkYxYhcsAVC2eAyhBlMMRAvkFG8DE2/44xsfd4UYOjvmmO
 TamWSvh8pjVXcnlKhiaLDL3t32Nko9x+txxUp14HokPUv4OVgHFDDUNesQWsQxuzl+1w
 aRLCH6F+ydAkOlYghlxzpOfY0gVUYj9S85mzYt08pKinAZQEIYAJGqu1/kWi2AqjRubU
 lDRA==
X-Gm-Message-State: APjAAAV0Xp85l6j9nMXDBybzzlYpsPHmJRgBwXqWbDIQD9opQtBQE+G5
 Smd9eVJdeBSQKex1OtqrLaLZeg==
X-Google-Smtp-Source: APXvYqw+sp+j42VZGq85rGThgx/ogUAVCFmxSUrPZRugAeSCRN9cShhFUB1lK7uDgM7f0ZfqlYo+zg==
X-Received: by 2002:adf:ffc7:: with SMTP id x7mr5320534wrs.159.1576146000146; 
 Thu, 12 Dec 2019 02:20:00 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id e6sm5485646wru.44.2019.12.12.02.19.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 02:19:59 -0800 (PST)
References: <20191206074052.15557-1-jian.hu@amlogic.com>
 <20191206074052.15557-4-jian.hu@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v4 3/6] clk: meson: eeclk: refactor eeclk common driver to
 support A1
In-reply-to: <20191206074052.15557-4-jian.hu@amlogic.com>
Date: Thu, 12 Dec 2019 11:19:59 +0100
Message-ID: <1j7e31lub4.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_022004_615983_EEBFF78C 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Fri 06 Dec 2019 at 08:40, Jian Hu <jian.hu@amlogic.com> wrote:

> Introduce a common probe function for A1 series, the way to get
> regmap is different between A1 series and the previous series.
> The register region is only for one clock driver, the function of
> meson_eeclkc_probe is not fit for A1, So it is necessary to
> introduce a new function.

Please drop this patch

#1 you are patching the EE driver for something that is no longer an EE
 driver
#2 Let's get the basics right, you can move (re)factoring afterward

Your probe function is simple enough. Just properly write it in each
driver for now.

>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  drivers/clk/meson/meson-eeclk.c | 59 +++++++++++++++++++++++++++------
>  drivers/clk/meson/meson-eeclk.h |  1 +
>  2 files changed, 50 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/clk/meson/meson-eeclk.c b/drivers/clk/meson/meson-eeclk.c
> index a7cb1e7aedc4..12ceb1caabd8 100644
> --- a/drivers/clk/meson/meson-eeclk.c
> +++ b/drivers/clk/meson/meson-eeclk.c
> @@ -13,25 +13,37 @@
>  #include "clk-regmap.h"
>  #include "meson-eeclk.h"
>  
> -int meson_eeclkc_probe(struct platform_device *pdev)
> +static struct regmap_config clkc_regmap_config = {
> +	.reg_bits       = 32,
> +	.val_bits       = 32,
> +	.reg_stride     = 4,
> +};
> +
> +static struct regmap *meson_regmap_resource(struct platform_device *pdev)
> +{
> +	struct resource *res;
> +	void __iomem *base;
> +	struct device *dev = &pdev->dev;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +
> +	base = devm_ioremap_resource(dev, res);
> +	if (IS_ERR(base))
> +		return ERR_CAST(base);
> +
> +	return devm_regmap_init_mmio(dev, base, &clkc_regmap_config);
> +}
> +
> +static int meson_common_probe(struct platform_device *pdev, struct regmap *map)
>  {
>  	const struct meson_eeclkc_data *data;
>  	struct device *dev = &pdev->dev;
> -	struct regmap *map;
>  	int ret, i;
>  
>  	data = of_device_get_match_data(dev);
>  	if (!data)
>  		return -EINVAL;
>  
> -	/* Get the hhi system controller node */
> -	map = syscon_node_to_regmap(of_get_parent(dev->of_node));
> -	if (IS_ERR(map)) {
> -		dev_err(dev,
> -			"failed to get HHI regmap\n");
> -		return PTR_ERR(map);
> -	}
> -
>  	if (data->init_count)
>  		regmap_multi_reg_write(map, data->init_regs, data->init_count);
>  
> @@ -54,3 +66,30 @@ int meson_eeclkc_probe(struct platform_device *pdev)
>  	return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
>  					   data->hw_onecell_data);
>  }
> +
> +int meson_eeclkc_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct regmap *map;
> +
> +	/* Get the hhi system controller node */
> +	map = syscon_node_to_regmap(of_get_parent(dev->of_node));
> +	if (IS_ERR(map)) {
> +		dev_err(dev,
> +			"failed to get HHI regmap\n");
> +		return PTR_ERR(map);
> +	}
> +
> +	return meson_common_probe(pdev, map);
> +}
> +
> +int meson_clkc_probe(struct platform_device *pdev)
> +{
> +	struct regmap *map;
> +
> +	map = meson_regmap_resource(pdev);
> +	if (IS_ERR(map))
> +		return PTR_ERR(map);
> +
> +	return meson_common_probe(pdev, map);
> +}
> diff --git a/drivers/clk/meson/meson-eeclk.h b/drivers/clk/meson/meson-eeclk.h
> index 77316207bde1..a2e9ab3a4f6b 100644
> --- a/drivers/clk/meson/meson-eeclk.h
> +++ b/drivers/clk/meson/meson-eeclk.h
> @@ -21,5 +21,6 @@ struct meson_eeclkc_data {
>  };
>  
>  int meson_eeclkc_probe(struct platform_device *pdev);
> +int meson_clkc_probe(struct platform_device *pdev);
>  
>  #endif /* __MESON_CLKC_H */


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
