Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B83AC1FF085
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 13:31:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AIMLv4i9ndR8k2QyaQ4lDH5hg1lGiZa3RUj78i5tCe0=; b=hWd86nXU00rmO7cgt/R69wglKn
	c5M+BTMRnq3ceEHOiQGvyE7uL2lcNHKb7vTrZ5taTmzYMOC5g48lAjHxY+cnuW5c8Skru0TFaUCuY
	OUBnenkLsTrqpn38pdTo7mc6aRcoq4mPClmgXxHKNuo3uXFoB+hhDYJ3rw5mSc5rkv051aUPZtz2f
	RDz4hyfJ6JE80ThOVkBNSeE1i70NgheXv+lWcL/nmTz7Ab4xzuOdv05v2APMjkcPauL2WQEacBXln
	rRQ9LTnOPBfgXUCE3Jt6hKCF52DzrAMCwp/gGbWxxGUhd654i3X0i2msWwJYoR7kD3G1UKwv9YGcE
	9uhvtpGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlsli-0007fo-KL; Thu, 18 Jun 2020 11:31:42 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlslY-0007eo-JR
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 11:31:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592479893; x=1624015893;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=fDjMVXtMTZ2HWY9E00w48WZpz44oyO+oc1cgMEc4zbo=;
 b=oo3h2kVewcdNCUozcMd4WfocVLFegEDm/bmHFZrzlviLAHfOJxHrsfxi
 aOp8RPHMfIiEr8q3KAlzXjYzASbnqQTInGecr0NLEPv4V/ZpGAAuaXWYH
 AWKnH18UhaAEKAcDZM0OHLeljNUXKsec3vnpLPAjS/tUxFrgVlvK5e8un
 3BAW5lHXuW3163ycgQR5Ex26V2ZfO5GpZFCcUUAkjBvCQ0JUG6DTQFKx3
 pUTdAI11UGXw7sxsGmBq7GkbQfNXNwvEIymHYSdMwIL4EK4iw+R2ACIxw
 P9h5K5vtNUCUHGk2epe4DJI2x2mujke/LCGhUIBJqAwFv+4a/PSWZWN6K A==;
IronPort-SDR: gvlMpEiR3kTqMCQ+dV6NdL/esUxVuocXP1AeqEbyxu1npCzRzbdK8z2zOG+e/SYFQLGd2uunbH
 p00mHThX6/jwwxLe4xvLBq1NjxIuFa5BAlwgSjowFWCJyjJyebF1fmjiTJ71QPHR5dVSwneZ8l
 O5CDBeA8wpD+cet1lIu/FZHlRzf38ZbR8yhAyzy0xY+v+ZFV1HXxmw+yLouAzs8fu40Kjfri1+
 7Aqag/bVSuIyQRwQhibQWrJFGjIGBzN6wrH0aB7rhgkTLfquguXu8a0ete6xKM7ekvSBQiPOF6
 fns=
X-IronPort-AV: E=Sophos;i="5.73,526,1583218800"; d="scan'208";a="79965936"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Jun 2020 04:31:29 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 18 Jun 2020 04:31:21 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3
 via Frontend Transport; Thu, 18 Jun 2020 04:31:19 -0700
References: <20200616082556.27877-1-lars.povlsen@microchip.com>
 <20200616082556.27877-4-lars.povlsen@microchip.com>
 <b44120d8-67fe-4ba3-bc76-80a5a0970dad@roeck-us.net>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v3 3/3] hwmon: sparx5: Add Sparx5 SoC temperature driver
In-Reply-To: <b44120d8-67fe-4ba3-bc76-80a5a0970dad@roeck-us.net>
Date: Thu, 18 Jun 2020 13:31:24 +0200
Message-ID: <87ftaswqyb.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_043132_666157_EE421037 
X-CRM114-Status: GOOD (  20.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.71.150.166 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Guenter Roeck writes:

> On 6/16/20 1:25 AM, Lars Povlsen wrote:
>> This patch adds a temperature sensor driver to the Sparx5 SoC.
>>
>> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>> ---
>>  drivers/hwmon/Kconfig       |  10 +++
>>  drivers/hwmon/Makefile      |   1 +
>>  drivers/hwmon/sparx5-temp.c | 136 ++++++++++++++++++++++++++++++++++++
>
> This will also require documentation in
>         Documentation/hwmon/sparx5-temp.rst
>
>>  3 files changed, 147 insertions(+)
>>  create mode 100644 drivers/hwmon/sparx5-temp.c
>>
>> diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
>> index 288ae9f63588c..7fb5e0c6c6306 100644
>> --- a/drivers/hwmon/Kconfig
>> +++ b/drivers/hwmon/Kconfig
>> @@ -515,6 +515,16 @@ config SENSORS_I5K_AMB
>>         This driver can also be built as a module. If so, the module
>>         will be called i5k_amb.
>>
>> +config SENSORS_SPARX5
>> +     tristate "Sparx5 SoC temperature sensor"
>> +     depends on ARCH_SPARX5 || COMPILE_TEST
>> +     help
>> +       If you say yes here you get support for temperature monitoring
>> +       with the Microchip Sparx5 SoC.
>> +
>> +       This driver can also be built as a module. If so, the module
>> +       will be called sparx5-temp.
>> +
>>  config SENSORS_F71805F
>>       tristate "Fintek F71805F/FG, F71806F/FG and F71872F/FG"
>>       depends on !PPC
>> diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
>> index 3e32c21f5efe3..857293f650412 100644
>> --- a/drivers/hwmon/Makefile
>> +++ b/drivers/hwmon/Makefile
>> @@ -167,6 +167,7 @@ obj-$(CONFIG_SENSORS_SMM665)      += smm665.o
>>  obj-$(CONFIG_SENSORS_SMSC47B397)+= smsc47b397.o
>>  obj-$(CONFIG_SENSORS_SMSC47M1)       += smsc47m1.o
>>  obj-$(CONFIG_SENSORS_SMSC47M192)+= smsc47m192.o
>> +obj-$(CONFIG_SENSORS_SPARX5) += sparx5-temp.o
>>  obj-$(CONFIG_SENSORS_STTS751)        += stts751.o
>>  obj-$(CONFIG_SENSORS_AMC6821)        += amc6821.o
>>  obj-$(CONFIG_SENSORS_TC74)   += tc74.o
>> diff --git a/drivers/hwmon/sparx5-temp.c b/drivers/hwmon/sparx5-temp.c
>> new file mode 100644
>> index 0000000000000..4ed8a2aec3ae9
>> --- /dev/null
>> +++ b/drivers/hwmon/sparx5-temp.c
>> @@ -0,0 +1,136 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later
>> +/* Sparx5 SoC temperature sensor driver
>> + *
>> + * Copyright (C) 2020 Lars Povlsen <lars.povlsen@microchip.com>
>> + */
>> +
>> +#include <linux/module.h>
>> +#include <linux/init.h>
>> +#include <linux/hwmon.h>
>> +#include <linux/io.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/mod_devicetable.h>
>> +#include <linux/bitfield.h>
>
> Alphabetic order, please.

Ack.

>
>> +
>> +#define TEMP_CTRL            0
>> +#define TEMP_CFG             4
>> +#define  TEMP_CFG_CYCLES     GENMASK(24, 15)
>> +#define  TEMP_CFG_ENA                BIT(0)
>> +#define TEMP_STAT            8
>> +#define  TEMP_STAT_VALID     BIT(12)
>> +#define  TEMP_STAT_TEMP              GENMASK(11, 0)
>> +
>> +struct s5_hwmon {
>> +     void __iomem *base;
>> +};
>> +
>> +static void s5_temp_enable(struct s5_hwmon *hwmon)
>> +{
>> +     u32 val = readl(hwmon->base + TEMP_CFG);
>> +     u32 clk = 250;
>> +
>
> Unnecessary variable, and magic number. It would be better to use a define
> or at least explain what the number is for. Also, if this is associated with
> a system clock, would it make sense to use the clock subsystem API to get
> the rate ?
>

Yes, valid point. Changed to reference the system AHB clock, so DT and
bindings updated as well. (The magic number is clock ticks per 1us).

I am sending an update asap.

Thank you for your comments, they are highly appreciated!

Cheers,

---Lars

>> +     val &= ~TEMP_CFG_CYCLES;
>> +     val |= FIELD_PREP(TEMP_CFG_CYCLES, clk);
>> +     val |= TEMP_CFG_ENA;
>> +
>> +     writel(val, hwmon->base + TEMP_CFG);
>> +}
>> +
>> +static int s5_read(struct device *dev, enum hwmon_sensor_types type,
>> +                u32 attr, int channel, long *temp)
>> +{
>> +     struct s5_hwmon *hwmon = dev_get_drvdata(dev);
>> +     int rc = 0, value;
>> +     u32 stat;
>> +
>> +     switch (attr) {
>> +     case hwmon_temp_input:
>> +             stat = readl_relaxed(hwmon->base + TEMP_STAT);
>> +             if (!(stat & TEMP_STAT_VALID))
>> +                     return -EIO;
>> +             value = stat & TEMP_STAT_TEMP;
>> +             value = DIV_ROUND_CLOSEST(value * 3522, 4096) - 1094;
>
> A comment describing the calculation would be useful, not only to help
> the reader but also to help me verify if the calculation is correct
> (especially since datasheets don't seem to be public).
>

I have added the register docs and commented the calculations.

>> +             value *= 100;
>> +             *temp = value;
>> +             break;
>> +     default:
>> +             rc = -EOPNOTSUPP;
>> +             break;
>> +     }
>> +
>> +     return rc;
>> +}
>> +
>> +static umode_t s5_is_visible(const void *_data, enum hwmon_sensor_types type,
>> +                          u32 attr, int channel)
>> +{
>> +     if (type != hwmon_temp)
>> +             return 0;
>> +
>> +     switch (attr) {
>> +     case hwmon_temp_input:
>> +             return 0444;
>> +     default:
>> +             return 0;
>> +     }
>> +}
>> +
>> +static const struct hwmon_channel_info *s5_info[] = {
>> +     HWMON_CHANNEL_INFO(chip, HWMON_C_REGISTER_TZ),
>> +     HWMON_CHANNEL_INFO(temp, HWMON_T_INPUT),
>> +     NULL
>> +};
>> +
>> +static const struct hwmon_ops s5_hwmon_ops = {
>> +     .is_visible = s5_is_visible,
>> +     .read = s5_read,
>> +};
>> +
>> +static const struct hwmon_chip_info s5_chip_info = {
>> +     .ops = &s5_hwmon_ops,
>> +     .info = s5_info,
>> +};
>> +
>> +static int s5_temp_probe(struct platform_device *pdev)
>> +{
>> +     struct device *hwmon_dev;
>> +     struct s5_hwmon *hwmon;
>> +
>> +     hwmon = devm_kzalloc(&pdev->dev, sizeof(*hwmon), GFP_KERNEL);
>> +     if (!hwmon)
>> +             return -ENOMEM;
>> +
>> +     hwmon->base = devm_platform_ioremap_resource(pdev, 0);
>> +     if (IS_ERR(hwmon->base))
>> +             return PTR_ERR(hwmon->base);
>> +
>> +     s5_temp_enable(hwmon);
>> +
>> +     hwmon_dev = devm_hwmon_device_register_with_info(&pdev->dev,
>> +                                                      "s5_temp",
>> +                                                      hwmon,
>> +                                                      &s5_chip_info,
>> +                                                      NULL);
>> +
>> +     return PTR_ERR_OR_ZERO(hwmon_dev);
>> +}
>> +
>> +const struct of_device_id s5_temp_match[] = {
>> +     { .compatible = "microchip,sparx5-temp" },
>> +     {},
>> +};
>> +MODULE_DEVICE_TABLE(of, s5_temp_match);
>> +
>> +static struct platform_driver s5_temp_driver = {
>> +     .probe = s5_temp_probe,
>> +     .driver = {
>> +             .name = "sparx5-temp",
>> +             .of_match_table = s5_temp_match,
>> +     },
>> +};
>> +
>> +module_platform_driver(s5_temp_driver);
>> +
>> +MODULE_AUTHOR("Lars Povlsen <lars.povlsen@microchip.com>");
>> +MODULE_DESCRIPTION("Sparx5 SoC temperature sensor driver");
>> +MODULE_LICENSE("GPL");
>>

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
