Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D931D18FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:20:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nxqK5nynQvqjDGQrJiEygWzjLG87lxGGfLkse7jIOPs=; b=VdlbUA3u9D6Ifk
	wB5omy94Mw0gcSEBwPR3yaoxtnDLmxPffgOfPUYzPmCgItjcdg4jtgeMAbv3befVJHp8eDNtJuaey
	lEmCuHLPxSa0P/bYQIAYNa5yHYHp613AmzqtEKIk71ycPu0ZamF+jNwPxHPE1GYXktCEisPZeLtMf
	y8CVCVdHxcQ5zN1+T8UZVkGa4UH7+nP6f+VYbjVAxSywpRjIp5shkquC3By75tMNQVteSk1It51ws
	ItZMR8xDm1N9745ugrD8HZnDbhlCPshITDTVDtCmnAt3TBorh8R2XJdAmNyhIpoZPp7MUKtRpQeAz
	5V58l9T19ZTMCF2zuHiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtBN-0000ee-TJ; Wed, 13 May 2020 15:20:29 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtBF-0000e8-8G
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 15:20:23 +0000
Received: by mail-pj1-x1041.google.com with SMTP id fu13so11123103pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 08:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pjEkuJ2drmOmRN7WJKcPMcPyHobGjNTUPI6+JBuAEzA=;
 b=FQ1I+mmU/zXjrthbJ8YnJrSVBvnlF4dN0LE2eaR1ODUzNVkrfSjmp4G+hZmiafxvRa
 vUi8DwFSlpMumvwu6lJiMoRt3qvkSwYmcWw0op+VIvTTaWHOAlJFgNyLQ8DvUIhd3+v0
 dSuncqJ8UR38UQVk0RbM0qssGnX9gItk9RehE84eRZx9xik0QmyMyfot+ANMckIUkDZ4
 Rg1s2Y6H2HEf5i1w+5lca6BA6xChVmhkKqTWHtAawn5BU6y2T5NtoGy+uoErAsdGsDyp
 IVPJSgtKtEaxizoRsQ6SQNaPR7RRnyRKaa3x9dcyY26o5phLNAfMKS5qaua9Mc3oMX3g
 X6aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=pjEkuJ2drmOmRN7WJKcPMcPyHobGjNTUPI6+JBuAEzA=;
 b=t42vWEToWELXH+NGT2hmgme4IlNPhyE7yj58iMIBgoSHlX5FbMqW8I2KlEu1lsNmXb
 Hmkxo+BGzPVoGRVHTI8tBXzDT/N3r7gp5PEUocWV2sPJFuTVcfh9c1CJxi1BJurIU+Hz
 7sJC67ludu19H7JvRgKaSx7wRsJBNWswu3pQPGfqrAfp/O3rDB7NJskIswbeWTEp5ESR
 Vbec9h6PS9IzVzhemEJqbG1OH+27FOZlPneh94kq93KD4w+rZ0sNqQ9WkqwS3fRGdkP9
 O9xUlfCjovz5sD/bQYk+OKPtRbrIkKlrE2H0dqd6PAFOQGmMYvz5B8Fd4Ct/NUmxQbgV
 C7hA==
X-Gm-Message-State: AGi0PuaUOBh964BixlrU6zXufnakDHfDzdXXB9CT60CiuRR0DUHFfqvg
 BEbBQED+rUQdBQcIUJVf+K0=
X-Google-Smtp-Source: APiQypKC/ubCYrCv5Au2EWWZ5NOoJDo/fQMZm66U1HfuLXtwqmQhyHbHRTuB3XgiRxB/IrfYrjN/1g==
X-Received: by 2002:a17:90a:a591:: with SMTP id
 b17mr34716551pjq.90.1589383220448; 
 Wed, 13 May 2020 08:20:20 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id 189sm14728950pfd.55.2020.05.13.08.20.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 13 May 2020 08:20:19 -0700 (PDT)
Date: Wed, 13 May 2020 08:20:18 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 3/3] hwmon: sparx5: Add Sparx5 SoC temperature driver
Message-ID: <20200513152018.GA60367@roeck-us.net>
References: <20200513134140.25357-1-lars.povlsen@microchip.com>
 <20200513134140.25357-4-lars.povlsen@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513134140.25357-4-lars.povlsen@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_082021_882121_55023A79 
X-CRM114-Status: GOOD (  24.99  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 SoC Team <soc@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 03:41:40PM +0200, Lars Povlsen wrote:
> This patch adds a temperature sensor driver to the Sparx5 SoC.
> 
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
> ---
>  drivers/hwmon/Kconfig       |  10 +++
>  drivers/hwmon/Makefile      |   2 +-
>  drivers/hwmon/sparx5-temp.c | 154 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 165 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/hwmon/sparx5-temp.c
> 
> diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
> index 4c62f900bf7e8..130cb1f1748ff 100644
> --- a/drivers/hwmon/Kconfig
> +++ b/drivers/hwmon/Kconfig
> @@ -480,6 +480,16 @@ config SENSORS_I5K_AMB
>  	  This driver can also be built as a module. If so, the module
>  	  will be called i5k_amb.
> 
> +config SENSORS_SPARX5
> +	tristate "Sparx5 SoC temperature sensor"
> +	depends on ARCH_SPARX5
> +	help
> +	  If you say yes here you get support for temperature monitoring
> +	  with the Microchip Sparx5 SoC.
> +
> +	  This driver can also be built as a module. If so, the module
> +	  will be called sparx5-temp.
> +
>  config SENSORS_F71805F
>  	tristate "Fintek F71805F/FG, F71806F/FG and F71872F/FG"
>  	depends on !PPC
> diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
> index b0b9c8e571762..28a09986b7a62 100644
> --- a/drivers/hwmon/Makefile
> +++ b/drivers/hwmon/Makefile
> @@ -64,6 +64,7 @@ obj-$(CONFIG_SENSORS_DS1621)	+= ds1621.o
>  obj-$(CONFIG_SENSORS_EMC1403)	+= emc1403.o
>  obj-$(CONFIG_SENSORS_EMC2103)	+= emc2103.o
>  obj-$(CONFIG_SENSORS_EMC6W201)	+= emc6w201.o
> +obj-$(CONFIG_SENSORS_SPARX5)	+= sparx5-temp.o
>  obj-$(CONFIG_SENSORS_F71805F)	+= f71805f.o
>  obj-$(CONFIG_SENSORS_F71882FG)	+= f71882fg.o
>  obj-$(CONFIG_SENSORS_F75375S)	+= f75375s.o
> @@ -190,4 +191,3 @@ obj-$(CONFIG_SENSORS_OCC)	+= occ/
>  obj-$(CONFIG_PMBUS)		+= pmbus/
> 
>  ccflags-$(CONFIG_HWMON_DEBUG_CHIP) := -DDEBUG
> -
> diff --git a/drivers/hwmon/sparx5-temp.c b/drivers/hwmon/sparx5-temp.c
> new file mode 100644
> index 0000000000000..bf9dd102a9825
> --- /dev/null
> +++ b/drivers/hwmon/sparx5-temp.c
> @@ -0,0 +1,154 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/* Sparx5 SoC temperature sensor driver
> + *
> + * Copyright (C) 2020 Lars Povlsen <lars.povlsen@microchip.com>
> + */
> +
> +#include <linux/bitops.h>
> +#include <linux/hwmon.h>
> +#include <linux/hwmon-sysfs.h>

Unnecessary include

> +#include <linux/init.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +
> +#define TEMP_CTRL		0
> +#define TEMP_CFG		4
> +#define  TEMP_CFG_CYCLES	GENMASK(24, 15)
> +#define  TEMP_CFG_CYCLES_OFF	15
> +#define  TEMP_CFG_ENA		BIT(0)
> +#define TEMP_STAT		8
> +#define  TEMP_STAT_VALID	BIT(12)
> +#define  TEMP_STAT_TEMP		GENMASK(11, 0)
> +
> +struct s5_hwmon {
> +	void __iomem *base;
> +};
> +
> +static void s5_temp_enable(struct s5_hwmon *hwmon)
> +{
> +	u32 val = readl(hwmon->base + TEMP_CFG);
> +	u32 clk = 250;
> +
> +	val &= ~TEMP_CFG_CYCLES;
> +	val |= (clk << TEMP_CFG_CYCLES_OFF);
> +	val |= TEMP_CFG_ENA;
> +
> +	writel(val, hwmon->base + TEMP_CFG);
> +}
> +
> +static void s5_temp_disable(void *data)
> +{
> +	struct s5_hwmon *hwmon = data;
> +	u32 val = readl(hwmon->base + TEMP_CFG);
> +
> +	val &= ~TEMP_CFG_ENA;
> +
> +	writel(val, hwmon->base + TEMP_CFG);
> +}
> +
> +static int s5_read(struct device *dev, enum hwmon_sensor_types type,
> +		   u32 attr, int channel, long *temp)
> +{
> +	struct s5_hwmon *hwmon = dev_get_drvdata(dev);
> +	int rc = 0, value;
> +	u32 stat;
> +
> +	switch (attr) {
> +	case hwmon_temp_input:
> +		stat = readl_relaxed(hwmon->base + TEMP_STAT);
> +		if (stat & TEMP_STAT_VALID) {
> +			value = (stat & TEMP_STAT_TEMP);

Unnecessary ( )

> +			value = DIV_ROUND_CLOSEST(value * 3522, 4096) - 1094;
> +			value *= 100;
> +			*temp = value;
> +		} else
> +			rc = -EINVAL;

-EINVAL is for bad used input. -EIO, maybe, unless there is a better error.
Also,

		if (!(stat & TEMP_STAT_VALID))
			return -EIO;
		...

would be easier to read (and not result in a checkpatch warning).

> +		break;
> +	default:
> +		rc = -EOPNOTSUPP;

		break;

> +	}
> +
> +	return rc;
> +}
> +
> +static umode_t s5_is_visible(const void *_data, enum hwmon_sensor_types type,
> +			     u32 attr, int channel)
> +{
> +	if (type != hwmon_temp)
> +		return 0;
> +
> +	switch (attr) {
> +	case hwmon_temp_input:
> +		return 0444;
> +	default:
> +		return 0;
> +	}
> +}
> +
> +static const struct hwmon_channel_info *s5_info[] = {
> +	HWMON_CHANNEL_INFO(chip,
> +			   HWMON_C_REGISTER_TZ),
> +	HWMON_CHANNEL_INFO(temp,
> +			   HWMON_T_INPUT),
> +	NULL
> +};
> +
> +static const struct hwmon_ops s5_hwmon_ops = {
> +	.is_visible = s5_is_visible,
> +	.read = s5_read,
> +};
> +
> +static const struct hwmon_chip_info s5_chip_info = {
> +	.ops = &s5_hwmon_ops,
> +	.info = s5_info,
> +};
> +
> +static int s5_temp_probe(struct platform_device *pdev)
> +{
> +	struct device *hwmon_dev;
> +	struct s5_hwmon *hwmon;
> +	int err = 0;

Unnecessary initialization

> +
> +	hwmon = devm_kzalloc(&pdev->dev, sizeof(*hwmon), GFP_KERNEL);
> +	if (!hwmon)
> +		return -ENOMEM;
> +
> +	hwmon->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(hwmon->base))
> +		return PTR_ERR(hwmon->base);
> +
> +	err = devm_add_action(&pdev->dev, s5_temp_disable, hwmon);
> +	if (err)
> +		return err;
> +
> +	s5_temp_enable(hwmon);
> +
> +	hwmon_dev = devm_hwmon_device_register_with_info(&pdev->dev,
> +							 "s5_temp",
> +							 hwmon,
> +							 &s5_chip_info,
> +							 NULL);
> +
> +	return PTR_ERR_OR_ZERO(hwmon_dev);
> +}
> +
> +const struct of_device_id s5_temp_match[] = {
> +	{ .compatible = "microchip,sparx5-temp" },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, s5_temp_match);
> +
> +static struct platform_driver s5_temp_driver = {
> +	.probe = s5_temp_probe,
> +	.driver = {
> +		.name = "sparx5-temp",
> +		.of_match_table = s5_temp_match,
> +	},
> +};
> +
> +module_platform_driver(s5_temp_driver);
> +
> +MODULE_AUTHOR("Lars Povlsen <lars.povlsen@microchip.com>");
> +MODULE_DESCRIPTION("Sparx5 SoC temperature sensor driver");
> +MODULE_LICENSE("GPL");
> --
> 2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
