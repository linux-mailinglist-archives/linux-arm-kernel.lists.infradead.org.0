Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD271D748A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 11:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jJ5FzSS/E7bJHtBCYVTixioiEaLWo/4EhLWktBxaf/Q=; b=D32KYujJdLqnV5Y9UnB1liZEQX
	RO6VoWxA/Tz4UuWxMBPsUMOtmOYpZ0FPpXTom+TUvuQOaEtqUBxj+zsZbcOK8j/2iLr/5tOqYyhsL
	lvM/teLgxp0nZvjB5P3W4rYNLKMweAn1aGYb2xZo0f6bEkiCyG/grvOMKWvmARxu5OHVYiWGKNXhY
	8A7IHyMpO/uuB6Rh7NX+IF5LzgFhoUjkH/8RIsxFYO66DNA5S+NeH5f3Duzx+NjC/7qgwpFy5vu2I
	DTs8IHCq3TniGLMR9qxiW8VyGqSX0hAMryWD6zG/pP5mdisv/THCsRwcJzl/J0GTDPQD1TYrU47SS
	ljvKtpFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jacXF-0004SL-AC; Mon, 18 May 2020 09:58:13 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jacWz-0004QK-Q5
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 09:58:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589795877; x=1621331877;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=4OvW5X7lQPqJSj1FDeUtnvAV3jtnCoqzvXyXeZaCI54=;
 b=qKblPw8O5t424MpU2gpFwRi2279Fdqa5MwjqQgDLDDUk/BSRoCD1ObW7
 deVB8emQY7iyOP9FcjmppcRJX/v371TroL803I+ixlhoPuad3csiLZexp
 Q45PNlWpRJ9epTpbzIIZoUkqBJ/bwnMaWm+OQd8+62pi4LIJMbjz6Qrj+
 oFjPaNheEu78kOVV0kddHlfXsxEScNtkeKiQXZXiQ1k0ow3YrCwYDcfL0
 QszeMJvfpdyZ1NOechzdrvQlv4Wx66jSw6UD6SLd98yEkyNkTsz3kfx0w
 KNrtKiETBpRdKYvgbYcwTsoG2ZnGwJNZNDh26ADstTtXSV+WC+qYHrTTw w==;
IronPort-SDR: r0o8fdMe+VRF7ORwmBrvsAcdfvtRYnk8GiP5A9+ii5LNqYTJ+ndORuwVonnHoR66E/kRLQNAmi
 hncaM9Bdzc+n3Jf2/uoxitOac1o/YmAQZ0UUK32JhMKflNJ1sNNILeLNzc6TQWoeCYyiRZJ11l
 3+5Ipj3LglaavQejVzEBbALtZYVF3r6JwPBIocdSxORNpqUmGtgOvLFEAx1uVK3q1uSnGC/5Cu
 GHWrvvb9/nSa8LcPmvFsactJGnHYrC+0AjVS4PG2U+R8g/fVaRQ+eu3043TYu1sp4cBQ9KEzNL
 rpA=
X-IronPort-AV: E=Sophos;i="5.73,406,1583218800"; d="scan'208";a="73754448"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 May 2020 02:57:56 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 May 2020 02:57:55 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 18 May 2020 02:57:54 -0700
References: <20200513134140.25357-1-lars.povlsen@microchip.com>
 <20200513134140.25357-4-lars.povlsen@microchip.com>
 <20200513152018.GA60367@roeck-us.net>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH 3/3] hwmon: sparx5: Add Sparx5 SoC temperature driver
In-Reply-To: <20200513152018.GA60367@roeck-us.net>
Date: Mon, 18 May 2020 11:57:52 +0200
Message-ID: <87tv0do99b.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_025757_893888_93DF0984 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 SoC Team <soc@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Guenter Roeck writes:

> On Wed, May 13, 2020 at 03:41:40PM +0200, Lars Povlsen wrote:
>> This patch adds a temperature sensor driver to the Sparx5 SoC.
>>
>> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>> ---
>>  drivers/hwmon/Kconfig       |  10 +++
>>  drivers/hwmon/Makefile      |   2 +-
>>  drivers/hwmon/sparx5-temp.c | 154 ++++++++++++++++++++++++++++++++++++
>>  3 files changed, 165 insertions(+), 1 deletion(-)
>>  create mode 100644 drivers/hwmon/sparx5-temp.c
>>
>> diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
>> index 4c62f900bf7e8..130cb1f1748ff 100644
>> --- a/drivers/hwmon/Kconfig
>> +++ b/drivers/hwmon/Kconfig
>> @@ -480,6 +480,16 @@ config SENSORS_I5K_AMB
>>         This driver can also be built as a module. If so, the module
>>         will be called i5k_amb.
>>
>> +config SENSORS_SPARX5
>> +     tristate "Sparx5 SoC temperature sensor"
>> +     depends on ARCH_SPARX5
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
>> index b0b9c8e571762..28a09986b7a62 100644
>> --- a/drivers/hwmon/Makefile
>> +++ b/drivers/hwmon/Makefile
>> @@ -64,6 +64,7 @@ obj-$(CONFIG_SENSORS_DS1621)        += ds1621.o
>>  obj-$(CONFIG_SENSORS_EMC1403)        += emc1403.o
>>  obj-$(CONFIG_SENSORS_EMC2103)        += emc2103.o
>>  obj-$(CONFIG_SENSORS_EMC6W201)       += emc6w201.o
>> +obj-$(CONFIG_SENSORS_SPARX5) += sparx5-temp.o
>>  obj-$(CONFIG_SENSORS_F71805F)        += f71805f.o
>>  obj-$(CONFIG_SENSORS_F71882FG)       += f71882fg.o
>>  obj-$(CONFIG_SENSORS_F75375S)        += f75375s.o
>> @@ -190,4 +191,3 @@ obj-$(CONFIG_SENSORS_OCC) += occ/
>>  obj-$(CONFIG_PMBUS)          += pmbus/
>>
>>  ccflags-$(CONFIG_HWMON_DEBUG_CHIP) := -DDEBUG
>> -
>> diff --git a/drivers/hwmon/sparx5-temp.c b/drivers/hwmon/sparx5-temp.c
>> new file mode 100644
>> index 0000000000000..bf9dd102a9825
>> --- /dev/null
>> +++ b/drivers/hwmon/sparx5-temp.c
>> @@ -0,0 +1,154 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later
>> +/* Sparx5 SoC temperature sensor driver
>> + *
>> + * Copyright (C) 2020 Lars Povlsen <lars.povlsen@microchip.com>
>> + */
>> +
>> +#include <linux/bitops.h>
>> +#include <linux/hwmon.h>
>> +#include <linux/hwmon-sysfs.h>
>
> Unnecessary include

Ack.

>
>> +#include <linux/init.h>
>> +#include <linux/io.h>
>> +#include <linux/module.h>
>> +#include <linux/of_device.h>
>> +
>> +#define TEMP_CTRL            0
>> +#define TEMP_CFG             4
>> +#define  TEMP_CFG_CYCLES     GENMASK(24, 15)
>> +#define  TEMP_CFG_CYCLES_OFF 15
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
>> +     val &= ~TEMP_CFG_CYCLES;
>> +     val |= (clk << TEMP_CFG_CYCLES_OFF);
>> +     val |= TEMP_CFG_ENA;
>> +
>> +     writel(val, hwmon->base + TEMP_CFG);
>> +}
>> +
>> +static void s5_temp_disable(void *data)
>> +{
>> +     struct s5_hwmon *hwmon = data;
>> +     u32 val = readl(hwmon->base + TEMP_CFG);
>> +
>> +     val &= ~TEMP_CFG_ENA;
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
>> +             if (stat & TEMP_STAT_VALID) {
>> +                     value = (stat & TEMP_STAT_TEMP);
>
> Unnecessary ( )

Removed.

>
>> +                     value = DIV_ROUND_CLOSEST(value * 3522, 4096) - 1094;
>> +                     value *= 100;
>> +                     *temp = value;
>> +             } else
>> +                     rc = -EINVAL;
>
> -EINVAL is for bad used input. -EIO, maybe, unless there is a better error.
> Also,
>
>                 if (!(stat & TEMP_STAT_VALID))
>                         return -EIO;

Ok, changed.

>                 ...
>
> would be easier to read (and not result in a checkpatch warning).
>
>> +             break;
>> +     default:
>> +             rc = -EOPNOTSUPP;
>
>                 break;
>

Added.

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
>> +     HWMON_CHANNEL_INFO(chip,
>> +                        HWMON_C_REGISTER_TZ),
>> +     HWMON_CHANNEL_INFO(temp,
>> +                        HWMON_T_INPUT),
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
>> +     int err = 0;
>
> Unnecessary initialization
>

Removed

>> +
>> +     hwmon = devm_kzalloc(&pdev->dev, sizeof(*hwmon), GFP_KERNEL);
>> +     if (!hwmon)
>> +             return -ENOMEM;
>> +
>> +     hwmon->base = devm_platform_ioremap_resource(pdev, 0);
>> +     if (IS_ERR(hwmon->base))
>> +             return PTR_ERR(hwmon->base);
>> +
>> +     err = devm_add_action(&pdev->dev, s5_temp_disable, hwmon);
>> +     if (err)
>> +             return err;
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
>> --
>> 2.26.2

Thank you for your input, I will submit anew asap.

---Lars

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
