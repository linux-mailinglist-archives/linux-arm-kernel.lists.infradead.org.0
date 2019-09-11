Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A58B03F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 20:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QAzPPFCmRBep7+0Rey3uiA4mIzYS3QA1V1u9OjlWhTA=; b=TIJLDLU2uwwca0
	xEK4MN7Ct5HZfCnFPU8YPIcBScyQ2ZqkCQ11vogQ8tS0Kbf7kr7V2ntNdAhPv6lKBj5wVcipRYe8C
	Duf9VFQ7pe8bT5cXW4AM96KNOlF4iobV5jaY0go4xMMFVJL5kzNnOjv4KkmaKyMLswlJD8ko/9adM
	Uw76yuN3F+nne6sJz0RXONyO8zdTJuypMiXLacr+PnoCO6c3CkywGXpw+lLXNDbq+EL3Ebfu7S810
	YEBqQxghG6j+GagA8MliVshJaZVSlEAPJlmPbpRDtmLXcxpU8npAg1uL5G8B6eTnPR4wmZqcZLSfV
	gnbazJ3/eG7h2tiqUntA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i87gn-0005cK-Tw; Wed, 11 Sep 2019 18:50:02 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i87gQ-0005bH-HX; Wed, 11 Sep 2019 18:49:40 +0000
X-UUID: 3fe9a2b3e50c42418e7dc75cc460c1dd-20190911
X-UUID: 3fe9a2b3e50c42418e7dc75cc460c1dd-20190911
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 27193781; Wed, 11 Sep 2019 10:49:30 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 11:49:28 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 02:49:26 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Sep 2019 02:49:26 +0800
Message-ID: <1568227767.8481.4.camel@mtkswgap22>
Subject: Re: [PATCH v7 5/7] power: reset: add driver for mt6323 poweroff
From: Sean Wang <sean.wang@mediatek.com>
To: Frank Wunderlich <frank-w@public-files.de>
Date: Thu, 12 Sep 2019 02:49:27 +0800
In-Reply-To: <20190910070446.639-6-frank-w@public-files.de>
References: <20190910070446.639-1-frank-w@public-files.de>
 <20190910070446.639-6-frank-w@public-files.de>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 40F2DA63D46F5CD798C0546348146FBED6745C18E6A0AE0525103705EBD596C12000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_114938_644098_CB05BA8E 
X-CRM114-Status: GOOD (  23.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>, linux-pm@vger.kernel.org,
 Josef Friedl <josef.friedl@speed.at>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Eddie Huang <eddie.huang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Tianping Fang <tianping.fang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Frank

On Tue, 2019-09-10 at 09:04 +0200, Frank Wunderlich wrote:
> From: Josef Friedl <josef.friedl@speed.at>
> 
> add poweroff driver for mt6323 and make Makefile and Kconfig-Entries
> 
> Suggested-by: Frank Wunderlich <frank-w@public-files.de>
> Signed-off-by: Josef Friedl <josef.friedl@speed.at>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> Acked-by: Sebastian Reichel <sebastian.reichel@collabora.com>


Thanks for your help keep the unfinished driver to upstream

Acked-by: Sean Wang <sean.wang@mediatek.com>

> ---
> changes since v6: none
> changes since v5: split out mfd/mt6397/core.h
> changes since v4: none
> changes since v3: none
> changes since v2: none (=v2 part 5)
> ---
>  drivers/power/reset/Kconfig           | 10 +++
>  drivers/power/reset/Makefile          |  1 +
>  drivers/power/reset/mt6323-poweroff.c | 97 +++++++++++++++++++++++++++
>  3 files changed, 108 insertions(+)
>  create mode 100644 drivers/power/reset/mt6323-poweroff.c
> 
> diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
> index a564237278ff..c721939767eb 100644
> --- a/drivers/power/reset/Kconfig
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
> +         the power of a remote MediaTek SoC MT6323 is connected to through
> +         controlling a tiny circuit BBPU inside MT6323 RTC.
> +
> +         Say Y if you have a board where MT6323 could be found.
> +
>  config POWER_RESET_QNAP
>  	bool "QNAP power-off driver"
>  	depends on OF_GPIO && PLAT_ORION
> diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
> index 85da3198e4e0..da37f8b851dc 100644
> --- a/drivers/power/reset/Makefile
> +++ b/drivers/power/reset/Makefile
> @@ -11,6 +11,7 @@ obj-$(CONFIG_POWER_RESET_GPIO) += gpio-poweroff.o
>  obj-$(CONFIG_POWER_RESET_GPIO_RESTART) += gpio-restart.o
>  obj-$(CONFIG_POWER_RESET_HISI) += hisi-reboot.o
>  obj-$(CONFIG_POWER_RESET_MSM) += msm-poweroff.o
> +obj-$(CONFIG_POWER_RESET_MT6323) += mt6323-poweroff.o
>  obj-$(CONFIG_POWER_RESET_QCOM_PON) += qcom-pon.o
>  obj-$(CONFIG_POWER_RESET_OCELOT_RESET) += ocelot-reset.o
>  obj-$(CONFIG_POWER_RESET_PIIX4_POWEROFF) += piix4-poweroff.o
> diff --git a/drivers/power/reset/mt6323-poweroff.c b/drivers/power/reset/mt6323-poweroff.c
> new file mode 100644
> index 000000000000..1caf43d9e46d
> --- /dev/null
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
> +	struct mt6323_pwrc *pwrc = mt_pwrc;
> +	unsigned int val;
> +	int ret;
> +
> +	regmap_write(pwrc->regmap, pwrc->base + RTC_BBPU, RTC_BBPU_KEY);
> +	regmap_write(pwrc->regmap, pwrc->base + RTC_WRTGR, 1);
> +
> +	ret = regmap_read_poll_timeout(pwrc->regmap,
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
> +	struct mt6397_chip *mt6397_chip = dev_get_drvdata(pdev->dev.parent);
> +	struct mt6323_pwrc *pwrc;
> +	struct resource *res;
> +
> +	pwrc = devm_kzalloc(&pdev->dev, sizeof(*pwrc), GFP_KERNEL);
> +	if (!pwrc)
> +		return -ENOMEM;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	pwrc->base = res->start;
> +	pwrc->regmap = mt6397_chip->regmap;
> +	pwrc->dev = &pdev->dev;
> +	mt_pwrc = pwrc;
> +
> +	pm_power_off = &mt6323_do_pwroff;
> +
> +	return 0;
> +}
> +
> +static int mt6323_pwrc_remove(struct platform_device *pdev)
> +{
> +	if (pm_power_off == &mt6323_do_pwroff)
> +		pm_power_off = NULL;
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id mt6323_pwrc_dt_match[] = {
> +	{ .compatible = "mediatek,mt6323-pwrc" },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, mt6323_pwrc_dt_match);
> +
> +static struct platform_driver mt6323_pwrc_driver = {
> +	.probe          = mt6323_pwrc_probe,
> +	.remove         = mt6323_pwrc_remove,
> +	.driver         = {
> +		.name   = "mt6323-pwrc",
> +		.of_match_table = mt6323_pwrc_dt_match,
> +	},
> +};
> +
> +module_platform_driver(mt6323_pwrc_driver);
> +
> +MODULE_DESCRIPTION("Poweroff driver for MT6323 PMIC");
> +MODULE_AUTHOR("Sean Wang <sean.wang@mediatek.com>");
> +MODULE_LICENSE("GPL v2");



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
