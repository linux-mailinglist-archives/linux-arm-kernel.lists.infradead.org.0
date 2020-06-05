Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF1E1EF4A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 11:51:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8rDJtcHtO16d7h4AzA8GRwCyqNbNMaC8hdIgXiU7XZE=; b=L81SBIPx3do/2Nyr2J3YQD5UN
	zoGytf6eex8xgxXHQLOHLpAGWsFh896ggjQ2gjdWN+8Pb5xq4qLlWS6QT75h2JnUT/2AKiowJekfq
	KLtdehz/x4Jek+aEBfiuQlrlqpEuXoeY4EefttRuGBQxV8kWjtOaH+vs4SHCn2qrmeGqJpg4JGtWg
	BTYNcgKZWvM531+Dyg+PwC/GuRaDPdwbZ4EIl/vh7KRPDBKnTJYrr/ncX5mNVS7BgWmRMA6EG+N0C
	+CtfeU5X2cddcg6uVa4qF3aBJurswz0nlxxYeP5dIt6LQeU8WrZDWmWAH8k8MD1E1Tetjro7r/pHE
	Qp970T0Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh90o-0006ep-CD; Fri, 05 Jun 2020 09:51:42 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh90c-0006dO-CT
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 09:51:36 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 390392304C;
 Fri,  5 Jun 2020 11:51:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1591350685;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+rGovv/Tm21fPTQNNhJm5pWTIw+9W6X3Bz7Lc/tr8rQ=;
 b=fyfCGcabpdPEHsy7K1DFEm+ItvckBg8BQ6ve307uqns5b76jbVY4udCeIehsF3XDTIj9af
 U73XPujXSdYcfZka6IMsd9+SSJ8k6zRGw+wreg1JDIe330xDGXLmUo9f79fdHSMKw8Uofv
 wVI2ui8pfJSRQ8s51pfnBoFUbiMJmwE=
MIME-Version: 1.0
Date: Fri, 05 Jun 2020 11:51:24 +0200
From: Michael Walle <michael@walle.cc>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld management
 controller
In-Reply-To: <20200605065709.GD3714@dell>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-3-michael@walle.cc> <20200605065709.GD3714@dell>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <ccbafa481fda09146d36f1c220c5a44d@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_025130_739386_EAF6117B 
X-CRM114-Status: GOOD (  26.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, broonie@kernel.org,
 Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lee,

thanks for the review.

Am 2020-06-05 08:57, schrieb Lee Jones:
> Mark, what do you think?
> 
> On Thu, 04 Jun 2020, Michael Walle wrote:
> 
>> Add the core support for the board management controller found on the
>> SMARC-sAL28 board. It consists of the following functions:
>>  - watchdog
>>  - GPIO controller
>>  - PWM controller
>>  - fan sensor
>>  - interrupt controller
>> 
>> At the moment, this controller is used on the Kontron SMARC-sAL28 
>> board.
>> 
>> Please note that the MFD driver is defined as bool in the Kconfig
>> because the next patch will add interrupt support.
>> 
>> Signed-off-by: Michael Walle <michael@walle.cc>
>> ---
>>  drivers/mfd/Kconfig    | 19 ++++++++++
>>  drivers/mfd/Makefile   |  2 ++
>>  drivers/mfd/sl28cpld.c | 79 
>> ++++++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 100 insertions(+)
>>  create mode 100644 drivers/mfd/sl28cpld.c
>> 
>> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
>> index 4f8b73d92df3..5c0cd514d197 100644
>> --- a/drivers/mfd/Kconfig
>> +++ b/drivers/mfd/Kconfig
>> @@ -2109,5 +2109,24 @@ config SGI_MFD_IOC3
>>  	  If you have an SGI Origin, Octane, or a PCI IOC3 card,
>>  	  then say Y. Otherwise say N.
>> 
>> +config MFD_SL28CPLD
>> +	bool "Kontron sl28 core driver"
> 
> "Kontron SL28 Core Driver"

ok

> 
>> +	depends on I2C=y
>> +	depends on OF
>> +	select REGMAP_I2C
>> +	select MFD_CORE
>> +	help
>> +	  This option enables support for the board management controller
>> +	  found on the Kontron sl28 CPLD. You have to select individual
> 
> I can't find any reference to the "Kontron sl28 CPLD" online.
> 
> Is there a datasheet?

Unfortunately not.

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
>> index 9367a92f795a..be59fb40aa28 100644
>> --- a/drivers/mfd/Makefile
>> +++ b/drivers/mfd/Makefile
>> @@ -264,3 +264,5 @@ obj-$(CONFIG_MFD_ROHM_BD718XX)	+= rohm-bd718x7.o
>>  obj-$(CONFIG_MFD_STMFX) 	+= stmfx.o
>> 
>>  obj-$(CONFIG_SGI_MFD_IOC3)	+= ioc3.o
>> +
>> +obj-$(CONFIG_MFD_SL28CPLD)	+= sl28cpld.o
>> diff --git a/drivers/mfd/sl28cpld.c b/drivers/mfd/sl28cpld.c
>> new file mode 100644
>> index 000000000000..a23194bb6efa
>> --- /dev/null
>> +++ b/drivers/mfd/sl28cpld.c
>> @@ -0,0 +1,79 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * MFD core for the sl28cpld.
> 
> Ideally this would match the Kconfig subject line.

ok

> 
>> + * Copyright 2019 Kontron Europe GmbH
> 
> This is out of date.

ok

>> + */
>> +
>> +#include <linux/i2c.h>
>> +#include <linux/interrupt.h>
>> +#include <linux/kernel.h>
>> +#include <linux/mfd/core.h>
>> +#include <linux/module.h>
>> +#include <linux/of_platform.h>
>> +#include <linux/regmap.h>
>> +
>> +#define SL28CPLD_VERSION	0x03
>> +#define SL28CPLD_MIN_REQ_VERSION 14
>> +
>> +struct sl28cpld {
>> +	struct device *dev;
>> +	struct regmap *regmap;
>> +};
> 
> Why do you need this structure?

see below

>> +static const struct regmap_config sl28cpld_regmap_config = {
>> +	.reg_bits = 8,
>> +	.val_bits = 8,
>> +	.reg_stride = 1,
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
> 
> This is now a shared memory allocator and not an MFD at all.
> 
> I'm clamping down on these type of drivers!
> 
> Please find a better way to accomplish this.
> 
> Potentially using "simple-mfd" and "simple-regmap".
> 
> The former already exists and does what you want.  The latter doesn't
> yet exist, but could solve your and lots of other contributor's
> issues.

Mh, the former doesn't provide a regmap, correct? Most MMIO drivers 
won't
need it, but this is an I2C device. So yes, I could come up with a
"simple-regmap" proposal. I guess that should go into drivers/mfd/ 
because
it is more than just adding one line, i.e. you would have to configure 
the
regmap and its different interfaces.

But how would you model that version check below for example? (Not that 
I'm
very keen of it.)

> 
> Heck maybe I'll implement it myself if this keeps happening.
> 
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
> 
> If the struct definition is in here, how do you use it elsewhere?

I wanted to store the regmap somewhere, but because there are no users, 
I'll
drop that.

>> +	dev_info(dev, "successfully probed. CPLD version %d\n", 
>> cpld_version);
>> +
>> +	return devm_of_platform_populate(&i2c->dev);
>> +}
>> +
>> +static const struct of_device_id sl28cpld_of_match[] = {
>> +	{ .compatible = "kontron,sl28cpld-r1", },
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
>> +MODULE_AUTHOR("Michael Walle <michael@walle.cc>");
>> +MODULE_LICENSE("GPL");

-- 
-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
