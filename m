Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0547818A088
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 17:32:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4e26GC9meS6qq7k5JnUpzDJCLP1eU9cpWNSuPdc1MLk=; b=Nq1klyLeNyd6wadDFPfkvtBQ9
	a7ELZdSCH1mzDus2GxSBBL7UAfZY9G77Tmr6XWqhvb5fqu1gU/t4HCLKRY2b50snCIj4yHOzUgR1F
	UJ+7SU/E/ofaVz7VZgmlVDiJMNsvu4W9DEsUpFFcRu73WAeHJsqBW91w4kOAUaOEzecKQUlBH77St
	q4wHpMoVwD39IKScXtvjU/MavbPlQloZkXJCSRQjQ1R2pyqNt18J95PYKZubhLSAY6agxivKvywfz
	ASuHZ/ZazM9Wh8EfIQFONMsdZYcVMNheJcAqAPHY/uD/7tL4hKa8RsAVGqy+4mSsjptSucqBnenOU
	B30fODUCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEbcK-00034v-MW; Wed, 18 Mar 2020 16:32:28 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEbcA-00033p-Sy
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 16:32:21 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id C2CFB23E23;
 Wed, 18 Mar 2020 17:32:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1584549131;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Idl0BktXXRLYXkvi32poj/8TUpNGGgwAefDkjlqpqUs=;
 b=gkQeXX6FAqcg2ySxBsYbjug7xWK3DT08VpOfgU9lly25Y/uHNmIofD1K4mR/Mos9noRHqJ
 e3zXVOPfgApCY0JyctB3tLws5H/rcS4CP34uHAMKsp3bb5yRsP8aoqLq1cFuoFxjlhqOJ7
 KFaPM+0/ZyEXsY+cvy2vxZHmCsbk1dc=
MIME-Version: 1.0
Date: Wed, 18 Mar 2020 17:32:03 +0100
From: Michael Walle <michael@walle.cc>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH 14/18] hwmon: add support for the sl28cpld hardware
 monitoring controller
In-Reply-To: <11700297-affd-8bdc-2414-3dc7f2b62798@roeck-us.net>
References: <20200317205017.28280-1-michael@walle.cc>
 <20200317205017.28280-15-michael@walle.cc>
 <11700297-affd-8bdc-2414-3dc7f2b62798@roeck-us.net>
Message-ID: <a2639c58a45ce004e715f10aa9814531@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: C2CFB23E23
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[22]; NEURAL_HAM(-0.00)[-0.610];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,linaro.org,baylibre.com,kernel.org,suse.com,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_093219_238622_CF44D282 
X-CRM114-Status: GOOD (  22.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
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

Hi Guenter,

thanks for the review

Am 2020-03-18 04:27, schrieb Guenter Roeck:
> On 3/17/20 1:50 PM, Michael Walle wrote:
>> This adds support for the hardware monitoring controller of the 
>> sl28cpld
>> board management controller. This driver is part of a multi-function
>> device.
>> 
>> Signed-off-by: Michael Walle <michael@walle.cc>
>> ---
>>  drivers/hwmon/Kconfig          |  10 +++
>>  drivers/hwmon/Makefile         |   1 +
>>  drivers/hwmon/sl28cpld-hwmon.c | 146 
>> +++++++++++++++++++++++++++++++++
> 
> Please also provide Documentation/hwmon/sl28cpld.
> 
>>  3 files changed, 157 insertions(+)
>>  create mode 100644 drivers/hwmon/sl28cpld-hwmon.c
>> 
>> diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
>> index 05a30832c6ba..c98716f78cfa 100644
>> --- a/drivers/hwmon/Kconfig
>> +++ b/drivers/hwmon/Kconfig
>> @@ -1412,6 +1412,16 @@ config SENSORS_RASPBERRYPI_HWMON
>>  	  This driver can also be built as a module. If so, the module
>>  	  will be called raspberrypi-hwmon.
>> 
>> +config SENSORS_SL28CPLD
>> +	tristate "Kontron's SMARC-sAL28 hardware monitoring driver"
>> +	depends on MFD_SL28CPLD
>> +	help
>> +	  If you say yes here you get support for a fan connected to the
>> +	  input of the SMARC connector of Kontron's SMARC-sAL28 module.
>> +
>> +	  This driver can also be built as a module.  If so, the module
>> +	  will be called sl28cpld-hwmon.
>> +
>>  config SENSORS_SHT15
>>  	tristate "Sensiron humidity and temperature sensors. SHT15 and 
>> compat."
>>  	depends on GPIOLIB || COMPILE_TEST
>> diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
>> index b0b9c8e57176..dfb0f8cda2dd 100644
>> --- a/drivers/hwmon/Makefile
>> +++ b/drivers/hwmon/Makefile
>> @@ -155,6 +155,7 @@ obj-$(CONFIG_SENSORS_S3C)	+= s3c-hwmon.o
>>  obj-$(CONFIG_SENSORS_SCH56XX_COMMON)+= sch56xx-common.o
>>  obj-$(CONFIG_SENSORS_SCH5627)	+= sch5627.o
>>  obj-$(CONFIG_SENSORS_SCH5636)	+= sch5636.o
>> +obj-$(CONFIG_SENSORS_SL28CPLD)	+= sl28cpld-hwmon.o
>>  obj-$(CONFIG_SENSORS_SHT15)	+= sht15.o
>>  obj-$(CONFIG_SENSORS_SHT21)	+= sht21.o
>>  obj-$(CONFIG_SENSORS_SHT3x)	+= sht3x.o
>> diff --git a/drivers/hwmon/sl28cpld-hwmon.c 
>> b/drivers/hwmon/sl28cpld-hwmon.c
>> new file mode 100644
>> index 000000000000..7ac42bb0a48c
>> --- /dev/null
>> +++ b/drivers/hwmon/sl28cpld-hwmon.c
>> @@ -0,0 +1,146 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * SMARC-sAL28 fan hardware monitoring driver.
>> + *
>> + * Copyright 2019 Kontron Europe GmbH
>> + */
>> +
>> +#include <linux/kernel.h>
>> +#include <linux/module.h>
>> +#include <linux/bitfield.h>
>> +#include <linux/of.h>
>> +#include <linux/of_device.h>
>> +#include <linux/of_address.h>
>> +#include <linux/regmap.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/hwmon.h>
>> +
> Alphabetic order of include files, please.

ok, I guess that applies to all of the new files.


>> +#define FAN_INPUT		0
>> +#define   FAN_SCALE_X8		BIT(7)
>> +#define   FAN_VALUE_MASK	GENMASK(6, 0)
>> +
>> +struct sl28cpld_hwmon {
>> +	struct regmap *regmap;
>> +	u32 offset;
>> +};
>> +
>> +static umode_t sl28cpld_hwmon_is_visible(const void *data,
>> +					 enum hwmon_sensor_types type,
>> +					 u32 attr, int channel)
>> +{
>> +	return 0444;
>> +}
>> +
>> +static int sl28cpld_hwmon_read(struct device *dev,
>> +			       enum hwmon_sensor_types type, u32 attr,
>> +			       int channel, long *input)
>> +{
>> +	struct sl28cpld_hwmon *hwmon = dev_get_drvdata(dev);
>> +	unsigned int value;
>> +	int ret;
>> +
>> +	switch (attr) {
>> +	case hwmon_fan_input:
>> +		ret = regmap_read(hwmon->regmap, hwmon->offset + FAN_INPUT,
>> +				  &value);
>> +		if (ret)
>> +			return ret;
>> +		/*
>> +		 * The register has a 7 bit value and 1 bit which indicates the
>> +		 * scale. If the MSB is set, then the lower 7 bit has to be
>> +		 * multiplied by 8, to get the correct reading.
>> +		 */
>> +		if (value & FAN_SCALE_X8)
>> +			value = FIELD_GET(FAN_VALUE_MASK, value) << 3;
>> +
>> +		/*
>> +		 * The counter period is 1000ms and the sysfs specification
>> +		 * says we should asssume 2 pulses per revolution.
>> +		 */
>> +		value *= 60 / 2;
>> +
>> +		break;
>> +	default:
>> +		return -EOPNOTSUPP;
>> +	}
>> +
>> +	*input = value;
>> +	return 0;
>> +}
>> +
>> +static const u32 sl28cpld_hwmon_fan_config[] = {
>> +	HWMON_F_INPUT,
>> +	0
>> +};
>> +
>> +static const struct hwmon_channel_info sl28cpld_hwmon_fan = {
>> +	.type = hwmon_fan,
>> +	.config = sl28cpld_hwmon_fan_config,
>> +};
>> +
>> +static const struct hwmon_channel_info *sl28cpld_hwmon_info[] = {
>> +	&sl28cpld_hwmon_fan,
>> +	NULL
>> +};
>> +
>> +static const struct hwmon_ops sl28cpld_hwmon_ops = {
>> +	.is_visible = sl28cpld_hwmon_is_visible,
>> +	.read = sl28cpld_hwmon_read,
>> +};
>> +
>> +static const struct hwmon_chip_info sl28cpld_hwmon_chip_info = {
>> +	.ops = &sl28cpld_hwmon_ops,
>> +	.info = sl28cpld_hwmon_info,
>> +};
>> +
>> +static int sl28cpld_hwmon_probe(struct platform_device *pdev)
>> +{
>> +	struct device *hwmon_dev;
>> +	struct sl28cpld_hwmon *hwmon;
>> +	struct resource *res;
>> +
>> +	hwmon = devm_kzalloc(&pdev->dev, sizeof(*hwmon), GFP_KERNEL);
>> +	if (!hwmon)
>> +		return -ENOMEM;
>> +
>> +	if (!pdev->dev.parent)
>> +		return -ENODEV;
>> +
> Maybe do this first ?

ok. like explained on another patch review comment, I had that
together with the following dev_get_regmap() which uses this.
But I was already not sure while writing the code whether I
should do it first and don't have to undo the devm_ in case of
an error. Well since already two reviewers stumbled on this,
I'll do it first on all the patches.


>> +	hwmon->regmap = dev_get_regmap(pdev->dev.parent, NULL);
>> +	if (!hwmon->regmap)
>> +		return -ENODEV;
>> +
>> +	res = platform_get_resource(pdev, IORESOURCE_REG, 0);
>> +	if (!res)
>> +		return -EINVAL;
>> +	hwmon->offset = res->start;
>> +
>> +	hwmon_dev = devm_hwmon_device_register_with_info(&pdev->dev,
>> +							 "sl28cpld_hwmon",
>> +							 hwmon,
>> +							 &sl28cpld_hwmon_chip_info,
>> +							 NULL);
>> +	if (IS_ERR(hwmon_dev)) {
>> +		dev_err(&pdev->dev, "failed to register as hwmon device");
>> +		return PTR_ERR(hwmon_dev);
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct platform_device_id sl28cpld_hwmon_id_table[] = {
>> +	{"sl28cpld-fan", 0},
>> +};
>> +MODULE_DEVICE_TABLE(platform, sl28cpld_hwmon_id_table);
>> +
>> +static struct platform_driver sl28cpld_hwmon_driver = {
>> +	.probe = sl28cpld_hwmon_probe,
>> +	.id_table = sl28cpld_hwmon_id_table,
> 
> I'd have expected an of_match_table.

There was one, but, since I use mfd_add_devices() which uses the
platform driver name (or the id_table) I removed it. While it
doesn't really matter here in the hwmon part for now, the GPIO
driver uses the id_table data to distinguish between different
flavors of the GPIO controller. So there I'd have to duplicate
data in the tables (eg. the id_table as well as the
of_match_table) and get that data in the _probe(), although only
the id_table data is used.

-michael

> 
>> +	.driver = {
>> +		.name = "sl28cpld-hwmon",
>> +	},
>> +};
>> +module_platform_driver(sl28cpld_hwmon_driver);
>> +
>> +MODULE_DESCRIPTION("sl28cpld Hardware Monitoring Driver");
>> +MODULE_LICENSE("GPL");
>> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
