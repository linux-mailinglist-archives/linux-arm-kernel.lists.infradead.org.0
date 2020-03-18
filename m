Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5A118A0B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 17:38:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7viM45vupcOPCjScVLwi9+WTUxt9ba0JVy5nOZbRv/g=; b=CFAV2r6h698zBuZom+UBjJwUz
	TtAqG/vaxMS0Ti7UN47YqI9MgQ6vnP2/AR0BUZpk24xsS4b8coYx67e6kOipPTyaqKvdXsXsazTNX
	dmEfzK99GXyM6a31jwbADwfB68EIMsnCFyOl2FikE71Seg6UzJxhe8GatSwG71D5q3vf8Z08qDQm9
	/Z1N9vDJD8poumKHl2bvpBmalvQq+191DwwAtJfMmUsViioc0S0KZGLejctAGSVkxD3I0dREIn+dH
	DdyVwvv4fbrjWmNTeBR4AJFSeUNvVih4dRVic4+pOINGPCHX3WcaFvOBAxLbZwg/knx5Kyo9f+dN8
	H2vsCI0jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEbiE-0004uv-QF; Wed, 18 Mar 2020 16:38:34 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEbi5-0004tk-Od
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 16:38:28 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 9C4CC23E23;
 Wed, 18 Mar 2020 17:38:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1584549503;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IkS8jJMv9wh5cSPJlxUZcqKz2rH3rVn5T/65gMAnXqA=;
 b=at0OUZVlamT2Rl+xqkcMU4i6fddcaaUExruxrtpDBMq+/6zLKQgmuVz7mAmraQiW/Dv/mZ
 NXbUVPgUan/HDRw4Qz6x7o9PFgN0E/AnyEmZTX/UGXxL0BAV+6SRIkgLV9jXe/RhFMY+AR
 uNf9dkArNwlub5PmHpKxGMf9G5MEEHM=
MIME-Version: 1.0
Date: Wed, 18 Mar 2020 17:38:23 +0100
From: Michael Walle <michael@walle.cc>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH 05/18] mfd: Add support for Kontron sl28cpld management
 controller
In-Reply-To: <1ea0ae38-c91d-810b-1474-71f17b66fbd0@roeck-us.net>
References: <20200317205017.28280-1-michael@walle.cc>
 <20200317205017.28280-6-michael@walle.cc>
 <1ea0ae38-c91d-810b-1474-71f17b66fbd0@roeck-us.net>
Message-ID: <9648f3e4cf30c9303a28c89d08519513@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 9C4CC23E23
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[22]; NEURAL_HAM(-0.00)[-0.621];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,linaro.org,baylibre.com,kernel.org,suse.com,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_093826_118045_340A9D63 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-hwmon@vger.kernel.org, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Marc Zyngier <maz@kernel.org>,
 linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Guenter Roeck <groeck7@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-03-18 04:28, schrieb Guenter Roeck:
> On 3/17/20 1:50 PM, Michael Walle wrote:
>> This patch adds core support for the board management controller found
>> on the SMARC-sAL28 board. It consists of the following functions:
>>  - watchdog
>>  - GPIO controller
>>  - PWM controller
>>  - fan sensor
>>  - interrupt controller
>> 
>> At the moment, this controller is used on the Kontron SMARC-sAL28 
>> board.
>> 
>> Signed-off-by: Michael Walle <michael@walle.cc>
>> ---
>>  drivers/mfd/Kconfig    |  21 ++++++
>>  drivers/mfd/Makefile   |   2 +
>>  drivers/mfd/sl28cpld.c | 155 
>> +++++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 178 insertions(+)
>>  create mode 100644 drivers/mfd/sl28cpld.c
>> 
>> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
>> index 3c547ed575e6..01588c366476 100644
>> --- a/drivers/mfd/Kconfig
>> +++ b/drivers/mfd/Kconfig
>> @@ -2059,5 +2059,26 @@ config SGI_MFD_IOC3
>>  	  If you have an SGI Origin, Octane, or a PCI IOC3 card,
>>  	  then say Y. Otherwise say N.
>> 
>> +config MFD_SL28CPLD
>> +	tristate "Kontron sl28 core driver"
>> +	depends on I2C=y
> 
> Why I2C=y and not just I2C ?

Oh this should be changed in the next patch which adds
interrupt controller support, where I2C=y is needed, correct?

-michael

> 
>> +	depends on OF
>> +	select REGMAP_I2C
>> +	select REGMAP_IRQ
>> +	select SL28CPLD_IRQ
>> +	select MFD_CORE
>> +	help
>> +	  This option enables support for the board management controller
>> +	  found on the Kontron sl28 CPLD. You have to select individual
>> +	  functions, such as watchdog, GPIO, etc, under the corresponding 
>> menus
>> +	  in order to enable them.
>> +
>> +	  Currently supported boards are:
>> +
>> +		Kontron SMARC-sAL28
>> +
>> +	  To compile this driver as a module, choose M here: the module will 
>> be
>> +	  called sl28cpld.
>> +
>>  endmenu
>>  endif
>> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
>> index f935d10cbf0f..9bc38863b9c7 100644
>> --- a/drivers/mfd/Makefile
>> +++ b/drivers/mfd/Makefile
>> @@ -259,3 +259,5 @@ obj-$(CONFIG_MFD_ROHM_BD718XX)	+= rohm-bd718x7.o
>>  obj-$(CONFIG_MFD_STMFX) 	+= stmfx.o
>> 
>>  obj-$(CONFIG_SGI_MFD_IOC3)	+= ioc3.o
>> +
>> +obj-$(CONFIG_MFD_SL28CPLD)	+= sl28cpld.o
>> diff --git a/drivers/mfd/sl28cpld.c b/drivers/mfd/sl28cpld.c
>> new file mode 100644
>> index 000000000000..789f21f90752
>> --- /dev/null
>> +++ b/drivers/mfd/sl28cpld.c
>> @@ -0,0 +1,155 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * MFD core for the CPLD on a SMARC-sAL28 board.
>> + *
>> + * Copyright 2019 Kontron Europe GmbH
>> + */
>> +
>> +#include <linux/kernel.h>
>> +#include <linux/module.h>
>> +#include <linux/of.h>
>> +#include <linux/of_address.h>
>> +#include <linux/of_platform.h>
>> +#include <linux/i2c.h>
>> +#include <linux/regmap.h>
>> +#include <linux/interrupt.h>
>> +#include <linux/mfd/core.h>
>> +
>> +#define SL28CPLD_VERSION 0x03
>> +#define SL28CPLD_WATCHDOG_BASE 0x4
>> +#define SL28CPLD_HWMON_FAN_BASE 0xb
>> +#define SL28CPLD_PWM0_BASE 0xc
>> +#define SL28CPLD_PWM1_BASE 0xe
>> +#define SL28CPLD_GPIO0_BASE 0x10
>> +#define SL28CPLD_GPIO1_BASE 0x15
>> +#define SL28CPLD_GPO_BASE 0x1a
>> +#define SL28CPLD_GPI_BASE 0x1b
>> +#define SL28CPLD_INTC_BASE 0x1c
>> +
>> +/* all subdevices share the same IRQ */
>> +#define SL28CPLD_IRQ 0
>> +
>> +#define SL28CPLD_MIN_REQ_VERSION 14
>> +
>> +struct sl28cpld {
>> +	struct device *dev;
>> +	struct regmap *regmap;
>> +};
>> +
>> +static const struct regmap_config sl28cpld_regmap_config = {
>> +	.reg_bits = 8,
>> +	.val_bits = 8,
>> +	.reg_stride = 1,
>> +};
>> +
>> +static struct resource sl28cpld_watchdog_resources[] = {
>> +	DEFINE_RES_REG(SL28CPLD_WATCHDOG_BASE, 1),
>> +};
>> +
>> +static struct resource sl28cpld_hwmon_fan_resources[] = {
>> +	DEFINE_RES_REG(SL28CPLD_HWMON_FAN_BASE, 1),
>> +};
>> +
>> +static struct resource sl28cpld_pwm0_resources[] = {
>> +	DEFINE_RES_REG(SL28CPLD_PWM0_BASE, 1),
>> +};
>> +
>> +static struct resource sl28cpld_pwm1_resources[] = {
>> +	DEFINE_RES_REG(SL28CPLD_PWM1_BASE, 1),
>> +};
>> +
>> +static struct resource sl28cpld_gpio0_resources[] = {
>> +	DEFINE_RES_REG(SL28CPLD_GPIO0_BASE, 1),
>> +	DEFINE_RES_IRQ(SL28CPLD_IRQ),
>> +};
>> +
>> +static struct resource sl28cpld_gpio1_resources[] = {
>> +	DEFINE_RES_REG(SL28CPLD_GPIO1_BASE, 1),
>> +	DEFINE_RES_IRQ(SL28CPLD_IRQ),
>> +};
>> +
>> +static struct resource sl28cpld_gpo_resources[] = {
>> +	DEFINE_RES_REG(SL28CPLD_GPO_BASE, 1),
>> +};
>> +
>> +static struct resource sl28cpld_gpi_resources[] = {
>> +	DEFINE_RES_REG(SL28CPLD_GPI_BASE, 1),
>> +};
>> +
>> +static struct resource sl28cpld_intc_resources[] = {
>> +	DEFINE_RES_REG(SL28CPLD_INTC_BASE, 1),
>> +	DEFINE_RES_IRQ(SL28CPLD_IRQ),
>> +};
>> +
>> +static const struct mfd_cell sl28cpld_devs[] = {
>> +	OF_MFD_CELL("sl28cpld-wdt", sl28cpld_watchdog_resources, NULL, 0, 0,
>> +		    "kontron,sl28cpld-wdt"),
>> +	OF_MFD_CELL("sl28cpld-fan", sl28cpld_hwmon_fan_resources, NULL, 0, 
>> 0,
>> +		    "kontron,sl28cpld-fan"),
>> +	OF_MFD_CELL("sl28cpld-pwm", sl28cpld_pwm0_resources, NULL, 0, 0,
>> +		    "kontron,sl28cpld-pwm"),
>> +	OF_MFD_CELL("sl28cpld-pwm", sl28cpld_pwm1_resources, NULL, 0, 1,
>> +		    "kontron,sl28cpld-pwm"),
>> +	OF_MFD_CELL("sl28cpld-gpio", sl28cpld_gpio0_resources, NULL, 0, 0,
>> +		    "kontron,sl28cpld-gpio"),
>> +	OF_MFD_CELL("sl28cpld-gpio", sl28cpld_gpio1_resources, NULL, 0, 1,
>> +		    "kontron,sl28cpld-gpio"),
>> +	OF_MFD_CELL("sl28cpld-gpo", sl28cpld_gpo_resources, NULL, 0, 0,
>> +		    "kontron,sl28cpld-gpo"),
>> +	OF_MFD_CELL("sl28cpld-gpi", sl28cpld_gpi_resources, NULL, 0, 0,
>> +		    "kontron,sl28cpld-gpi"),
>> +	OF_MFD_CELL("sl28cpld-intc", sl28cpld_intc_resources, NULL, 0, 0,
>> +		    "kontron,sl28cpld-intc"),
>> +};
>> +
>> +static int sl28cpld_probe(struct i2c_client *i2c)
>> +{
>> +	struct sl28cpld *sl28cpld;
>> +	struct device *dev = &i2c->dev;
>> +	unsigned int cpld_version;
>> +	int ret;
>> +
>> +	sl28cpld = devm_kzalloc(dev, sizeof(*sl28cpld), GFP_KERNEL);
>> +	if (!sl28cpld)
>> +		return -ENOMEM;
>> +
>> +	sl28cpld->regmap = devm_regmap_init_i2c(i2c, 
>> &sl28cpld_regmap_config);
>> +	if (IS_ERR(sl28cpld->regmap))
>> +		return PTR_ERR(sl28cpld->regmap);
>> +
>> +	ret = regmap_read(sl28cpld->regmap, SL28CPLD_VERSION, 
>> &cpld_version);
>> +	if (ret)
>> +		return ret;
>> +
>> +	if (cpld_version < SL28CPLD_MIN_REQ_VERSION) {
>> +		dev_err(dev, "unsupported CPLD version %d\n", cpld_version);
>> +		return -ENODEV;
>> +	}
>> +
>> +	sl28cpld->dev = dev;
>> +	i2c_set_clientdata(i2c, sl28cpld);
>> +
>> +	dev_info(dev, "successfully probed. CPLD version %d\n", 
>> cpld_version);
>> +
>> +	return devm_mfd_add_devices(dev, -1, sl28cpld_devs,
>> +				    ARRAY_SIZE(sl28cpld_devs), NULL,
>> +				    i2c->irq, NULL);
>> +}
>> +
>> +static const struct of_device_id sl28cpld_of_match[] = {
>> +	{ .compatible = "kontron,sl28cpld", },
>> +	{}
>> +};
>> +MODULE_DEVICE_TABLE(of, sl28cpld_of_match);
>> +
>> +static struct i2c_driver sl28cpld_driver = {
>> +	.probe_new = sl28cpld_probe,
>> +	.driver = {
>> +		.name = "sl28cpld",
>> +		.of_match_table = of_match_ptr(sl28cpld_of_match),
>> +	},
>> +};
>> +module_i2c_driver(sl28cpld_driver);
>> +
>> +MODULE_DESCRIPTION("sl28cpld MFD Core Driver");
>> +MODULE_LICENSE("GPL");
>> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
