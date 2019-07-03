Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 316495DEDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 09:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YpBCE996whtot5k2aR54yUmgkjRw41rEDCv0dSah+n4=; b=Oq4esaZmAodTyp
	e4CqOje2L9ExGOCBAeOQDkPnMfgOLYHxBTbc6I/70nlS1K/W7WrncBjzTS8pgnfnFkM0LjQeF5m+2
	5MDDC9UQKctwmOEWJAYVm9E10qJ+VbnpdlNI7dYc8TMg740TfcO2uqdBNzTy0ENqGK7a6lJXQ7Tl6
	YYlN2hGR8S6m4gms57ROikAsftOdgerjKE/oAFk5IRoWVkPrWuh6yL13T8vz3pUExjqA/QvC0hPxN
	EykFamhEHssE43XwWq5vFy1YhAFCuDT1UcAA4rvlkV075b3QnbngR2iGQuzUjCDUsjDmJXYQanC9U
	DyyKVl8We18FmBfVHMdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiZfg-0004Lm-CI; Wed, 03 Jul 2019 07:27:16 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiZfQ-0004KL-I1; Wed, 03 Jul 2019 07:27:02 +0000
Received: by mail-ed1-x544.google.com with SMTP id s49so1044564edb.1;
 Wed, 03 Jul 2019 00:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0bQaN36ghfHgDl8TaXCSZAtkr0ialFTJ0wIck6IyspM=;
 b=cajehqjnpbmVL0+96u2kNpoSNnIeLi0r1ckjuTfacWowo6V3JyyxsI4aFaSRXQSFY9
 aD8KtH84RqGXTrDli65eMJ2YN/1bvc5PiGA/DnrRziLp4QyJ9k160TBxOorTzkYMtoxT
 e9xDHe0MtoBGkj8Z+zIoakRCaul9R0qTrWcQQ5beIzoJM8C0sjXY3uVas8USpcjx0W/F
 yD/1fNt4kR3w6czctQK1Jj/zHbawmCvsbt3ikHGv+ewQIHXpRR0DtMTYNy2A4j0s0NK0
 NbuaqBsfTnft/nMsqw4eJ6OVjY7Gx/wJtOiNhr5LGoma2wZZ5SsSkyOULZc3mU5aW4Eg
 gJ6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=0bQaN36ghfHgDl8TaXCSZAtkr0ialFTJ0wIck6IyspM=;
 b=ot4gac345FXz/RJ0/4D9tLjdcUZ12cKMWAmlmoHQSR5zUt9M2Jlv1/4Gcy7c4Z1YG8
 wba0B7sN2xye+ZA/Ahrq4Zp8Bcwo58Og6ALSXFckWfTNRIyI/OQ+8yJ0PL+SilNePoTh
 KMsVet8bis5/BQawoyAEfXdmTGxWpqGXh1o3vvMSlNEqJ0NO/NDu3yFpjo/h2A4sf4UI
 2varccpYDftl/Gmpw66FQ2mtEu+4B1jcdYp17q8Uq46tkES0U5EQLbVDPhOQZ9yp77OZ
 19BDuQIuHOSUMusQO2TK8xG2KzCnLSE1Wb0kr3pCc/NUE4WHTjv9J/G2Qcr8bPhUqRem
 5qTg==
X-Gm-Message-State: APjAAAWayAlcdrhN0mwRaUCRAEOoEUFfoHQT3X02ZG/u5ZueHYEVeskc
 MmXvxOPrqu3UebF3vh57mgw=
X-Google-Smtp-Source: APXvYqwZ/Jr8JQoAHL08kJ089jBOKnu0bsLHzPH2BmmqmrjpqyY0ebfQWaKNG3yQI+b816KxtHE71Q==
X-Received: by 2002:a17:906:a417:: with SMTP id
 l23mr33213552ejz.20.1562138818559; 
 Wed, 03 Jul 2019 00:26:58 -0700 (PDT)
Received: from ziggy.stardust ([37.223.141.54])
 by smtp.gmail.com with ESMTPSA id a15sm290694ejr.4.2019.07.03.00.26.57
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 00:26:57 -0700 (PDT)
Subject: Re: [PATCH 3/3] add driver and MAINTAINERS for poweroff
To: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20190702094045.3652-1-frank-w@public-files.de>
 <20190702094045.3652-4-frank-w@public-files.de>
From: Matthias Brugger <matthias.bgg@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 jrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <c1358da0-60a4-49dd-71a8-77e90178c9c9@gmail.com>
Date: Wed, 3 Jul 2019 09:26:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190702094045.3652-4-frank-w@public-files.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_002700_632767_881AC71D 
X-CRM114-Status: GOOD (  23.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Josef Friedl <josef.friedl@speed.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 02/07/2019 11:40, Frank Wunderlich wrote:
> From: Josef Friedl <josef.friedl@speed.at>
> 
> poweroff for BPI-R2
> Suggested-by: Frank Wunderlich <frank-w@public-files.de>
> 
> Signed-off-by: Josef Friedl <josef.friedl@speed.at>

Fix the commit message. MAINTAINERS get normally send a independent patch.
Split patches between RTC and PWRC.

> =2D--
>  MAINTAINERS                           |   1 +
>  drivers/mfd/mt6397-core.c             |  40 +++++++---
>  drivers/power/reset/Kconfig           |  10 +++
>  drivers/power/reset/Makefile          |   1 +
>  drivers/power/reset/mt6323-poweroff.c |  97 +++++++++++++++++++++++
>  drivers/rtc/rtc-mt6397.c              | 110 ++++++--------------------
>  include/linux/mfd/mt6397/core.h       |   2 +
>  include/linux/mfd/mt6397/rtc.h        |  71 +++++++++++++++++
>  8 files changed, 234 insertions(+), 98 deletions(-)
>  create mode 100644 drivers/power/reset/mt6323-poweroff.c
>  create mode 100644 include/linux/mfd/mt6397/rtc.h
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index ec6ff342aa3c..31c1e882b7d2 100644
> =2D-- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -9925,6 +9925,7 @@ M:	Sean Wang <sean.wang@mediatek.com>
>  L:	linux-pm@vger.kernel.org
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
> +F:	drivers/power/reset/mt6323-poweroff.c
> 
>  MEDIATEK JPEG DRIVER
>  M:	Rick Chang <rick.chang@mediatek.com>
> diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
> index 337bcccdb914..a4abce00f156 100644
> =2D-- a/drivers/mfd/mt6397-core.c
> +++ b/drivers/mfd/mt6397-core.c
> @@ -1,10 +1,11 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  /*
> - * Copyright (c) 2014 MediaTek Inc.
> + * Copyright (c) 2014-2018 MediaTek Inc.
>   * Author: Flora Fu, MediaTek
>   */
> 
>  #include <linux/interrupt.h>
> +#include <linux/ioport.h>
>  #include <linux/module.h>
>  #include <linux/of_device.h>
>  #include <linux/of_irq.h>
> @@ -15,24 +16,27 @@
>  #include <linux/mfd/mt6397/registers.h>
>  #include <linux/mfd/mt6323/registers.h>
> 
> +#define MT6323_RTC_BASE		0x8000
> +#define MT6323_RTC_SIZE		0x40
> +
>  #define MT6397_RTC_BASE		0xe000
>  #define MT6397_RTC_SIZE		0x3e
> 
> +#define MT6323_PWRC_BASE	0x8000
> +#define MT6323_PWRC_SIZE	0x40
> +
>  #define MT6323_CID_CODE		0x23
>  #define MT6391_CID_CODE		0x91
>  #define MT6397_CID_CODE		0x97
> 
> +static const struct resource mt6323_rtc_resources[] =3D {
> +	DEFINE_RES_MEM(MT6323_RTC_BASE, MT6323_RTC_SIZE),
> +	DEFINE_RES_IRQ(MT6323_IRQ_STATUS_RTC),
> +};
> +
>  static const struct resource mt6397_rtc_resources[] =3D {
> -	{
> -		.start =3D MT6397_RTC_BASE,
> -		.end   =3D MT6397_RTC_BASE + MT6397_RTC_SIZE,
> -		.flags =3D IORESOURCE_MEM,
> -	},
> -	{
> -		.start =3D MT6397_IRQ_RTC,
> -		.end   =3D MT6397_IRQ_RTC,
> -		.flags =3D IORESOURCE_IRQ,
> -	},
> +	DEFINE_RES_MEM(MT6397_RTC_BASE, MT6397_RTC_SIZE),
> +	DEFINE_RES_IRQ(MT6397_IRQ_RTC),

If not a new patch it should be stated in the commit message at least.

>  };
> 
>  static const struct resource mt6323_keys_resources[] =3D {
> @@ -45,8 +49,17 @@ static const struct resource mt6397_keys_resources[] =
> =3D {
>  	DEFINE_RES_IRQ(MT6397_IRQ_HOMEKEY),
>  };
> 
> +static const struct resource mt6323_pwrc_resources[] =3D {
> +	DEFINE_RES_MEM(MT6323_PWRC_BASE, MT6323_PWRC_SIZE),
> +};
> +
>  static const struct mfd_cell mt6323_devs[] =3D {
>  	{
> +		.name =3D "mt6323-rtc",
> +		.num_resources =3D ARRAY_SIZE(mt6323_rtc_resources),
> +		.resources =3D mt6323_rtc_resources,
> +		.of_compatible =3D "mediatek,mt6323-rtc",
> +	}, {
>  		.name =3D "mt6323-regulator",
>  		.of_compatible =3D "mediatek,mt6323-regulator"
>  	}, {
> @@ -57,6 +70,11 @@ static const struct mfd_cell mt6323_devs[] =3D {
>  		.num_resources =3D ARRAY_SIZE(mt6323_keys_resources),
>  		.resources =3D mt6323_keys_resources,
>  		.of_compatible =3D "mediatek,mt6323-keys"
> +	}, {
> +		.name =3D "mt6323-pwrc",
> +		.num_resources =3D ARRAY_SIZE(mt6323_pwrc_resources),
> +		.resources =3D mt6323_pwrc_resources,
> +		.of_compatible =3D "mediatek,mt6323-pwrc"
>  	},
>  };
> 
> diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
> index 980951dff834..492678e22088 100644
> =2D-- a/drivers/power/reset/Kconfig
> +++ b/drivers/power/reset/Kconfig
> @@ -140,6 +140,16 @@ config POWER_RESET_LTC2952
>  	  This driver supports an external powerdown trigger and board power
>  	  down via the LTC2952. Bindings are made in the device tree.
> 
> +config POWER_RESET_MT6323
> +       bool "MediaTek MT6323 power-off driver"
> +       depends on MFD_MT6397
> +       help
> +         The power-off driver is responsible for externally shutdown down
> +         the power of a remote MediaTek SoC MT6323 is connected to throug=
> h
> +         controlling a tiny circuit BBPU inside MT6323 RTC.
> +
> +         Say Y if you have a board where MT6323 could be found.
> +
>  config POWER_RESET_QNAP
>  	bool "QNAP power-off driver"
>  	depends on OF_GPIO && PLAT_ORION
> diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
> index 0aebee954ac1..94eaceb01d66 100644
> =2D-- a/drivers/power/reset/Makefile
> +++ b/drivers/power/reset/Makefile
> @@ -11,6 +11,7 @@ obj-$(CONFIG_POWER_RESET_GPIO) +=3D gpio-poweroff.o
>  obj-$(CONFIG_POWER_RESET_GPIO_RESTART) +=3D gpio-restart.o
>  obj-$(CONFIG_POWER_RESET_HISI) +=3D hisi-reboot.o
>  obj-$(CONFIG_POWER_RESET_MSM) +=3D msm-poweroff.o
> +obj-$(CONFIG_POWER_RESET_MT6323) +=3D mt6323-poweroff.o
>  obj-$(CONFIG_POWER_RESET_QCOM_PON) +=3D qcom-pon.o
>  obj-$(CONFIG_POWER_RESET_OCELOT_RESET) +=3D ocelot-reset.o
>  obj-$(CONFIG_POWER_RESET_PIIX4_POWEROFF) +=3D piix4-poweroff.o
> diff --git a/drivers/power/reset/mt6323-poweroff.c b/drivers/power/reset/m=
> t6323-poweroff.c
> new file mode 100644
> index 000000000000..1caf43d9e46d
> =2D-- /dev/null
> +++ b/drivers/power/reset/mt6323-poweroff.c
> @@ -0,0 +1,97 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Power off through MediaTek PMIC
> + *
> + * Copyright (C) 2018 MediaTek Inc.
> + *
> + * Author: Sean Wang <sean.wang@mediatek.com>
> + *
> + */
> +
> +#include <linux/err.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/mfd/mt6397/core.h>
> +#include <linux/mfd/mt6397/rtc.h>
> +
> +struct mt6323_pwrc {
> +	struct device *dev;
> +	struct regmap *regmap;
> +	u32 base;
> +};
> +
> +static struct mt6323_pwrc *mt_pwrc;
> +
> +static void mt6323_do_pwroff(void)
> +{
> +	struct mt6323_pwrc *pwrc =3D mt_pwrc;
> +	unsigned int val;
> +	int ret;
> +
> +	regmap_write(pwrc->regmap, pwrc->base + RTC_BBPU, RTC_BBPU_KEY);
> +	regmap_write(pwrc->regmap, pwrc->base + RTC_WRTGR, 1);
> +
> +	ret =3D regmap_read_poll_timeout(pwrc->regmap,
> +					pwrc->base + RTC_BBPU, val,
> +					!(val & RTC_BBPU_CBUSY),
> +					MTK_RTC_POLL_DELAY_US,
> +					MTK_RTC_POLL_TIMEOUT);
> +	if (ret)
> +		dev_err(pwrc->dev, "failed to write BBPU: %d\n", ret);
> +
> +	/* Wait some time until system down, otherwise, notice with a warn */
> +	mdelay(1000);
> +
> +	WARN_ONCE(1, "Unable to power off system\n");
> +}
> +
> +static int mt6323_pwrc_probe(struct platform_device *pdev)
> +{
> +	struct mt6397_chip *mt6397_chip =3D dev_get_drvdata(pdev->dev.parent);
> +	struct mt6323_pwrc *pwrc;
> +	struct resource *res;
> +
> +	pwrc =3D devm_kzalloc(&pdev->dev, sizeof(*pwrc), GFP_KERNEL);
> +	if (!pwrc)
> +		return -ENOMEM;
> +
> +	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	pwrc->base =3D res->start;
> +	pwrc->regmap =3D mt6397_chip->regmap;
> +	pwrc->dev =3D &pdev->dev;
> +	mt_pwrc =3D pwrc;
> +
> +	pm_power_off =3D &mt6323_do_pwroff;
> +
> +	return 0;
> +}
> +
> +static int mt6323_pwrc_remove(struct platform_device *pdev)
> +{
> +	if (pm_power_off =3D=3D &mt6323_do_pwroff)
> +		pm_power_off =3D NULL;
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id mt6323_pwrc_dt_match[] =3D {
> +	{ .compatible =3D "mediatek,mt6323-pwrc" },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, mt6323_pwrc_dt_match);
> +
> +static struct platform_driver mt6323_pwrc_driver =3D {
> +	.probe          =3D mt6323_pwrc_probe,
> +	.remove         =3D mt6323_pwrc_remove,
> +	.driver         =3D {
> +		.name   =3D "mt6323-pwrc",
> +		.of_match_table =3D mt6323_pwrc_dt_match,
> +	},
> +};
> +
> +module_platform_driver(mt6323_pwrc_driver);
> +
> +MODULE_DESCRIPTION("Poweroff driver for MT6323 PMIC");
> +MODULE_AUTHOR("Sean Wang <sean.wang@mediatek.com>");
> +MODULE_LICENSE("GPL v2");
> diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> index b46ed4dc7015..e5ddf0d0b6f1 100644
> =2D-- a/drivers/rtc/rtc-mt6397.c
> +++ b/drivers/rtc/rtc-mt6397.c
> @@ -4,69 +4,19 @@
>  * Author: Tianping.Fang <tianping.fang@mediatek.com>
>  */
> 
> -#include <linux/delay.h>
> -#include <linux/init.h>
> +#include <linux/err.h>
> +#include <linux/interrupt.h>
> +#include <linux/mfd/mt6397/core.h>
>  #include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/platform_device.h>
>  #include <linux/regmap.h>
>  #include <linux/rtc.h>
> -#include <linux/irqdomain.h>
> -#include <linux/platform_device.h>
> -#include <linux/of_address.h>
> -#include <linux/of_irq.h>
> -#include <linux/io.h>
> -#include <linux/mfd/mt6397/core.h>
> -
> -#define RTC_BBPU		0x0000
> -#define RTC_BBPU_CBUSY		BIT(6)
> -
> -#define RTC_WRTGR		0x003c
> -
> -#define RTC_IRQ_STA		0x0002
> -#define RTC_IRQ_STA_AL		BIT(0)
> -#define RTC_IRQ_STA_LP		BIT(3)
> -
> -#define RTC_IRQ_EN		0x0004
> -#define RTC_IRQ_EN_AL		BIT(0)
> -#define RTC_IRQ_EN_ONESHOT	BIT(2)
> -#define RTC_IRQ_EN_LP		BIT(3)
> -#define RTC_IRQ_EN_ONESHOT_AL	(RTC_IRQ_EN_ONESHOT | RTC_IRQ_EN_AL)
> -
> -#define RTC_AL_MASK		0x0008
> -#define RTC_AL_MASK_DOW		BIT(4)
> -
> -#define RTC_TC_SEC		0x000a
> -/* Min, Hour, Dom... register offset to RTC_TC_SEC */
> -#define RTC_OFFSET_SEC		0
> -#define RTC_OFFSET_MIN		1
> -#define RTC_OFFSET_HOUR		2
> -#define RTC_OFFSET_DOM		3
> -#define RTC_OFFSET_DOW		4
> -#define RTC_OFFSET_MTH		5
> -#define RTC_OFFSET_YEAR		6
> -#define RTC_OFFSET_COUNT	7
> -
> -#define RTC_AL_SEC		0x0018
> -
> -#define RTC_PDN2		0x002e
> -#define RTC_PDN2_PWRON_ALARM	BIT(4)
> -
> -#define RTC_MIN_YEAR		1968
> -#define RTC_BASE_YEAR		1900
> -#define RTC_NUM_YEARS		128
> -#define RTC_MIN_YEAR_OFFSET	(RTC_MIN_YEAR - RTC_BASE_YEAR)
> -
> -struct mt6397_rtc {
> -	struct device		*dev;
> -	struct rtc_device	*rtc_dev;
> -	struct mutex		lock;
> -	struct regmap		*regmap;
> -	int			irq;
> -	u32			addr_base;
> -};
> +#include <linux/mfd/mt6397/rtc.h>
> +#include <linux/mod_devicetable.h>
> 
>  static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
>  {
> -	unsigned long timeout =3D jiffies + HZ;
>  	int ret;
>  	u32 data;
> 
> @@ -74,19 +24,13 @@ static int mtk_rtc_write_trigger(struct mt6397_rtc *rt=
> c)
>  	if (ret < 0)
>  		return ret;
> 
> -	while (1) {
> -		ret =3D regmap_read(rtc->regmap, rtc->addr_base + RTC_BBPU,
> -				  &data);
> -		if (ret < 0)
> -			break;
> -		if (!(data & RTC_BBPU_CBUSY))
> -			break;
> -		if (time_after(jiffies, timeout)) {
> -			ret =3D -ETIMEDOUT;
> -			break;
> -		}
> -		cpu_relax();
> -	}
> +	ret =3D regmap_read_poll_timeout(rtc->regmap,
> +					rtc->addr_base + RTC_BBPU, data,
> +					!(data & RTC_BBPU_CBUSY),
> +					MTK_RTC_POLL_DELAY_US,
> +					MTK_RTC_POLL_TIMEOUT);
> +	if (ret < 0)
> +		dev_err(rtc->dev, "failed to write WRTGE: %d\n", ret);

write? this is a read of RTC_BBPU not WRTGE.

> 
>  	return ret;
>  }
> @@ -324,14 +268,11 @@ static int mtk_rtc_probe(struct platform_device *pde=
> v)
> 
>  	platform_set_drvdata(pdev, rtc);
> 
> -	rtc->rtc_dev =3D devm_rtc_allocate_device(rtc->dev);
> -	if (IS_ERR(rtc->rtc_dev))
> -		return PTR_ERR(rtc->rtc_dev);
> +	ret =3D devm_request_threaded_irq(&pdev->dev, rtc->irq, NULL,
> +					mtk_rtc_irq_handler_thread,
> +					IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
> +					"mt6397-rtc", rtc);
> 
> -	ret =3D request_threaded_irq(rtc->irq, NULL,
> -				   mtk_rtc_irq_handler_thread,
> -				   IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
> -				   "mt6397-rtc", rtc);
>  	if (ret) {
>  		dev_err(&pdev->dev, "Failed to request alarm IRQ: %d: %d\n",
>  			rtc->irq, ret);
> @@ -340,6 +281,10 @@ static int mtk_rtc_probe(struct platform_device *pdev=
> )
> 
>  	device_init_wakeup(&pdev->dev, 1);
> 
> +	rtc->rtc_dev =3D devm_rtc_allocate_device(&pdev->dev);
> +	if (IS_ERR(rtc->rtc_dev))
> +		return PTR_ERR(rtc->rtc_dev);
> +
>  	rtc->rtc_dev->ops =3D &mtk_rtc_ops;
> 
>  	ret =3D rtc_register_device(rtc->rtc_dev);
> @@ -355,15 +300,6 @@ static int mtk_rtc_probe(struct platform_device *pdev=
> )
>  	return ret;
>  }
> 
> -static int mtk_rtc_remove(struct platform_device *pdev)
> -{
> -	struct mt6397_rtc *rtc =3D platform_get_drvdata(pdev);
> -
> -	free_irq(rtc->irq, rtc);
> -
> -	return 0;
> -}
> -

I think the use of devm irq allocation should go into an independent patch.

>  #ifdef CONFIG_PM_SLEEP
>  static int mt6397_rtc_suspend(struct device *dev)
>  {
> @@ -390,6 +326,7 @@ static SIMPLE_DEV_PM_OPS(mt6397_pm_ops, mt6397_rtc_sus=
> pend,
>  			mt6397_rtc_resume);
> 
>  static const struct of_device_id mt6397_rtc_of_match[] =3D {
> +	{ .compatible =3D "mediatek,mt6323-rtc", },
>  	{ .compatible =3D "mediatek,mt6397-rtc", },
>  	{ }
>  };
> @@ -402,7 +339,6 @@ static struct platform_driver mtk_rtc_driver =3D {
>  		.pm =3D &mt6397_pm_ops,
>  	},
>  	.probe	=3D mtk_rtc_probe,
> -	.remove =3D mtk_rtc_remove,
>  };
> 
>  module_platform_driver(mtk_rtc_driver);
> diff --git a/include/linux/mfd/mt6397/core.h b/include/linux/mfd/mt6397/co=
> re.h
> index 25a95e72179b..652da61e3711 100644
> =2D-- a/include/linux/mfd/mt6397/core.h
> +++ b/include/linux/mfd/mt6397/core.h
> @@ -7,6 +7,8 @@
>  #ifndef __MFD_MT6397_CORE_H__
>  #define __MFD_MT6397_CORE_H__
> 
> +#include <linux/mutex.h>
> +
>  enum mt6397_irq_numbers {
>  	MT6397_IRQ_SPKL_AB =3D 0,
>  	MT6397_IRQ_SPKR_AB,
> diff --git a/include/linux/mfd/mt6397/rtc.h b/include/linux/mfd/mt6397/rtc=
> .h
> new file mode 100644
> index 000000000000..b702c29e8c74
> =2D-- /dev/null
> +++ b/include/linux/mfd/mt6397/rtc.h
> @@ -0,0 +1,71 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2014-2018 MediaTek Inc.
> + *
> + * Author: Tianping.Fang <tianping.fang@mediatek.com>
> + *        Sean Wang <sean.wang@mediatek.com>

You are the author of this file, aren't you?
Regards,
Matthias

> + */
> +
> +#ifndef _LINUX_MFD_MT6397_RTC_H_
> +#define _LINUX_MFD_MT6397_RTC_H_
> +
> +#include <linux/jiffies.h>
> +#include <linux/mutex.h>
> +#include <linux/regmap.h>
> +#include <linux/rtc.h>
> +
> +#define RTC_BBPU               0x0000
> +#define RTC_BBPU_CBUSY         BIT(6)
> +#define RTC_BBPU_KEY            (0x43 << 8)
> +
> +#define RTC_WRTGR              0x003c
> +
> +#define RTC_IRQ_STA            0x0002
> +#define RTC_IRQ_STA_AL         BIT(0)
> +#define RTC_IRQ_STA_LP         BIT(3)
> +
> +#define RTC_IRQ_EN             0x0004
> +#define RTC_IRQ_EN_AL          BIT(0)
> +#define RTC_IRQ_EN_ONESHOT     BIT(2)
> +#define RTC_IRQ_EN_LP          BIT(3)
> +#define RTC_IRQ_EN_ONESHOT_AL  (RTC_IRQ_EN_ONESHOT | RTC_IRQ_EN_AL)
> +
> +#define RTC_AL_MASK            0x0008
> +#define RTC_AL_MASK_DOW                BIT(4)
> +
> +#define RTC_TC_SEC             0x000a
> +/* Min, Hour, Dom... register offset to RTC_TC_SEC */
> +#define RTC_OFFSET_SEC         0
> +#define RTC_OFFSET_MIN         1
> +#define RTC_OFFSET_HOUR                2
> +#define RTC_OFFSET_DOM         3
> +#define RTC_OFFSET_DOW         4
> +#define RTC_OFFSET_MTH         5
> +#define RTC_OFFSET_YEAR                6
> +#define RTC_OFFSET_COUNT       7
> +
> +#define RTC_AL_SEC             0x0018
> +
> +#define RTC_PDN2               0x002e
> +#define RTC_PDN2_PWRON_ALARM   BIT(4)
> +
> +#define RTC_MIN_YEAR           1968
> +#define RTC_BASE_YEAR          1900
> +#define RTC_NUM_YEARS          128
> +#define RTC_MIN_YEAR_OFFSET    (RTC_MIN_YEAR - RTC_BASE_YEAR)
> +
> +#define MTK_RTC_POLL_DELAY_US  10
> +#define MTK_RTC_POLL_TIMEOUT   (jiffies_to_usecs(HZ))
> +
> +struct mt6397_rtc {
> +	struct device           *dev;
> +	struct rtc_device       *rtc_dev;
> +
> +	/* Protect register access from multiple tasks */
> +	struct mutex            lock;
> +	struct regmap           *regmap;
> +	int                     irq;
> +	u32                     addr_base;
> +};
> +
> +#endif /* _LINUX_MFD_MT6397_RTC_H_ */
> =2D-
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
