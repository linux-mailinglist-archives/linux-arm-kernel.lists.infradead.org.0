Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A642C21B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 15:18:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2m2lQ/N6seqkw3aXAp0VADIj4Ts5zS8CPfRN07vn6k=; b=dc01zNtNSxB8tV
	d5kTXvETuCNSGIAU5C7sKxAFfKDp5aJxv0Otl0TVKFu4ZSVqO1tSnW6r+OZTjJlFHOGm77EpbRQ3W
	4/Og65UZs8PbzlqnW7W0hT71UcRfR5noHV5B8YMdpy+cMvBZ6NNi5aF94Oq7EyAJ7tIIwf2ce8cH/
	lgc9JAgVAYelmNOPl2cA+Ym3q9HbW9voKsP2EcGYo6T2+6+dJkN9hXvprXGi9lmNBx2joRxDn+lhj
	XeqambtjQDDqJT6JFoCEq/Ii+hv4Etkfr/Wr6hR1aUmBq6PSOjqZWhEmntypLh9sv+HVH7blSt3iS
	hfCnu5kx0qLeUCyKZNNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEvZO-0001co-9j; Mon, 30 Sep 2019 13:18:30 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEvZE-0001bz-E1
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 13:18:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id q7so5602166pfh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 06:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=IeNb76xF/iiAkmuGaqc/RgfhSXiK60RFNQ5u5Egtzwc=;
 b=i1C27JYYTT5LFyoUJ7GsRdGiD9QUCYW3q5siKm/kIrZZHgROUsZDl7rzbVuL/39rXT
 AajNTy1a7GtjOEjhtjzHUoV262m/SOR4EZyS1eAyxAgEVM0B0AeKTUqyB0OCcGs627EQ
 sh5NDAg7C4i/+gB80/Yiytp6z6CTz+TeUy7PY+KocGZVSJok3zxN29dHHzP6ysjK+qmo
 ifB0uGq1HdW1HPcUfrcMcj8zuFq7S491ZuzSlLwZuOXez2kc2ydiicfpH5m1KvpmoOcM
 Uxsyy8ovr+lMCIDUy6nqNVHzgPslsDsbcxRAdSpHTvuw+fMi8UsMyRaEzbkYeDOpYx1C
 j53Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=IeNb76xF/iiAkmuGaqc/RgfhSXiK60RFNQ5u5Egtzwc=;
 b=FMLlDwSdf9xr4oyQqCB8C3c5b1aX4PKAtA9wu8NsTuZ9VPa7PkDbx/KE+eNRCXzC00
 iJFZXwI188h+kDy7/l0ZL78VVeJXU6jlWVGYfkvN0x8rrb3R9cH7QhXK70z4fw4L2PSn
 azgAXL5WE2P4HOhRzbeLvWdH7uacXZNnveyHqAsNGtf7mR0FS2dqdvh7/8kLm/UiUyVx
 0CfkgQK7BgzFe9g3epDhruBJc1MZWIPr99Eh9L5cBRHXuby7RXJbuUnsdWw9mXzG7j5w
 tMacfUOLmua0GiFomfNVGkQq1//Yp5+dd4JnxaMxqutbqwLFBdwwelaua9R6UvpbVhOG
 h8tg==
X-Gm-Message-State: APjAAAVpsNiRjVSxt33rfyy7ua8BMDnwPMsIbQg8tk3Q1pysA9GX3Xqc
 eSnWeQZX6nYsteuQdMT6fgo=
X-Google-Smtp-Source: APXvYqwGkAF+kWpqAj6UpJAWdIO9jQYwc6SIZA+Pk2aEG3EO6zNRI4aw5xunqrGFbM0FEZY0RNCcdg==
X-Received: by 2002:a63:d20f:: with SMTP id a15mr24216063pgg.130.1569849499941; 
 Mon, 30 Sep 2019 06:18:19 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id i6sm19213778pfq.20.2019.09.30.06.18.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Sep 2019 06:18:19 -0700 (PDT)
Date: Mon, 30 Sep 2019 06:18:18 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 3/3] watchdog: imx2_wdt: Use 'dev' instead of
 dereferencing it repeatedly
Message-ID: <20190930131818.GC29750@roeck-us.net>
References: <1569308828-8320-1-git-send-email-Anson.Huang@nxp.com>
 <1569308828-8320-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569308828-8320-3-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_061820_472313_384E8E0F 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-watchdog@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 wim@linux-watchdog.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 03:07:08PM +0800, Anson Huang wrote:
> Add helper variable dev = &pdev->dev to simply the code.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  drivers/watchdog/imx2_wdt.c | 23 ++++++++++++-----------
>  1 file changed, 12 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/watchdog/imx2_wdt.c b/drivers/watchdog/imx2_wdt.c
> index 034f32c..f8d58bf 100644
> --- a/drivers/watchdog/imx2_wdt.c
> +++ b/drivers/watchdog/imx2_wdt.c
> @@ -246,13 +246,14 @@ static const struct regmap_config imx2_wdt_regmap_config = {
>  
>  static int __init imx2_wdt_probe(struct platform_device *pdev)
>  {
> +	struct device *dev = &pdev->dev;
>  	struct imx2_wdt_device *wdev;
>  	struct watchdog_device *wdog;
>  	void __iomem *base;
>  	int ret;
>  	u32 val;
>  
> -	wdev = devm_kzalloc(&pdev->dev, sizeof(*wdev), GFP_KERNEL);
> +	wdev = devm_kzalloc(dev, sizeof(*wdev), GFP_KERNEL);
>  	if (!wdev)
>  		return -ENOMEM;
>  
> @@ -260,16 +261,16 @@ static int __init imx2_wdt_probe(struct platform_device *pdev)
>  	if (IS_ERR(base))
>  		return PTR_ERR(base);
>  
> -	wdev->regmap = devm_regmap_init_mmio_clk(&pdev->dev, NULL, base,
> +	wdev->regmap = devm_regmap_init_mmio_clk(dev, NULL, base,
>  						 &imx2_wdt_regmap_config);
>  	if (IS_ERR(wdev->regmap)) {
> -		dev_err(&pdev->dev, "regmap init failed\n");
> +		dev_err(dev, "regmap init failed\n");
>  		return PTR_ERR(wdev->regmap);
>  	}
>  
> -	wdev->clk = devm_clk_get(&pdev->dev, NULL);
> +	wdev->clk = devm_clk_get(dev, NULL);
>  	if (IS_ERR(wdev->clk)) {
> -		dev_err(&pdev->dev, "can't get Watchdog clock\n");
> +		dev_err(dev, "can't get Watchdog clock\n");
>  		return PTR_ERR(wdev->clk);
>  	}
>  
> @@ -279,12 +280,12 @@ static int __init imx2_wdt_probe(struct platform_device *pdev)
>  	wdog->min_timeout	= 1;
>  	wdog->timeout		= IMX2_WDT_DEFAULT_TIME;
>  	wdog->max_hw_heartbeat_ms = IMX2_WDT_MAX_TIME * 1000;
> -	wdog->parent		= &pdev->dev;
> +	wdog->parent		= dev;
>  
>  	ret = platform_get_irq(pdev, 0);
>  	if (ret > 0)
> -		if (!devm_request_irq(&pdev->dev, ret, imx2_wdt_isr, 0,
> -				      dev_name(&pdev->dev), wdog))
> +		if (!devm_request_irq(dev, ret, imx2_wdt_isr, 0,
> +				      dev_name(dev), wdog))
>  			wdog->info = &imx2_wdt_pretimeout_info;
>  
>  	ret = clk_prepare_enable(wdev->clk);
> @@ -294,13 +295,13 @@ static int __init imx2_wdt_probe(struct platform_device *pdev)
>  	regmap_read(wdev->regmap, IMX2_WDT_WRSR, &val);
>  	wdog->bootstatus = val & IMX2_WDT_WRSR_TOUT ? WDIOF_CARDRESET : 0;
>  
> -	wdev->ext_reset = of_property_read_bool(pdev->dev.of_node,
> +	wdev->ext_reset = of_property_read_bool(dev->of_node,
>  						"fsl,ext-reset-output");
>  	platform_set_drvdata(pdev, wdog);
>  	watchdog_set_drvdata(wdog, wdev);
>  	watchdog_set_nowayout(wdog, nowayout);
>  	watchdog_set_restart_priority(wdog, 128);
> -	watchdog_init_timeout(wdog, timeout, &pdev->dev);
> +	watchdog_init_timeout(wdog, timeout, dev);
>  
>  	if (imx2_wdt_is_running(wdev)) {
>  		imx2_wdt_set_timeout(wdog, wdog->timeout);
> @@ -318,7 +319,7 @@ static int __init imx2_wdt_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto disable_clk;
>  
> -	dev_info(&pdev->dev, "timeout %d sec (nowayout=%d)\n",
> +	dev_info(dev, "timeout %d sec (nowayout=%d)\n",
>  		 wdog->timeout, nowayout);
>  
>  	return 0;
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
