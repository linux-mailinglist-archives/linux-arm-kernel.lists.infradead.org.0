Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C9C19D038
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 08:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0i4ZtqlkvyqbfuGhK6lr/H4+7uKapMJ+pFax2YCMefc=; b=eHngXPAjexUFr7
	9Nxfgw5cg7pRmQsxqxJ3Wxv6utM7v7ebqLZ3EDEQRzZqcQ9Xjj3sHMLa1yf3W+sbUrpYniE9W/gZK
	1AeDF2Xq9+3I3GivT3NHFV2Ao3H2QkNyc0cccKI2WBfHbMLdaCvXmbFiWc5lk8QAnP7yZtHd0+fDg
	MwPnn8VfVEsAQIhBPiV3quBsup4tXmW2yGyzzZ17xMGTscqcClrZBRGukXj5rKXMcY343uKNviICu
	MlnKsbYADT6OWE7RuFIQokz9PEZGCLCOt6Gq0eZK8OIK5JtopUtCUlEQVznSGn9MHhlro94bpM/tO
	xApPx3LG4mfAThyJRaqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKFlZ-0008To-2V; Fri, 03 Apr 2020 06:25:21 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKFlP-00078z-97
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 06:25:13 +0000
Received: by mail-pf1-x442.google.com with SMTP id a24so3001094pfc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 23:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vi47+JcTrwsCS8utvyF9+t5soTSiBmPKkp7DzEyMUzA=;
 b=vQkna8LB1mx4qYwnPmNskAv/brGz0rbTLl1+mHeSo+sbsY4joS6CyvhoocDGo0s3df
 +Fu++Gc5PaXJ/fgLr8K++paGb3pBWpLsHpwRn9YA7RsY1gSW7sqjPzasfThkpwwfBsAU
 ZlkXrxNSoTkR6UMlzrsFPKqGCudjkthlDHlLDyM70CH8uB/50v93/e7o3RjSYdcVOpzO
 uzxo0eWRX3jutGDNXzujGKQ6O1eDy1Uns/BLyzGKtTcc2iSFfz3CtABc5L+fwGInC6eU
 Tk5F4zu/ojxbYxASUuCXXWmnfMO7oC2nsdwYBZGD4xnr/6TELdEaCxW85fopaRQY9Aqe
 RdZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=vi47+JcTrwsCS8utvyF9+t5soTSiBmPKkp7DzEyMUzA=;
 b=FdCJgaI3qfFvhW6LYWzLCZOz7bemOtqnqukMLRSve4BuZGqaPdS5mr/357UM6nVw57
 fJcMJ09lfEoiw/Zm80yY/O1MPMCzifPcip3ahszIRaDn9yyQST58qAS62HoGFcjjn0OW
 tMUl5IdmPtcET9DvNm2C1LQfwKCxyDT51wYEqv4uEtOl56IwpO37SPB270+hLC1Xy8VC
 E1YDczvaMKdRCcilGWSNzv4ZCpIcfCwROBK37lhZ22K+YA1O5jQFm8e0PPkzDoqJ/BFy
 piMVS7ox6rUzR+lVJtYOqog48OayF+7P/7G/7H9XO6dw0pZBj2EEYTFLfDL1/mjBRyMR
 FL7Q==
X-Gm-Message-State: AGi0PubdXmPs49w8nVIiTGAN2COXBV8li4DPDASFmEmgqqxe1mDM97cF
 TN/CuTnhTpNry6wn44M7bTk=
X-Google-Smtp-Source: APiQypLpr017bgyWOSDXzSoxGJzl6ChJozJ+0P/OQM1Yu1pkLWcBfZ/VyoAa/AbmmJNivzahvbLvug==
X-Received: by 2002:a62:1909:: with SMTP id 9mr6834132pfz.196.1585895110296;
 Thu, 02 Apr 2020 23:25:10 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id 13sm5103254pfn.131.2020.04.02.23.25.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 Apr 2020 23:25:09 -0700 (PDT)
Date: Thu, 2 Apr 2020 23:25:08 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v2 08/16] watchdog: add support for sl28cpld watchdog
Message-ID: <20200403062508.GA206903@roeck-us.net>
References: <20200402203656.27047-1-michael@walle.cc>
 <20200402203656.27047-9-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402203656.27047-9-michael@walle.cc>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_232511_356192_F3DD2364 
X-CRM114-Status: GOOD (  30.85  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-pwm@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 linux-watchdog@vger.kernel.org, linux-gpio@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Mark Brown <broonie@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 02, 2020 at 10:36:48PM +0200, Michael Walle wrote:
> This adds support for the watchdog of the sl28cpld board management
> controller. This is part of a multi-function device driver.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  drivers/watchdog/Kconfig        |  11 ++
>  drivers/watchdog/Makefile       |   1 +
>  drivers/watchdog/sl28cpld_wdt.c | 242 ++++++++++++++++++++++++++++++++
>  3 files changed, 254 insertions(+)
>  create mode 100644 drivers/watchdog/sl28cpld_wdt.c
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 0663c604bd64..6c53c1d0f348 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -340,6 +340,17 @@ config MLX_WDT
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called mlx-wdt.
>  
> +config SL28CPLD_WATCHDOG
> +	tristate "Kontron sl28 watchdog"
> +	depends on MFD_SL28CPLD
> +	select WATCHDOG_CORE
> +	help
> +	  Say Y here to include support for the watchdog timer
> +	  on the Kontron sl28 CPLD.
> +
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called sl28cpld_wdt.
> +
>  # ALPHA Architecture
>  
>  # ARM Architecture
> diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
> index 6de2e4ceef19..b9ecdf2d7347 100644
> --- a/drivers/watchdog/Makefile
> +++ b/drivers/watchdog/Makefile
> @@ -224,3 +224,4 @@ obj-$(CONFIG_MENF21BMC_WATCHDOG) += menf21bmc_wdt.o
>  obj-$(CONFIG_MENZ069_WATCHDOG) += menz69_wdt.o
>  obj-$(CONFIG_RAVE_SP_WATCHDOG) += rave-sp-wdt.o
>  obj-$(CONFIG_STPMIC1_WATCHDOG) += stpmic1_wdt.o
> +obj-$(CONFIG_SL28CPLD_WATCHDOG) += sl28cpld_wdt.o
> diff --git a/drivers/watchdog/sl28cpld_wdt.c b/drivers/watchdog/sl28cpld_wdt.c
> new file mode 100644
> index 000000000000..79a7e36217a6
> --- /dev/null
> +++ b/drivers/watchdog/sl28cpld_wdt.c
> @@ -0,0 +1,242 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * sl28cpld watchdog driver.
> + *
> + * Copyright 2019 Kontron Europe GmbH
> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/watchdog.h>
> +
> +/*
> + * Watchdog timer block registers.
> + */
> +#define WDT_CTRL			0x00
> +#define  WDT_CTRL_EN			BIT(0)
> +#define  WDT_CTRL_LOCK			BIT(2)
> +#define  WDT_CTRL_ASSERT_SYS_RESET	BIT(6)
> +#define  WDT_CTRL_ASSERT_WDT_TIMEOUT	BIT(7)
> +#define WDT_TIMEOUT			0x01
> +#define WDT_KICK			0x02
> +#define  WDT_KICK_VALUE			0x6b
> +#define WDT_COUNT			0x03
> +
> +static bool nowayout = WATCHDOG_NOWAYOUT;
> +module_param(nowayout, bool, 0);
> +MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started (default="
> +				__MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
> +
> +static int timeout;
> +module_param(timeout, int, 0);
> +MODULE_PARM_DESC(timeout, "Initial watchdog timeout in seconds");
> +
> +struct sl28cpld_wdt {
> +	struct watchdog_device wdd;
> +	struct regmap *regmap;
> +	u32 offset;
> +	bool assert_wdt_timeout;
> +};
> +
> +static int sl28cpld_wdt_ping(struct watchdog_device *wdd)
> +{
> +	struct sl28cpld_wdt *wdt = watchdog_get_drvdata(wdd);
> +
> +	return regmap_write(wdt->regmap, wdt->offset + WDT_KICK,
> +			    WDT_KICK_VALUE);
> +}
> +
> +static int sl28cpld_wdt_start(struct watchdog_device *wdd)
> +{
> +	struct sl28cpld_wdt *wdt = watchdog_get_drvdata(wdd);
> +	unsigned int val;
> +
> +	val = WDT_CTRL_EN | WDT_CTRL_ASSERT_SYS_RESET;
> +	if (wdt->assert_wdt_timeout)
> +		val |= WDT_CTRL_ASSERT_WDT_TIMEOUT;
> +	if (nowayout)
> +		val |= WDT_CTRL_LOCK;
> +
> +	return regmap_update_bits(wdt->regmap, wdt->offset + WDT_CTRL,
> +				  val, val);
> +}
> +
> +static int sl28cpld_wdt_stop(struct watchdog_device *wdd)
> +{
> +	struct sl28cpld_wdt *wdt = watchdog_get_drvdata(wdd);
> +
> +	return regmap_update_bits(wdt->regmap, wdt->offset + WDT_CTRL,
> +				  WDT_CTRL_EN, 0);
> +}
> +
> +static unsigned int sl28cpld_wdt_status(struct watchdog_device *wdd)
> +{
> +	struct sl28cpld_wdt *wdt = watchdog_get_drvdata(wdd);
> +	unsigned int status;
> +	int ret;
> +
> +	ret = regmap_read(wdt->regmap, wdt->offset + WDT_CTRL, &status);
> +	if (ret < 0)
> +		return 0;
> +
> +	/* is the watchdog timer running? */
> +	return (status & WDT_CTRL_EN) << WDOG_ACTIVE;

This is really bad coding style. It uses the fact that WDT_CTRL_EN is
at bit position 0 and sets WDOG_ACTIVE accordingly.

But that it is wrong, not even considering the coding style problem.
The status function is supposed to return WDIOF_ bits. What it returns
if the watchdog is running is WDOG_ACTIVE, or BIT(0), which is then
reported to userspace as WDIOF_OVERHEAT.

> +}
> +
> +static unsigned int sl28cpld_wdt_get_timeleft(struct watchdog_device *wdd)
> +{
> +	struct sl28cpld_wdt *wdt = watchdog_get_drvdata(wdd);
> +	int ret;
> +	unsigned int val;
> +
> +	ret = regmap_read(wdt->regmap, wdt->offset + WDT_COUNT, &val);
> +	if (ret < 0)
> +		return 0;
> +
> +	return val;
> +}
> +
> +static int sl28cpld_wdt_set_timeout(struct watchdog_device *wdd,
> +				  unsigned int timeout)
> +{
> +	int ret;
> +	struct sl28cpld_wdt *wdt = watchdog_get_drvdata(wdd);

Nit: Reverse christmas tree order looks a bit nicer.

> +
> +	ret = regmap_write(wdt->regmap, wdt->offset + WDT_TIMEOUT, timeout);
> +	if (ret == 0)

Please run checkpatch --strict and fix this and the reported alignment
problem.

> +		wdd->timeout = timeout;
> +
> +	return ret;
> +}
> +
> +static const struct watchdog_info sl28cpld_wdt_info = {
> +	.options = WDIOF_MAGICCLOSE | WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING,
> +	.identity = "SMARC-sAL28 CPLD watchdog",
> +};
> +
> +static struct watchdog_ops sl28cpld_wdt_ops = {
> +	.owner = THIS_MODULE,
> +	.start = sl28cpld_wdt_start,
> +	.stop = sl28cpld_wdt_stop,
> +	.status = sl28cpld_wdt_status,
> +	.ping = sl28cpld_wdt_ping,
> +	.set_timeout = sl28cpld_wdt_set_timeout,
> +	.get_timeleft = sl28cpld_wdt_get_timeleft,
> +};
> +
> +static int sl28cpld_wdt_locked(struct sl28cpld_wdt *wdt)
> +{
> +	unsigned int val;
> +	int ret;
> +
> +	ret = regmap_read(wdt->regmap, wdt->offset + WDT_CTRL, &val);
> +	if (ret < 0)
> +		return ret;
> +
> +	return val & WDT_CTRL_LOCK;
> +}
> +
> +static int sl28cpld_wdt_probe(struct platform_device *pdev)
> +{
> +	struct sl28cpld_wdt *wdt;
> +	struct watchdog_device *wdd;
> +	struct resource *res;
> +	unsigned int val;
> +	int ret;
> +
> +	if (!pdev->dev.parent)
> +		return -ENODEV;
> +
> +	wdt = devm_kzalloc(&pdev->dev, sizeof(*wdt), GFP_KERNEL);
> +	if (!wdt)
> +		return -ENOMEM;
> +
> +	wdt->regmap = dev_get_regmap(pdev->dev.parent, NULL);
> +	if (!wdt->regmap)
> +		return -ENODEV;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_REG, 0);
> +	if (res == NULL)
> +		return -EINVAL;
> +	wdt->offset = res->start;
> +
> +	if (device_property_read_bool(&pdev->dev,
> +				      "kontron,assert-wdt-timeout-pin"))
> +		wdt->assert_wdt_timeout = true;

This might be simpler written as
	wdt->assert_wdt_timeout = device_property_read_bool(...);

> +
> +	/* initialize struct watchdog_device */
> +	wdd = &wdt->wdd;
> +	wdd->parent = &pdev->dev;
> +	wdd->info = &sl28cpld_wdt_info;
> +	wdd->ops = &sl28cpld_wdt_ops;
> +	wdd->min_timeout = 1;
> +	wdd->max_timeout = 255;
> +
> +	watchdog_set_drvdata(wdd, wdt);
> +
> +	/* if the watchdog is locked, we set nowayout to true */
> +	ret = sl28cpld_wdt_locked(wdt);
> +	if (ret < 0)
> +		return ret;
> +	if (ret)
> +		nowayout = true;
> +	watchdog_set_nowayout(wdd, nowayout);
> +
> +	/*
> +	 * Initial timeout value, can either be set by kernel parameter or by
> +	 * the device tree. If both are not given the current value is used.
> +	 */
> +	watchdog_init_timeout(wdd, timeout, &pdev->dev);
> +	if (wdd->timeout) {
> +		sl28cpld_wdt_set_timeout(wdd, wdd->timeout);
> +	} else {
> +		ret = regmap_read(wdt->regmap, wdt->offset + WDT_TIMEOUT,
> +				  &val);
> +		if (ret < 0)
> +			return ret;
> +		wdd->timeout = val;

Oddly enough that can result in a timeout of 0 if that is what the chip
reports. Are you sure that is acceptable ?

> +	}
> +
> +	watchdog_stop_on_reboot(wdd);
> +	ret = devm_watchdog_register_device(&pdev->dev, wdd);

This does not inform the watchdog core if the watchdog is already active,
even though that is clearly supported. You might want to consider setting
WDOG_HW_RUNNING in that case.

> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "failed to register watchdog device\n");
> +		return ret;
> +	}
> +
> +	platform_set_drvdata(pdev, wdt);
> +

I don't see where this is used.

> +	dev_info(&pdev->dev, "CPLD watchdog: initial timeout %d sec%s\n",
> +		wdd->timeout, nowayout ? ", nowayout" : "");
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id sl28cpld_wdt_of_match[] = {
> +	{ .compatible = "kontron,sl28cpld-wdt" },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, sl28cpld_wdt_of_match);
> +
> +static const struct platform_device_id sl28cpld_wdt_id_table[] = {
> +	{ "sl28cpld-wdt" },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(platform, sl28cpld_wdt_id_table);
> +
> +static struct platform_driver sl28cpld_wdt_driver = {
> +	.probe = sl28cpld_wdt_probe,
> +	.id_table = sl28cpld_wdt_id_table,
> +	.driver = {
> +		.name = KBUILD_MODNAME,
> +		.of_match_table = sl28cpld_wdt_of_match,
> +	},
> +};
> +module_platform_driver(sl28cpld_wdt_driver);
> +
> +MODULE_DESCRIPTION("sl28cpld Watchdog Driver");
> +MODULE_AUTHOR("Michael Walle <michael@walle.cc>");
> +MODULE_LICENSE("GPL");

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
