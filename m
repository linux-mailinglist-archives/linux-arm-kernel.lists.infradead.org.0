Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DD197C38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kGdNHVD9qFMLGuWu2485L16Dfzz2SG0dxTxlD/wnG5M=; b=chxBA9WUZ1Crvf
	P9g6OTs9i0SDHnCf6zTtciGvF34/v/dt9KQZ8T0sl0JQHULGXlIapJFoqZpJN/dgmnkFvu9p69W2m
	SNN8rLgAMN5nNFpbb7eUg9G5pQSQzGE9XTrRlf6aTaPAlVK0QosE56C5/6euZ2i2fHzp0kLxilGSj
	odfcGEwO0FTlpqL+LycA4EpGZKPGymKNWKQ4KrpKUXiGf19vE+9yIP9ZThCUjkscgtqjcIzZSpYZL
	QMCCVAQOZyzR7HQDwTYer2J4gfjPPCQxu+rvfArIg0TP8GzcmaqTj0Dw7Qxer6x6kA3Lvlxl/zcT9
	7Z5gF9n21eTIkoqQVYRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0RNK-0003DF-7W; Wed, 21 Aug 2019 14:14:10 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0RN9-0003Ch-BT
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 14:14:01 +0000
Received: by mail-pg1-x544.google.com with SMTP id n9so1406282pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 07:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YhBSE2itRIVTx2T1GhEAoFfRNjBTNKOdD0tfgSl/ewM=;
 b=TDKyp3ZLkp/M4tmQnhc8g8U4DVWk92WFyIJFZN9bOf//mjNzSi8PvBC5KCTzw9qzOx
 bOYRxuyvkbac05M6s7XH4v3AKQ/9w342ZgfrTMOEKljDEZnBk69TSmpUAv1kXgjppNSZ
 eD43gFyhvOOe8VagdE0RWll3s0rIm5zJ26F6XMUvarjWC72lSbPHN8SdnpjOgqdHBYZH
 N4TjeshVlndlx1cVEymvGOcVYMV6R1XRZNjvE1KFGS9ZlHVuyHIsf4Af58Fwmu2vgxC1
 vy6oN3mlrtildcR9VgxdBPteiRflIqFHbyIvPL/lQGlS6ls4DprfJnsZ+DDWgRvB7hk4
 qLVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=YhBSE2itRIVTx2T1GhEAoFfRNjBTNKOdD0tfgSl/ewM=;
 b=Ga1BvihnF1j/lNkn3ViY3PdR5UKnipX0Pn40w4B/n3zLStu8V2Ptu/7UOsX5c71p31
 acNHPEbOxCxeb5CvARxesLKRCVbMAK4wdUvsD6euojcHkI9B0xSRMbDFJAQrXBaX6H9u
 Z9ZXop7pcQSc8RWuUjkPuA++ZkvbWLk3I/wuyqRATwC2cdzX8M4K5Pd9wZz9ioOQUiwP
 f3PzUVpNXpSoMjG9Tqi9+7EkQ5A3/+qY+sJXl5Fqnw4/QqVuPQYocT5Y3z4d3g8sN4Qe
 I3eEIX20PzIvIpweIeMJumOTfKzi8ixZfEBvZjnGHNKo3ZD5OZZ1n6gge2BWPwx64PaN
 n0kg==
X-Gm-Message-State: APjAAAV276gO7QD1aB4WTApmADf0cZECuh5OVHmq1hJDt7NcTBFG+D3k
 92Zl7k5cdzuDEpcSE1sUFYA=
X-Google-Smtp-Source: APXvYqxw9UL/gpNT9rdTJ9+Gwo6MR1qECjLZiZilAEME8wmhVPT53xKLwg18n89h+MT/U+abQ4SdeQ==
X-Received: by 2002:a63:f304:: with SMTP id l4mr21851744pgh.66.1566396838439; 
 Wed, 21 Aug 2019 07:13:58 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id g11sm31832284pfk.187.2019.08.21.07.13.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 07:13:57 -0700 (PDT)
Date: Wed, 21 Aug 2019 07:13:55 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 2/4] watchdog: Add i.MX7ULP watchdog support
Message-ID: <20190821141355.GA10463@roeck-us.net>
References: <1566353278-1884-1-git-send-email-Anson.Huang@nxp.com>
 <1566353278-1884-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566353278-1884-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_071359_425205_E27899EE 
X-CRM114-Status: GOOD (  30.43  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, leonard.crestez@nxp.com,
 schnitzeltony@gmail.com, linux-watchdog@vger.kernel.org,
 otavio@ossystems.com.br, festevam@gmail.com, s.hauer@pengutronix.de,
 jan.tuerk@emtrion.com, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 u.kleine-koenig@pengutronix.de, wim@linux-watchdog.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 10:07:56PM -0400, Anson Huang wrote:
> The i.MX7ULP Watchdog Timer (WDOG) module is an independent timer
> that is available for system use.
> It provides a safety feature to ensure that software is executing
> as planned and that the CPU is not stuck in an infinite loop or
> executing unintended code. If the WDOG module is not serviced
> (refreshed) within a certain period, it resets the MCU.
> 
> Add driver support for i.MX7ULP watchdog.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V2:
> 	- add devm_add_action_or_reset to disable clk for remove action.
> ---
>  drivers/watchdog/Kconfig       |  13 +++
>  drivers/watchdog/Makefile      |   1 +
>  drivers/watchdog/imx7ulp_wdt.c | 246 +++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 260 insertions(+)
>  create mode 100644 drivers/watchdog/imx7ulp_wdt.c
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index a8f5c81..d68e5b5 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -724,6 +724,19 @@ config IMX_SC_WDT
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called imx_sc_wdt.
>  
> +config IMX7ULP_WDT
> +	tristate "IMX7ULP Watchdog"
> +	depends on ARCH_MXC || COMPILE_TEST
> +	select WATCHDOG_CORE
> +	help
> +	  This is the driver for the hardware watchdog on the Freescale
> +	  IMX7ULP and later processors. If you have one of these
> +	  processors and wish to have watchdog support enabled,
> +	  say Y, otherwise say N.
> +
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called imx7ulp_wdt.
> +
>  config UX500_WATCHDOG
>  	tristate "ST-Ericsson Ux500 watchdog"
>  	depends on MFD_DB8500_PRCMU
> diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
> index b5a0aed..2ee352b 100644
> --- a/drivers/watchdog/Makefile
> +++ b/drivers/watchdog/Makefile
> @@ -67,6 +67,7 @@ obj-$(CONFIG_TS4800_WATCHDOG) += ts4800_wdt.o
>  obj-$(CONFIG_TS72XX_WATCHDOG) += ts72xx_wdt.o
>  obj-$(CONFIG_IMX2_WDT) += imx2_wdt.o
>  obj-$(CONFIG_IMX_SC_WDT) += imx_sc_wdt.o
> +obj-$(CONFIG_IMX7ULP_WDT) += imx7ulp_wdt.o
>  obj-$(CONFIG_UX500_WATCHDOG) += ux500_wdt.o
>  obj-$(CONFIG_RETU_WATCHDOG) += retu_wdt.o
>  obj-$(CONFIG_BCM2835_WDT) += bcm2835_wdt.o
> diff --git a/drivers/watchdog/imx7ulp_wdt.c b/drivers/watchdog/imx7ulp_wdt.c
> new file mode 100644
> index 0000000..5d37957
> --- /dev/null
> +++ b/drivers/watchdog/imx7ulp_wdt.c
> @@ -0,0 +1,246 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019 NXP.
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/init.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/reboot.h>
> +#include <linux/watchdog.h>
> +
> +#define WDOG_CS			0x0
> +#define WDOG_CS_CMD32EN		BIT(13)
> +#define WDOG_CS_ULK		BIT(11)
> +#define WDOG_CS_RCS		BIT(10)
> +#define WDOG_CS_EN		BIT(7)
> +#define WDOG_CS_UPDATE		BIT(5)
> +
> +#define WDOG_CNT	0x4
> +#define WDOG_TOVAL	0x8
> +
> +#define REFRESH_SEQ0	0xA602
> +#define REFRESH_SEQ1	0xB480
> +#define REFRESH		((REFRESH_SEQ1 << 16) | REFRESH_SEQ0)
> +
> +#define UNLOCK_SEQ0	0xC520
> +#define UNLOCK_SEQ1	0xD928
> +#define UNLOCK		((UNLOCK_SEQ1 << 16) | UNLOCK_SEQ0)
> +
> +#define DEFAULT_TIMEOUT	60
> +#define MAX_TIMEOUT	128
> +
> +static bool nowayout = WATCHDOG_NOWAYOUT;
> +module_param(nowayout, bool, 0000);
> +MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started (default="
> +		 __MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
> +
> +struct imx7ulp_wdt_device {
> +	struct notifier_block restart_handler;
> +	struct watchdog_device wdd;
> +	void __iomem *base;
> +	struct clk *clk;
> +	int rate;
> +};
> +
> +static inline void imx7ulp_wdt_enable(void __iomem *base, bool enable)
> +{
> +	u32 val = readl(base + WDOG_CS);
> +
> +	writel(UNLOCK, base + WDOG_CNT);
> +	if (enable)
> +		writel(val | WDOG_CS_EN, base + WDOG_CS);
> +	else
> +		writel(val & ~WDOG_CS_EN, base + WDOG_CS);
> +}
> +
> +static inline bool imx7ulp_wdt_is_enabled(void __iomem *base)
> +{
> +	u32 val = readl(base + WDOG_CS);
> +
> +	return val & WDOG_CS_EN;
> +}
> +
> +static int imx7ulp_wdt_ping(struct watchdog_device *wdog)
> +{
> +	struct imx7ulp_wdt_device *wdt = watchdog_get_drvdata(wdog);
> +
> +	writel(REFRESH, wdt->base + WDOG_CNT);
> +
> +	return 0;
> +}
> +
> +static int imx7ulp_wdt_start(struct watchdog_device *wdog)
> +{
> +	struct imx7ulp_wdt_device *wdt = watchdog_get_drvdata(wdog);
> +
> +	imx7ulp_wdt_enable(wdt->base, true);
> +
> +	return 0;
> +}
> +
> +static int imx7ulp_wdt_stop(struct watchdog_device *wdog)
> +{
> +	struct imx7ulp_wdt_device *wdt = watchdog_get_drvdata(wdog);
> +
> +	imx7ulp_wdt_enable(wdt->base, false);
> +
> +	return 0;
> +}
> +
> +static int imx7ulp_wdt_set_timeout(struct watchdog_device *wdog,
> +				   unsigned int timeout)
> +{
> +	struct imx7ulp_wdt_device *wdt = watchdog_get_drvdata(wdog);
> +	u32 val = wdt->rate * timeout;
> +
> +	writel(UNLOCK, wdt->base + WDOG_CNT);
> +	writel(val, wdt->base + WDOG_TOVAL);
> +
> +	wdog->timeout = timeout;
> +
> +	return 0;
> +}
> +
> +static const struct watchdog_ops imx7ulp_wdt_ops = {
> +	.owner = THIS_MODULE,
> +	.start = imx7ulp_wdt_start,
> +	.stop  = imx7ulp_wdt_stop,
> +	.ping  = imx7ulp_wdt_ping,
> +	.set_timeout = imx7ulp_wdt_set_timeout,
> +};
> +
> +static const struct watchdog_info imx7ulp_wdt_info = {
> +	.identity = "i.MX7ULP watchdog timer",
> +	.options  = WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING |
> +		    WDIOF_MAGICCLOSE,
> +};
> +
> +static inline void imx7ulp_wdt_init(void __iomem *base, unsigned int timeout)
> +{
> +	u32 val;
> +
> +	/* unlock the wdog for reconfiguration */
> +	writel_relaxed(UNLOCK_SEQ0, base + WDOG_CNT);
> +	writel_relaxed(UNLOCK_SEQ1, base + WDOG_CNT);
> +
> +	/* set an initial timeout value in TOVAL */
> +	writel(timeout, base + WDOG_TOVAL);
> +	/* enable 32bit command sequence and reconfigure */
> +	val = BIT(13) | BIT(8) | BIT(5);
> +	writel(val, base + WDOG_CS);
> +}
> +
> +static void imx7ulp_wdt_action(void *data)
> +{
> +	struct imx7ulp_wdt_device *imx7ulp_wdt = data;
> +
> +	clk_disable_unprepare(imx7ulp_wdt->clk);

If you had passed imx7ulp_wdt->clk as parameter, the dereference here
would not be necessary.

> +}
> +
> +static int imx7ulp_wdt_probe(struct platform_device *pdev)
> +{
> +	struct imx7ulp_wdt_device *imx7ulp_wdt;
> +	struct device *dev = &pdev->dev;
> +	struct watchdog_device *wdog;
> +	int ret;
> +
> +	imx7ulp_wdt = devm_kzalloc(dev, sizeof(*imx7ulp_wdt), GFP_KERNEL);
> +	if (!imx7ulp_wdt)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, imx7ulp_wdt);
> +
> +	imx7ulp_wdt->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(imx7ulp_wdt->base))
> +		return PTR_ERR(imx7ulp_wdt->base);
> +
> +	imx7ulp_wdt->clk = devm_clk_get(dev, NULL);
> +	if (IS_ERR(imx7ulp_wdt->clk)) {
> +		dev_err(dev, "Failed to get watchdog clock\n");
> +		return PTR_ERR(imx7ulp_wdt->clk);
> +	}
> +
> +	ret = clk_prepare_enable(imx7ulp_wdt->clk);
> +	if (ret)
> +		return ret;
> +
> +	ret = devm_add_action_or_reset(dev, imx7ulp_wdt_action, imx7ulp_wdt);
> +	if (ret)
> +		return ret;
> +
> +	imx7ulp_wdt->rate = 1000;

I forgot to ask (sorry, I had noticed, but I guess I forgot).

Why not clk_get_rate() ? If the clock rate is fixed, why bother with a 'rate'
variable ? You could use a constant instead whereever it is used.

Thanks
Guenter

> +	wdog = &imx7ulp_wdt->wdd;
> +	wdog->info = &imx7ulp_wdt_info;
> +	wdog->ops = &imx7ulp_wdt_ops;
> +	wdog->min_timeout = 1;
> +	wdog->max_timeout = MAX_TIMEOUT;
> +	wdog->parent = dev;
> +	wdog->timeout = DEFAULT_TIMEOUT;
> +
> +	watchdog_init_timeout(wdog, 0, dev);
> +	watchdog_stop_on_reboot(wdog);
> +	watchdog_stop_on_unregister(wdog);
> +	watchdog_set_drvdata(wdog, imx7ulp_wdt);
> +	imx7ulp_wdt_init(imx7ulp_wdt->base, wdog->timeout * imx7ulp_wdt->rate);
> +
> +	return devm_watchdog_register_device(dev, wdog);
> +}
> +
> +static int __maybe_unused imx7ulp_wdt_suspend(struct device *dev)
> +{
> +	struct imx7ulp_wdt_device *imx7ulp_wdt = dev_get_drvdata(dev);
> +
> +	if (watchdog_active(&imx7ulp_wdt->wdd))
> +		imx7ulp_wdt_stop(&imx7ulp_wdt->wdd);
> +
> +	clk_disable_unprepare(imx7ulp_wdt->clk);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused imx7ulp_wdt_resume(struct device *dev)
> +{
> +	struct imx7ulp_wdt_device *imx7ulp_wdt = dev_get_drvdata(dev);
> +	u32 timeout = imx7ulp_wdt->wdd.timeout * imx7ulp_wdt->rate;
> +	int ret;
> +
> +	ret = clk_prepare_enable(imx7ulp_wdt->clk);
> +	if (ret)
> +		return ret;
> +
> +	if (imx7ulp_wdt_is_enabled(imx7ulp_wdt->base))
> +		imx7ulp_wdt_init(imx7ulp_wdt->base, timeout);
> +
> +	if (watchdog_active(&imx7ulp_wdt->wdd))
> +		imx7ulp_wdt_start(&imx7ulp_wdt->wdd);
> +
> +	return 0;
> +}
> +
> +static SIMPLE_DEV_PM_OPS(imx7ulp_wdt_pm_ops, imx7ulp_wdt_suspend,
> +			 imx7ulp_wdt_resume);
> +
> +static const struct of_device_id imx7ulp_wdt_dt_ids[] = {
> +	{ .compatible = "fsl,imx7ulp-wdt", },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, imx7ulp_wdt_dt_ids);
> +
> +static struct platform_driver imx7ulp_wdt_driver = {
> +	.probe		= imx7ulp_wdt_probe,
> +	.driver		= {
> +		.name	= "imx7ulp-wdt",
> +		.pm	= &imx7ulp_wdt_pm_ops,
> +		.of_match_table = imx7ulp_wdt_dt_ids,
> +	},
> +};
> +module_platform_driver(imx7ulp_wdt_driver);
> +
> +MODULE_AUTHOR("Anson Huang <Anson.Huang@nxp.com>");
> +MODULE_DESCRIPTION("Freescale i.MX7ULP watchdog driver");
> +MODULE_LICENSE("GPL v2");
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
