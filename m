Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F506F4C15
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 13:50:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0HPml/OAy9uajBJSbhEqCzUGMv3fSp9hLUSzXFSawoU=; b=oBajCAWBwYoDTz
	UDXhXkgsYHpcW91VUuW3G6lXmliKeRsTF+3OF67ZdbL7kGr0gE4iTxwcr1f3cx3okAdEgUZupayJD
	vtPKCskpy9TcpAP3j1pJ5y2ktz/BAInA/z4EMaMChNNSCLAs633h+vxvhg3cwrr9IuspbzmaTvMYg
	TkhQ6banYh4nvfUe7YAo4qOyb4txz43uCAetqnr7z6mW8Tilqc1kmoGN7fxrAZOLh0wjydZ5Jd1AS
	hn3nj2ZT9P4TWhiFSH3kLqKoAcuHuDjzRtriXgSpmshUcC1XjxlvlfkDn4LOjDcg7BnSh9mXVQuGh
	is+bzRyCBRFNpAVk6b+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT3it-0008BO-He; Fri, 08 Nov 2019 12:50:43 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3il-0008A6-Qh
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 12:50:37 +0000
Received: by mail-wr1-x442.google.com with SMTP id z10so1616512wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 04:50:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=h1rRsM7+DRkVXx86Ozl4pcfkVOljAGPaOjgIAe0lUrs=;
 b=MDaKUWl7vQ2E8Biz6A/cpa/6O9ARQS37G0UClg+4Eu9xGrLQbpaNEHz8vaHUWBQl+a
 E5MpAOcAfnNnOrPO6P1/VzzPajttR3u+E1EIv7vXiE6hBp/pafyio9okvrBZYy8ntBAV
 aBxgJxtMKfUJvVRHM4iezNNoIiYzSGz75VLGr8dJbVm3p/P2F4fb/QHC9Ak1wuavedn+
 sSGj3xR5MEO1Rn1i2ufhzDOU0dlcsxePZGDx+RmDG+3UU9VGml5GI6NPZfH4rP3HIAq/
 voB8CTX3hrvqGgNAtFn4s8hyzNAzqxjkWudeNHGUV+HU9hJkjiAiDxs2XTzkFAUoWCYl
 mWnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=h1rRsM7+DRkVXx86Ozl4pcfkVOljAGPaOjgIAe0lUrs=;
 b=gP96yzAEqI4cz/GokJl3nGsjZM9j3aNY9hAf9RJ8jnD70bJcOinNbdcbAjU5QVWMU9
 bRsKVvkYQBQbqnkJYIOXnBfyBga33PI+6qbbf8hdhBZj0p6tlfPJG+yOlPFQNdXi8kqS
 APKG1Gh8vn11REhfoIFbNS9h2QGqi6PgsH7pJtO9Ts49GX7gxZs9g9f21nQlKTR8FhxF
 EvHs7HJ2aNwcdp+uZigENVseQxzflOB+MzCJE3DYrQpqadGzScQf3A7jSivk+dPS9jBB
 Sk86rKxYXtGzoN5cOzkY7jykKTVWnn7yrUl4LCMsbRrauWq9h4X0ppMHN9zgpyR0WOuO
 2FJQ==
X-Gm-Message-State: APjAAAX85uK/oxu9oNg+ltQvSbAl6CNJJ8wamDx7+47gFithnHlHci5b
 8n+8cnOPuT3CwKu0iqSTm/aLRw==
X-Google-Smtp-Source: APXvYqwy0TpHQXYY5rSBLmHZG5xu4EYvGAtGzDtZClMCMfDnj+9SQt5cUpazJCpeu/YsjpkZsKcv1A==
X-Received: by 2002:a5d:5230:: with SMTP id i16mr8511074wra.317.1573217429952; 
 Fri, 08 Nov 2019 04:50:29 -0800 (PST)
Received: from [10.1.2.12] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id f67sm2393601wme.16.2019.11.08.04.50.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 08 Nov 2019 04:50:29 -0800 (PST)
Subject: Re: [PATCH v5 1/3] pinctrl: meson: add a new callback for SoCs fixup
To: Qianggui Song <qianggui.song@amlogic.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org
References: <1573203636-7436-1-git-send-email-qianggui.song@amlogic.com>
 <1573203636-7436-2-git-send-email-qianggui.song@amlogic.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <54809378-d4b0-2013-eb22-d6570eff2a8c@baylibre.com>
Date: Fri, 8 Nov 2019 13:50:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1573203636-7436-2-git-send-email-qianggui.song@amlogic.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_045036_001230_BE3B966F 
X-CRM114-Status: GOOD (  25.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Hanjie Lin <hanjie.lin@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 Xingyu Chen <xingyu.chen@amlogic.com>, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 08/11/2019 10:00, Qianggui Song wrote:
> In meson_pinctrl_parse_dt, it contains two parts: reg parsing and
> SoC relative fixup for AO. Several fixups in the same code make it hard
> to maintain, so move all fixups to each SoC's callback and make
> meson_pinctrl_parse_dt just do the reg parsing, separate these two
> parts.Overview of all current Meson SoCs fixup is as below:
> 
> +------+--------------------------------------+--------------------------+
> |      |                                      |                          |
> | SoC  |                EE domain             |        AO domain         |
> +------+--------------------------------------+--------------------------+
> |m8    | parse regs:                          | parse regs:              |
> |m8b   |   gpio,mux,pull,pull-enable(skip ds) |    gpio,mux,pull(skip ds)|
> |gxl   | fixup:                               | fixup:                   |
> |gxbb  |   no                                 |     pull-enable = pull;  |
> |axg   |                                      |                          |
> +------+--------------------------------------+--------------------------+
> |g12a  | parse regs:                          | parse regs:              |
> |sm1   |   gpio,mux,pull,pull-enable,ds       |   gpio,mux,ds            |
> |      | fixup:                               | fixup:                   |
> |      |   no                                 |   pull = gpio;           |
> |      |                                      |   pull-enable = gpio;    |
> +------+--------------------------------------+--------------------------+
> |a1 or | parse regs:                                                     |
> |later |  gpio/mux (without ao domain)                                   |
> |SoCs  | fixup:                                                          |
> |      |  pull = gpio; pull-enable = gpio; ds = gpio;                    |
> +------+-----------------------------------------------------------------+
> Since m8-axg share the same ao fixup, make a common function
> meson8_aobus_parse_dt_extra to do the job.
> 
> Signed-off-by: Qianggui Song <qianggui.song@amlogic.com>
> ---
>  drivers/pinctrl/meson/pinctrl-meson-axg.c  |  1 +
>  drivers/pinctrl/meson/pinctrl-meson-g12a.c |  9 +++++++++
>  drivers/pinctrl/meson/pinctrl-meson-gxbb.c |  1 +
>  drivers/pinctrl/meson/pinctrl-meson-gxl.c  |  1 +
>  drivers/pinctrl/meson/pinctrl-meson.c      | 25 ++++++++++++++++++-------
>  drivers/pinctrl/meson/pinctrl-meson.h      |  5 +++++
>  drivers/pinctrl/meson/pinctrl-meson8.c     |  1 +
>  drivers/pinctrl/meson/pinctrl-meson8b.c    |  1 +
>  8 files changed, 37 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/pinctrl/meson/pinctrl-meson-axg.c b/drivers/pinctrl/meson/pinctrl-meson-axg.c
> index ad502eda4afa..072765db93d7 100644
> --- a/drivers/pinctrl/meson/pinctrl-meson-axg.c
> +++ b/drivers/pinctrl/meson/pinctrl-meson-axg.c
> @@ -1066,6 +1066,7 @@
>  	.num_banks	= ARRAY_SIZE(meson_axg_aobus_banks),
>  	.pmx_ops	= &meson_axg_pmx_ops,
>  	.pmx_data	= &meson_axg_aobus_pmx_banks_data,
> +	.parse_dt	= meson8_aobus_parse_dt_extra,
>  };
>  
>  static const struct of_device_id meson_axg_pinctrl_dt_match[] = {
> diff --git a/drivers/pinctrl/meson/pinctrl-meson-g12a.c b/drivers/pinctrl/meson/pinctrl-meson-g12a.c
> index 582665fd362a..41850e3c0091 100644
> --- a/drivers/pinctrl/meson/pinctrl-meson-g12a.c
> +++ b/drivers/pinctrl/meson/pinctrl-meson-g12a.c
> @@ -1362,6 +1362,14 @@
>  	.num_pmx_banks	= ARRAY_SIZE(meson_g12a_aobus_pmx_banks),
>  };
>  
> +static int meson_g12a_aobus_parse_dt_extra(struct meson_pinctrl *pc)
> +{
> +	pc->reg_pull = pc->reg_gpio;
> +	pc->reg_pullen = pc->reg_gpio;
> +
> +	return 0;
> +}
> +
>  static struct meson_pinctrl_data meson_g12a_periphs_pinctrl_data = {
>  	.name		= "periphs-banks",
>  	.pins		= meson_g12a_periphs_pins,
> @@ -1388,6 +1396,7 @@
>  	.num_banks	= ARRAY_SIZE(meson_g12a_aobus_banks),
>  	.pmx_ops	= &meson_axg_pmx_ops,
>  	.pmx_data	= &meson_g12a_aobus_pmx_banks_data,
> +	.parse_dt	= meson_g12a_aobus_parse_dt_extra,
>  };
>  
>  static const struct of_device_id meson_g12a_pinctrl_dt_match[] = {
> diff --git a/drivers/pinctrl/meson/pinctrl-meson-gxbb.c b/drivers/pinctrl/meson/pinctrl-meson-gxbb.c
> index 5bfa56f3847e..926b9997159a 100644
> --- a/drivers/pinctrl/meson/pinctrl-meson-gxbb.c
> +++ b/drivers/pinctrl/meson/pinctrl-meson-gxbb.c
> @@ -851,6 +851,7 @@
>  	.num_funcs	= ARRAY_SIZE(meson_gxbb_aobus_functions),
>  	.num_banks	= ARRAY_SIZE(meson_gxbb_aobus_banks),
>  	.pmx_ops	= &meson8_pmx_ops,
> +	.parse_dt	= meson8_aobus_parse_dt_extra,
>  };
>  
>  static const struct of_device_id meson_gxbb_pinctrl_dt_match[] = {
> diff --git a/drivers/pinctrl/meson/pinctrl-meson-gxl.c b/drivers/pinctrl/meson/pinctrl-meson-gxl.c
> index 72c5373c8dc1..8b1a49f5da43 100644
> --- a/drivers/pinctrl/meson/pinctrl-meson-gxl.c
> +++ b/drivers/pinctrl/meson/pinctrl-meson-gxl.c
> @@ -820,6 +820,7 @@
>  	.num_funcs	= ARRAY_SIZE(meson_gxl_aobus_functions),
>  	.num_banks	= ARRAY_SIZE(meson_gxl_aobus_banks),
>  	.pmx_ops	= &meson8_pmx_ops,
> +	.parse_dt 	= meson8_aobus_parse_dt_extra,
>  };
>  
>  static const struct of_device_id meson_gxl_pinctrl_dt_match[] = {
> diff --git a/drivers/pinctrl/meson/pinctrl-meson.c b/drivers/pinctrl/meson/pinctrl-meson.c
> index 8bba9d053d9f..a812c6d986d9 100644
> --- a/drivers/pinctrl/meson/pinctrl-meson.c
> +++ b/drivers/pinctrl/meson/pinctrl-meson.c
> @@ -625,7 +625,7 @@ static struct regmap *meson_map_resource(struct meson_pinctrl *pc,
>  
>  	i = of_property_match_string(node, "reg-names", name);
>  	if (of_address_to_resource(node, i, &res))
> -		return ERR_PTR(-ENOENT);
> +		return NULL;
>  
>  	base = devm_ioremap_resource(pc->dev, &res);
>  	if (IS_ERR(base))
> @@ -665,26 +665,24 @@ static int meson_pinctrl_parse_dt(struct meson_pinctrl *pc,
>  	pc->of_node = gpio_np;
>  
>  	pc->reg_mux = meson_map_resource(pc, gpio_np, "mux");
> -	if (IS_ERR(pc->reg_mux)) {
> +	if (IS_ERR_OR_NULL(pc->reg_mux)) {
>  		dev_err(pc->dev, "mux registers not found\n");
>  		return PTR_ERR(pc->reg_mux);

If pc->reg_mux is NULL, it will return "0" here, which is wrong.

Either keep the return ERR_PTR(-ENOENT); in meson_map_resource, or
	return pc->reg_mux ? -ENOENT : PTR_ERR(pc->reg_mux);

>  	}
>  
>  	pc->reg_gpio = meson_map_resource(pc, gpio_np, "gpio");
> -	if (IS_ERR(pc->reg_gpio)) {
> +	if (IS_ERR_OR_NULL(pc->reg_gpio)) {
>  		dev_err(pc->dev, "gpio registers not found\n");
>  		return PTR_ERR(pc->reg_gpio);

Ditto

>  	}
>  
>  	pc->reg_pull = meson_map_resource(pc, gpio_np, "pull");
> -	/* Use gpio region if pull one is not present */
>  	if (IS_ERR(pc->reg_pull))
> -		pc->reg_pull = pc->reg_gpio;
> +		pc->reg_pull = NULL;
>  
>  	pc->reg_pullen = meson_map_resource(pc, gpio_np, "pull-enable");
> -	/* Use pull region if pull-enable one is not present */
>  	if (IS_ERR(pc->reg_pullen))
> -		pc->reg_pullen = pc->reg_pull;
> +		pc->reg_pullen = NULL;
>  
>  	pc->reg_ds = meson_map_resource(pc, gpio_np, "ds");
>  	if (IS_ERR(pc->reg_ds)) {
> @@ -692,6 +690,19 @@ static int meson_pinctrl_parse_dt(struct meson_pinctrl *pc,
>  		pc->reg_ds = NULL;
>  	}
>  
> +	if (pc->data->parse_dt)
> +		return pc->data->parse_dt(pc);
> +
> +	return 0;
> +}
> +
> +int meson8_aobus_parse_dt_extra(struct meson_pinctrl *pc)
> +{
> +	if (!pc->reg_pull)
> +		return -EINVAL;
> +
> +	pc->reg_pullen = pc->reg_pull;
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/pinctrl/meson/pinctrl-meson.h b/drivers/pinctrl/meson/pinctrl-meson.h
> index c696f3241a36..bfa1d3599333 100644
> --- a/drivers/pinctrl/meson/pinctrl-meson.h
> +++ b/drivers/pinctrl/meson/pinctrl-meson.h
> @@ -11,6 +11,8 @@
>  #include <linux/regmap.h>
>  #include <linux/types.h>
>  
> +struct meson_pinctrl;
> +
>  /**
>   * struct meson_pmx_group - a pinmux group
>   *
> @@ -114,6 +116,7 @@ struct meson_pinctrl_data {
>  	unsigned int num_banks;
>  	const struct pinmux_ops *pmx_ops;
>  	void *pmx_data;
> +	int (*parse_dt)(struct meson_pinctrl *pc);
>  };
>  
>  struct meson_pinctrl {
> @@ -171,3 +174,5 @@ int meson_pmx_get_groups(struct pinctrl_dev *pcdev,
>  
>  /* Common probe function */
>  int meson_pinctrl_probe(struct platform_device *pdev);
> +/* Common ao groups extra dt parse function for SoCs before g12a  */
> +int meson8_aobus_parse_dt_extra(struct meson_pinctrl *pc);
> diff --git a/drivers/pinctrl/meson/pinctrl-meson8.c b/drivers/pinctrl/meson/pinctrl-meson8.c
> index 0b97befa6335..dd17100efdcf 100644
> --- a/drivers/pinctrl/meson/pinctrl-meson8.c
> +++ b/drivers/pinctrl/meson/pinctrl-meson8.c
> @@ -1103,6 +1103,7 @@
>  	.num_funcs	= ARRAY_SIZE(meson8_aobus_functions),
>  	.num_banks	= ARRAY_SIZE(meson8_aobus_banks),
>  	.pmx_ops	= &meson8_pmx_ops,
> +	.parse_dt	= &meson8_aobus_parse_dt_extra,
>  };
>  
>  static const struct of_device_id meson8_pinctrl_dt_match[] = {
> diff --git a/drivers/pinctrl/meson/pinctrl-meson8b.c b/drivers/pinctrl/meson/pinctrl-meson8b.c
> index a7de388388e6..2d5339edd0b7 100644
> --- a/drivers/pinctrl/meson/pinctrl-meson8b.c
> +++ b/drivers/pinctrl/meson/pinctrl-meson8b.c
> @@ -962,6 +962,7 @@
>  	.num_funcs	= ARRAY_SIZE(meson8b_aobus_functions),
>  	.num_banks	= ARRAY_SIZE(meson8b_aobus_banks),
>  	.pmx_ops	= &meson8_pmx_ops,
> +	.parse_dt	= &meson8_aobus_parse_dt_extra,
>  };
>  
>  static const struct of_device_id meson8b_pinctrl_dt_match[] = {
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
