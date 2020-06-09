Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D5D1F3B5C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 15:03:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lIalrdwXU7NBOD0k0oOU8JyqLsfFV0hNlm/cGbADfRQ=; b=d/vN6H5zG3sw1s
	PAHGUN+okfyaG/URMZzGZEBdrZ3O7pFxl14EUi+A4vp3xSBEHJTDjnMxUiSJBDxauR2AB7F6Zkf2l
	6UxLCfkfTNbRLZoW44Dvpf71pGiGR2RjaOcsxm5VN1PsQmMeR05+5b3lXS/36vE9992jQmzy2KUS4
	jwyy4m75HpKnZo2vqMqfmaPeAWEWemLEueZK5ZC2cEJ0CDlMVS5vYuKN+XzQEOtjpBUovCEu/YFRr
	jLoMQTFGDClUwvQMDlmpvjrxlsT2wi0B8eRc8uzs2WN6zrDOk0JBn87O61l+5UixsdH5VjqI9mgzX
	5EnxwKefM6O1gnJh/Phw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiduf-0003Hb-Iw; Tue, 09 Jun 2020 13:03:33 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiduX-0003G3-L9
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 13:03:28 +0000
Received: from lhreml710-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id BE4E3B52E37FC3B0FF53;
 Tue,  9 Jun 2020 14:03:14 +0100 (IST)
Received: from localhost (10.227.96.57) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Tue, 9 Jun 2020
 14:03:14 +0100
Date: Tue, 9 Jun 2020 14:03:13 +0100
From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH v2 3/3] hwmon: sparx5: Add Sparx5 SoC temperature driver
Message-ID: <20200609140313.00007187@huawei.com>
In-Reply-To: <87h7vkig6i.fsf@soft-dev15.microsemi.net>
References: <20200609072828.9088-1-lars.povlsen@microchip.com>
 <20200609074940.9529-1-lars.povlsen@microchip.com>
 <20200609093808.00003aad@Huawei.com>
 <87h7vkig6i.fsf@soft-dev15.microsemi.net>
Organization: Huawei tech. R&D (UK)  Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.227.96.57]
X-ClientProxiedBy: lhreml707-chm.china.huawei.com (10.201.108.56) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_060325_994806_615EA21F 
X-CRM114-Status: GOOD (  28.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [185.176.76.210 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 linux-arm-kernel@lists.infradead.org, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 9 Jun 2020 14:20:37 +0200
Lars Povlsen <lars.povlsen@microchip.com> wrote:

> Jonathan Cameron writes:
> 
> > On Tue, 9 Jun 2020 09:49:40 +0200
> > Lars Povlsen <lars.povlsen@microchip.com> wrote:
> >  
> >> This patch adds a temperature sensor driver to the Sparx5 SoC.
> >>
> >> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> >> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>  
> >
> > Hi.  Quick drive by review whilst waiting for coffee time...
> >
> > A few minor suggestions inline.
> >  
> 
> Much appreciated!
> 
> > Thanks,
> >
> > Jonathan
> >  
> >> ---
> >>  drivers/hwmon/Kconfig       |  10 +++
> >>  drivers/hwmon/Makefile      |   2 +-
> >>  drivers/hwmon/sparx5-temp.c | 152
> >> ++++++++++++++++++++++++++++++++++++ 3 files changed, 163
> >> insertions(+), 1 deletion(-) create mode 100644
> >> drivers/hwmon/sparx5-temp.c
> >>
> >> diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
> >> index 288ae9f63588c..ec6bb8b8b12df 100644
> >> --- a/drivers/hwmon/Kconfig
> >> +++ b/drivers/hwmon/Kconfig
> >> @@ -515,6 +515,16 @@ config SENSORS_I5K_AMB
> >>         This driver can also be built as a module. If so, the
> >> module will be called i5k_amb.
> >>
> >> +config SENSORS_SPARX5
> >> +     tristate "Sparx5 SoC temperature sensor"
> >> +     depends on ARCH_SPARX5  
> > Anything stop this building with COMPILE_TEST?
> >
> > That will great increase automated build coverage.
> >  
> >> +     help
> >> +       If you say yes here you get support for temperature
> >> monitoring
> >> +       with the Microchip Sparx5 SoC.
> >> +
> >> +       This driver can also be built as a module. If so, the
> >> module
> >> +       will be called sparx5-temp.
> >> +
> >>  config SENSORS_F71805F
> >>       tristate "Fintek F71805F/FG, F71806F/FG and F71872F/FG"
> >>       depends on !PPC
> >> diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
> >> index 3e32c21f5efe3..144f09993a3f4 100644
> >> --- a/drivers/hwmon/Makefile
> >> +++ b/drivers/hwmon/Makefile
> >> @@ -66,6 +66,7 @@ obj-$(CONFIG_SENSORS_DS1621)        += ds1621.o
> >>  obj-$(CONFIG_SENSORS_EMC1403)        += emc1403.o
> >>  obj-$(CONFIG_SENSORS_EMC2103)        += emc2103.o
> >>  obj-$(CONFIG_SENSORS_EMC6W201)       += emc6w201.o
> >> +obj-$(CONFIG_SENSORS_SPARX5) += sparx5-temp.o
> >>  obj-$(CONFIG_SENSORS_F71805F)        += f71805f.o
> >>  obj-$(CONFIG_SENSORS_F71882FG)       += f71882fg.o
> >>  obj-$(CONFIG_SENSORS_F75375S)        += f75375s.o
> >> @@ -193,4 +194,3 @@ obj-$(CONFIG_SENSORS_OCC) += occ/
> >>  obj-$(CONFIG_PMBUS)          += pmbus/
> >>
> >>  ccflags-$(CONFIG_HWMON_DEBUG_CHIP) := -DDEBUG
> >> -
> >> diff --git a/drivers/hwmon/sparx5-temp.c
> >> b/drivers/hwmon/sparx5-temp.c new file mode 100644
> >> index 0000000000000..2e754462b6010
> >> --- /dev/null
> >> +++ b/drivers/hwmon/sparx5-temp.c
> >> @@ -0,0 +1,152 @@
> >> +// SPDX-License-Identifier: GPL-2.0-or-later
> >> +/* Sparx5 SoC temperature sensor driver
> >> + *
> >> + * Copyright (C) 2020 Lars Povlsen <lars.povlsen@microchip.com>
> >> + */
> >> +
> >> +#include <linux/module.h>
> >> +#include <linux/init.h>
> >> +#include <linux/hwmon.h>
> >> +#include <linux/io.h>
> >> +#include <linux/of_device.h>  
> > I think you only have this to define the id table?
> >
> > If so, perhaps better to include mod_devicetable.h and not include
> > the of header.  
> 
> Well, I ended up needed other, so it became:
> 
> -#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/mod_devicetable.h>
> 
> Other of these drivers seem to use "linux/of_device.h" as well?

Yeah. Lots of drivers take the lazy approach of including of_device.h
but doesn't mean we can't do better.

:)

Preference is always to include a little as possible (in terms of the
tree of headers rather than include lines in a file)

J

> 
> >  
> >> +
> >> +#define TEMP_CTRL            0
> >> +#define TEMP_CFG             4
> >> +#define  TEMP_CFG_CYCLES     GENMASK(24, 15)
> >> +#define  TEMP_CFG_CYCLES_OFF 15  
> >
> > Could you used FIELD_PREP etc to avoid having to have both
> > the mask and offset defined here?
> >  
> >> +#define  TEMP_CFG_ENA                BIT(0)
> >> +#define TEMP_STAT            8
> >> +#define  TEMP_STAT_VALID     BIT(12)
> >> +#define  TEMP_STAT_TEMP              GENMASK(11, 0)
> >> +
> >> +struct s5_hwmon {
> >> +     void __iomem *base;
> >> +};
> >> +
> >> +static void s5_temp_enable(struct s5_hwmon *hwmon)
> >> +{
> >> +     u32 val = readl(hwmon->base + TEMP_CFG);
> >> +     u32 clk = 250;
> >> +
> >> +     val &= ~TEMP_CFG_CYCLES;
> >> +     val |= (clk << TEMP_CFG_CYCLES_OFF);
> >> +     val |= TEMP_CFG_ENA;
> >> +
> >> +     writel(val, hwmon->base + TEMP_CFG);
> >> +}
> >> +
> >> +static void s5_temp_disable(void *data)
> >> +{
> >> +     struct s5_hwmon *hwmon = data;
> >> +     u32 val = readl(hwmon->base + TEMP_CFG);
> >> +
> >> +     val &= ~TEMP_CFG_ENA;
> >> +
> >> +     writel(val, hwmon->base + TEMP_CFG);
> >> +}
> >> +
> >> +static int s5_read(struct device *dev, enum hwmon_sensor_types
> >> type,
> >> +                u32 attr, int channel, long *temp)
> >> +{
> >> +     struct s5_hwmon *hwmon = dev_get_drvdata(dev);
> >> +     int rc = 0, value;
> >> +     u32 stat;
> >> +
> >> +     switch (attr) {
> >> +     case hwmon_temp_input:
> >> +             stat = readl_relaxed(hwmon->base + TEMP_STAT);
> >> +             if (!(stat & TEMP_STAT_VALID))
> >> +                     return -EIO;
> >> +             value = stat & TEMP_STAT_TEMP;
> >> +             value = DIV_ROUND_CLOSEST(value * 3522, 4096) - 1094;
> >> +             value *= 100;
> >> +             *temp = value;
> >> +             break;
> >> +     default:
> >> +             rc = -EOPNOTSUPP;
> >> +             break;
> >> +     }
> >> +
> >> +     return rc;
> >> +}
> >> +
> >> +static umode_t s5_is_visible(const void *_data, enum
> >> hwmon_sensor_types type,
> >> +                          u32 attr, int channel)
> >> +{
> >> +     if (type != hwmon_temp)
> >> +             return 0;
> >> +
> >> +     switch (attr) {
> >> +     case hwmon_temp_input:
> >> +             return 0444;
> >> +     default:
> >> +             return 0;
> >> +     }
> >> +}
> >> +
> >> +static const struct hwmon_channel_info *s5_info[] = {
> >> +     HWMON_CHANNEL_INFO(chip,
> >> +                        HWMON_C_REGISTER_TZ),
> >> +     HWMON_CHANNEL_INFO(temp,
> >> +                        HWMON_T_INPUT),  
> >
> > Excess line breaks.  The above 2 would be more readable on one line
> > each. 
> 
> Right.
> 
> >> +     NULL
> >> +};
> >> +
> >> +static const struct hwmon_ops s5_hwmon_ops = {
> >> +     .is_visible = s5_is_visible,
> >> +     .read = s5_read,
> >> +};
> >> +
> >> +static const struct hwmon_chip_info s5_chip_info = {
> >> +     .ops = &s5_hwmon_ops,
> >> +     .info = s5_info,
> >> +};
> >> +
> >> +static int s5_temp_probe(struct platform_device *pdev)
> >> +{
> >> +     struct device *hwmon_dev;
> >> +     struct s5_hwmon *hwmon;
> >> +     int err;
> >> +
> >> +     hwmon = devm_kzalloc(&pdev->dev, sizeof(*hwmon), GFP_KERNEL);
> >> +     if (!hwmon)
> >> +             return -ENOMEM;
> >> +
> >> +     hwmon->base = devm_platform_ioremap_resource(pdev, 0);
> >> +     if (IS_ERR(hwmon->base))
> >> +             return PTR_ERR(hwmon->base);
> >> +
> >> +     err = devm_add_action(&pdev->dev, s5_temp_disable, hwmon);
> >> +     if (err)
> >> +             return err;  
> >
> > Probably just my linear way of thinking, but unusual to put error
> > handling / remove stuff in place _before_ the thing it's unwinding.
> >
> > We have devm_add_action_or_reset to make it safe to call this after
> > the thing it unwinds.
> >  
> 
> Seems I got this "backwardness" from ltq-cputemp.c. However, its
> totally unneeded here, so I'll just remove it.
> 
> Thanks!
> 
> ---Lars
> 
> >> +
> >> +     s5_temp_enable(hwmon);
> >> +
> >> +     hwmon_dev = devm_hwmon_device_register_with_info(&pdev->dev,
> >> +                                                      "s5_temp",
> >> +                                                      hwmon,
> >> +
> >> &s5_chip_info,
> >> +                                                      NULL);
> >> +
> >> +     return PTR_ERR_OR_ZERO(hwmon_dev);
> >> +}
> >> +
> >> +const struct of_device_id s5_temp_match[] = {
> >> +     { .compatible = "microchip,sparx5-temp" },
> >> +     {},
> >> +};
> >> +MODULE_DEVICE_TABLE(of, s5_temp_match);
> >> +
> >> +static struct platform_driver s5_temp_driver = {
> >> +     .probe = s5_temp_probe,
> >> +     .driver = {
> >> +             .name = "sparx5-temp",
> >> +             .of_match_table = s5_temp_match,
> >> +     },
> >> +};
> >> +
> >> +module_platform_driver(s5_temp_driver);
> >> +
> >> +MODULE_AUTHOR("Lars Povlsen <lars.povlsen@microchip.com>");
> >> +MODULE_DESCRIPTION("Sparx5 SoC temperature sensor driver");
> >> +MODULE_LICENSE("GPL");
> >> --
> >> 2.27.0
> >>
> >> _______________________________________________
> >> linux-arm-kernel mailing list
> >> linux-arm-kernel@lists.infradead.org
> >> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
