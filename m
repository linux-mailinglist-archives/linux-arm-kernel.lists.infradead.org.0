Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A705193D49
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 11:51:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToxhZG+0U6vxKIYMWAeRxHDr2/b3If1UZT/K5p4pO7w=; b=q5SZ6cirVTM7c/
	d6b7jfYOxEW/5+KYR5kP/tN0CWv31R4h0k/s5nW5G72BJeKtYOrSDBRsUgDlZ5aV2pb9lEh/7dO9V
	2qpddjidhXOGk7x/GCd7HeVW787Dj4+yJeqeKqjjyRIUEme13VEBe134NDyCDqrQQGfhsMExY6GZZ
	Jkf9FZupd9lw9TEzyuVnqxk26yQtkAF/R2/acLFhXL60N0L2d05Vy6gd9BoKg5ihbO2Dhfb2uS5Xg
	5xYMpfRD6+ZQh9+icL/OgwEvyiCEF0m8cZonj5EFkUT8KCd68kWLr93ckPN/3wtqFPheeT05G13qN
	aGaUkR5In9Gqyf2z9RFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHQ6R-00011n-J2; Thu, 26 Mar 2020 10:51:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHQ6I-00011A-HV
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 10:51:04 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jHQ64-0000b3-DM; Thu, 26 Mar 2020 11:50:48 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jHQ63-0000Oo-BR; Thu, 26 Mar 2020 11:50:47 +0100
Message-ID: <3e31d193605897bdfad3a3e7cde66bd03a3a8acd.camel@pengutronix.de>
Subject: Re: [PATCH v2 12/13] reset: imx: Add audiomix reset controller support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Abel Vesa <abel.vesa@nxp.com>, Rob Herring <robh@kernel.org>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam
 <fabio.estevam@nxp.com>, Mike Turquette <mturquette@baylibre.com>, Stephen
 Boyd <sboyd@kernel.org>, Lee Jones <lee.jones@linaro.org>, Anson Huang
 <anson.huang@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>
Date: Thu, 26 Mar 2020 11:50:47 +0100
In-Reply-To: <1585150731-3354-13-git-send-email-abel.vesa@nxp.com>
References: <1585150731-3354-1-git-send-email-abel.vesa@nxp.com>
 <1585150731-3354-13-git-send-email-abel.vesa@nxp.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_035102_742285_6452F2E1 
X-CRM114-Status: GOOD (  23.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Abel,

On Wed, 2020-03-25 at 17:38 +0200, Abel Vesa wrote:
> The imx-mix MFD driver registers some devices, one of which, in case of
> audiomix, maps correctly to a reset controller type. This driver registers
> a reset controller for that. For now, only the EARC specific resets are added.

I am still confused about what the runtime PM actually does. Maybe it
would help me understand if you could point me to the EARC driver that
is using this reset controller.

> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>  drivers/reset/Kconfig              |   7 +++
>  drivers/reset/Makefile             |   1 +
>  drivers/reset/reset-imx-audiomix.c | 122 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 130 insertions(+)
>  create mode 100644 drivers/reset/reset-imx-audiomix.c
> 
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index d9efbfd..2f8d9b3 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -81,6 +81,13 @@ config RESET_INTEL_GW
>  	  Say Y to control the reset signals provided by reset controller.
>  	  Otherwise, say N.
>  
> +config RESET_IMX_AUDIOMIX
> +	bool "i.MX Audiomix Reset Driver" if COMPILE_TEST
> +	depends on HAS_IOMEM
> +	default ARCH_MXC
> +	help
> +	  This enables the audiomix reset controller driver for i.MX SoCs.
> +
>  config RESET_LANTIQ
>  	bool "Lantiq XWAY Reset Driver" if COMPILE_TEST
>  	default SOC_TYPE_XWAY
> diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
> index 249ed35..cf23d38 100644
> --- a/drivers/reset/Makefile
> +++ b/drivers/reset/Makefile
> @@ -12,6 +12,7 @@ obj-$(CONFIG_RESET_BRCMSTB_RESCAL) += reset-brcmstb-rescal.o
>  obj-$(CONFIG_RESET_HSDK) += reset-hsdk.o
>  obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
>  obj-$(CONFIG_RESET_INTEL_GW) += reset-intel-gw.o
> +obj-$(CONFIG_RESET_IMX_AUDIOMIX) += reset-imx-audiomix.o

The cover letter mentions hdmimix, dispmix and mediamix. Are there going
to be a bunch of those mix reset drivers? How do they differ?

>  obj-$(CONFIG_RESET_LANTIQ) += reset-lantiq.o
>  obj-$(CONFIG_RESET_LPC18XX) += reset-lpc18xx.o
>  obj-$(CONFIG_RESET_MESON) += reset-meson.o
> diff --git a/drivers/reset/reset-imx-audiomix.c b/drivers/reset/reset-imx-audiomix.c
> new file mode 100644
> index 00000000..d1c62ef
> --- /dev/null
> +++ b/drivers/reset/reset-imx-audiomix.c
> @@ -0,0 +1,122 @@
> +// SPDX-License-Identifier: GPL-2.0

I think GPL-2.0 has been deprecated in the SPDX license list, better use
GPL-2.0-only for new files.

> +/*
> + * Copyright 2019 NXP.
> + */
> +
> +#include <dt-bindings/reset/imx-audiomix-reset.h>
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/reset-controller.h>
> +
> +#define IMX_AUDIOMIX_EARC_CTRL_REG	0x200
> +
> +#define IMX_AUDIOMIX_EARC_RESET_BIT	0x0
> +#define IMX_AUDIOMIX_EARC_PHY_RESET_BIT	0x1
> +
> +struct imx_audiomix_reset_data {
> +	void __iomem *base;
> +	struct reset_controller_dev rcdev;
> +	spinlock_t lock;
> +};
> +
> +static int imx_audiomix_reset_set(struct reset_controller_dev *rcdev,
> +			  unsigned long id, bool assert)
> +{
> +	struct imx_audiomix_reset_data *drvdata = container_of(rcdev,
> +			struct imx_audiomix_reset_data, rcdev);
> +	void __iomem *reg_addr = drvdata->base;
> +	unsigned long flags;
> +	unsigned int offset;
> +	u32 reg;
> +
> +	switch (id) {
> +	case IMX_AUDIOMIX_EARC_PHY_RESET:
> +		reg_addr += IMX_AUDIOMIX_EARC_CTRL_REG;
> +		offset = IMX_AUDIOMIX_EARC_PHY_RESET_BIT;
> +		break;
> +	case IMX_AUDIOMIX_EARC_RESET:
> +		reg_addr += IMX_AUDIOMIX_EARC_CTRL_REG;
> +		offset = IMX_AUDIOMIX_EARC_RESET_BIT;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	if (assert) {
> +		pm_runtime_get_sync(rcdev->dev);

This driver and the parent MFD driver do not implement runtime PM ops,
and the device tree bindings do not specify any power domains. What does
this actually do?

> +		spin_lock_irqsave(&drvdata->lock, flags);
> +		reg = readl(reg_addr);
> +		writel(reg & ~BIT(offset), reg_addr);
> +		spin_unlock_irqrestore(&drvdata->lock, flags);
> +	} else {
> +		spin_lock_irqsave(&drvdata->lock, flags);
> +		reg = readl(reg_addr);
> +		writel(reg | BIT(offset), reg_addr);
> +		spin_unlock_irqrestore(&drvdata->lock, flags);
> +		pm_runtime_put(rcdev->dev);

Assuming this disables the power domain that powers the whole Audiomix,
what happens to the reset lines in this case? Do they float? Are they
guaranteed to stay deasserted?

Note that the reset API does not require consumers to call
reset_control_assert() on an exclusive reset control before calling
reset_control_deassert(), so this could easily lead to issues with the
device usage counter.

Shared reset controls call deassert first, and assert after the last
user is gone, so if the driver would start with deasserting both EARC
and EARC_PHY reset lines via shared reset controls, this would underflow
the device usage counter right away.

> +	}
> +
> +	return 0;
> +}
> +
> +static int imx_audiomix_reset_assert(struct reset_controller_dev *rcdev,
> +			     unsigned long id)
> +{
> +	return imx_audiomix_reset_set(rcdev, id, true);
> +}
> +
> +static int imx_audiomix_reset_deassert(struct reset_controller_dev *rcdev,
> +			       unsigned long id)
> +{
> +	return imx_audiomix_reset_set(rcdev, id, false);
> +}
> +
> +static const struct reset_control_ops imx_audiomix_reset_ops = {
> +	.assert		= imx_audiomix_reset_assert,
> +	.deassert	= imx_audiomix_reset_deassert,
> +};
> +
> +static int imx_audiomix_reset_probe(struct platform_device *pdev)
> +{
> +	struct imx_audiomix_reset_data *drvdata;
> +	struct device *dev = &pdev->dev;
> +
> +	drvdata = devm_kzalloc(&pdev->dev, sizeof(*drvdata), GFP_KERNEL);
> +	if (drvdata == NULL)
> +		return -ENOMEM;
> +
> +	drvdata->base = dev_get_drvdata(dev->parent);
> +
> +	platform_set_drvdata(pdev, drvdata);
> +
> +	pm_runtime_enable(dev);
> +
> +	spin_lock_init(&drvdata->lock);
> +
> +	drvdata->rcdev.owner     = THIS_MODULE;
> +	drvdata->rcdev.nr_resets = IMX_AUDIOMIX_RESET_NUM;
> +	drvdata->rcdev.ops       = &imx_audiomix_reset_ops;
> +	drvdata->rcdev.of_node   = dev->of_node;
> +	drvdata->rcdev.dev	 = dev;
> +
> +	return devm_reset_controller_register(dev, &drvdata->rcdev);
> +}
> +
> +static const struct of_device_id imx_audiomix_reset_dt_ids[] = {
> +	{ .compatible = "fsl,imx8mp-audiomix-reset", },
> +	{ /* sentinel */ },
> +};
> +
> +static struct platform_driver imx_audiomix_reset_driver = {
> +	.probe	= imx_audiomix_reset_probe,
> +	.driver = {
> +		.name		= KBUILD_MODNAME,
> +		.of_match_table	= imx_audiomix_reset_dt_ids,
> +	},
> +};
> +module_platform_driver(imx_audiomix_reset_driver);

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
