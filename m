Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CF0184904
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 15:16:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HhwkjAKQU1s4yHB0OhJ2Yr9M3OjXXp3lAmHIb6mTikM=; b=ojdcpwBqBBxjrt
	hTBaAmiyhx9WDmLp1c68W+I2Bpw3z7y6V6V5T38IC56Bq/Pbj0ixEbnGtwJfv/cz1sYul87JiYigK
	XJCMpAma1QMpPhbyrtSWFYvaKeD2nVOVcpyot7h2upGdW6JP7L3mgwHokF7FemnqZY5fW6hR99fEw
	A0eQ5qSE2R5JKQ8/ut3B6OWQ/i/DRbOzqNA6mYwlo/lwt68rEcaU5kiDwyMP4i+kyuBYejrwpSY8U
	0kyvHS7QfEGWyV3oYaGpI65/8TbpqhGxOG+vvLyHZtETM/MIKXs8moM1VeuJ7qKC3ITLvbHXDDEmt
	YDJ2MxgLHcSDdiprwCSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCl6t-0003MJ-Cz; Fri, 13 Mar 2020 14:16:23 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCl6g-0003Lm-3D
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 14:16:11 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A0AE61A1497;
 Fri, 13 Mar 2020 15:16:06 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 92DA41A146B;
 Fri, 13 Mar 2020 15:16:06 +0100 (CET)
Received: from localhost (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 7BEC1203CE;
 Fri, 13 Mar 2020 15:16:06 +0100 (CET)
Date: Fri, 13 Mar 2020 16:16:06 +0200
From: Abel Vesa <abel.vesa@nxp.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [RFC 10/11] reset: imx: Add audiomix reset controller support
Message-ID: <20200313141606.euumtuizm562zghv@fsr-ub1664-175>
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
 <1583226206-19758-11-git-send-email-abel.vesa@nxp.com>
 <ac6eb54c01cce4ec52560ac622e024ab47f2136c.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ac6eb54c01cce4ec52560ac622e024ab47f2136c.camel@pengutronix.de>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_071610_413843_59C7F90A 
X-CRM114-Status: GOOD (  24.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-03-04 12:41:33, Philipp Zabel wrote:
> Hi Abel,
> 
> On Tue, 2020-03-03 at 11:03 +0200, Abel Vesa wrote:
> > The imx-mix MFD driver registers some devices, one of which, in case of
> > audiomix, maps correctly to a reset controller type. This driver registers
> > a reset controller for that. For now, only the EARC specific resets are added.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> > Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> > ---
> >  drivers/reset/Kconfig                          |   7 ++
> >  drivers/reset/Makefile                         |   1 +
> >  drivers/reset/reset-imx-audiomix.c             | 122 +++++++++++++++++++++++++
> >  include/dt-bindings/reset/imx-audiomix-reset.h |  15 +++
> >  4 files changed, 145 insertions(+)
> >  create mode 100644 drivers/reset/reset-imx-audiomix.c
> >  create mode 100644 include/dt-bindings/reset/imx-audiomix-reset.h
> > 
> > diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> > index d9efbfd..2f8d9b3 100644
> > --- a/drivers/reset/Kconfig
> > +++ b/drivers/reset/Kconfig
> > @@ -81,6 +81,13 @@ config RESET_INTEL_GW
> >  	  Say Y to control the reset signals provided by reset controller.
> >  	  Otherwise, say N.
> >  
> > +config RESET_IMX_AUDIOMIX
> > +	bool "i.MX Audiomix Reset Driver" if COMPILE_TEST
> > +	depends on HAS_IOMEM
> > +	default ARCH_MXC
> > +	help
> > +	  This enables the audiomix reset controller driver for i.MX SoCs.
> > +
> >  config RESET_LANTIQ
> >  	bool "Lantiq XWAY Reset Driver" if COMPILE_TEST
> >  	default SOC_TYPE_XWAY
> > diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
> > index 249ed35..cf23d38 100644
> > --- a/drivers/reset/Makefile
> > +++ b/drivers/reset/Makefile
> > @@ -12,6 +12,7 @@ obj-$(CONFIG_RESET_BRCMSTB_RESCAL) += reset-brcmstb-rescal.o
> >  obj-$(CONFIG_RESET_HSDK) += reset-hsdk.o
> >  obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
> >  obj-$(CONFIG_RESET_INTEL_GW) += reset-intel-gw.o
> > +obj-$(CONFIG_RESET_IMX_AUDIOMIX) += reset-imx-audiomix.o
> >  obj-$(CONFIG_RESET_LANTIQ) += reset-lantiq.o
> >  obj-$(CONFIG_RESET_LPC18XX) += reset-lpc18xx.o
> >  obj-$(CONFIG_RESET_MESON) += reset-meson.o
> > diff --git a/drivers/reset/reset-imx-audiomix.c b/drivers/reset/reset-imx-audiomix.c
> > new file mode 100644
> > index 00000000..d1c62ef
> > --- /dev/null
> > +++ b/drivers/reset/reset-imx-audiomix.c
> > @@ -0,0 +1,122 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright 2019 NXP.
> > + */
> > +
> > +#include <dt-bindings/reset/imx-audiomix-reset.h>
> > +#include <linux/err.h>
> > +#include <linux/io.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/of_address.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/pm_runtime.h>
> > +#include <linux/reset-controller.h>
> > +
> > +#define IMX_AUDIOMIX_EARC_CTRL_REG	0x200
> > +
> > +#define IMX_AUDIOMIX_EARC_RESET_BIT	0x0
> > +#define IMX_AUDIOMIX_EARC_PHY_RESET_BIT	0x1
> > +
> > +struct imx_audiomix_reset_data {
> > +	void __iomem *base;
> > +	struct reset_controller_dev rcdev;
> > +	spinlock_t lock;
> > +};
> > +
> > +static int imx_audiomix_reset_set(struct reset_controller_dev *rcdev,
> > +			  unsigned long id, bool assert)
> > +{
> > +	struct imx_audiomix_reset_data *drvdata = container_of(rcdev,
> > +			struct imx_audiomix_reset_data, rcdev);
> > +	void __iomem *reg_addr = drvdata->base;
> > +	unsigned long flags;
> > +	unsigned int offset;
> > +	u32 reg;
> > +
> > +	switch (id) {
> > +	case IMX_AUDIOMIX_EARC_PHY_RESET:
> > +		reg_addr += IMX_AUDIOMIX_EARC_CTRL_REG;
> > +		offset = IMX_AUDIOMIX_EARC_PHY_RESET_BIT;
> > +		break;
> > +	case IMX_AUDIOMIX_EARC_RESET:
> > +		reg_addr += IMX_AUDIOMIX_EARC_CTRL_REG;
> > +		offset = IMX_AUDIOMIX_EARC_RESET_BIT;
> > +		break;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (assert) {
> > +		pm_runtime_get_sync(rcdev->dev);
> 
> This seems wrong. Why is the runtime PM reference count incremented when
> a reset is asserted ...

The audiomix IP has its own power domain. 

The way I see it, when the last deassert is done, there is no point
in keeping the audiomix on. So, unless the clock controller part of it does it,
the audiomix will be powered down.

> 
> > +		spin_lock_irqsave(&drvdata->lock, flags);
> > +		reg = readl(reg_addr);
> > +		writel(reg & ~BIT(offset), reg_addr);
> > +		spin_unlock_irqrestore(&drvdata->lock, flags);
> > +	} else {
> > +		spin_lock_irqsave(&drvdata->lock, flags);
> > +		reg = readl(reg_addr);
> > +		writel(reg | BIT(offset), reg_addr);
> > +		spin_unlock_irqrestore(&drvdata->lock, flags);
> > +		pm_runtime_put(rcdev->dev);
> 
> ... and decremented when a reset is deasserted?
> 
> Apart from the runtime PM handling this looks like it could reuse reset-
> simple.
> 
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int imx_audiomix_reset_assert(struct reset_controller_dev *rcdev,
> > +			     unsigned long id)
> > +{
> > +	return imx_audiomix_reset_set(rcdev, id, true);
> > +}
> > +
> > +static int imx_audiomix_reset_deassert(struct reset_controller_dev *rcdev,
> > +			       unsigned long id)
> > +{
> > +	return imx_audiomix_reset_set(rcdev, id, false);
> > +}
> > +
> > +static const struct reset_control_ops imx_audiomix_reset_ops = {
> > +	.assert		= imx_audiomix_reset_assert,
> > +	.deassert	= imx_audiomix_reset_deassert,
> > +};
> > +
> > +static int imx_audiomix_reset_probe(struct platform_device *pdev)
> > +{
> > +	struct imx_audiomix_reset_data *drvdata;
> > +	struct device *dev = &pdev->dev;
> > +
> > +	drvdata = devm_kzalloc(&pdev->dev, sizeof(*drvdata), GFP_KERNEL);
> > +	if (drvdata == NULL)
> > +		return -ENOMEM;
> > +
> > +	drvdata->base = dev_get_drvdata(dev->parent);
> > +
> > +	platform_set_drvdata(pdev, drvdata);
> > +
> > +	pm_runtime_enable(dev);
> > +
> > +	spin_lock_init(&drvdata->lock);
> > +
> > +	drvdata->rcdev.owner     = THIS_MODULE;
> > +	drvdata->rcdev.nr_resets = IMX_AUDIOMIX_RESET_NUM;
> > +	drvdata->rcdev.ops       = &imx_audiomix_reset_ops;
> > +	drvdata->rcdev.of_node   = dev->of_node;
> > +	drvdata->rcdev.dev	 = dev;
> > +
> > +	return devm_reset_controller_register(dev, &drvdata->rcdev);
> > +}
> > +
> > +static const struct of_device_id imx_audiomix_reset_dt_ids[] = {
> > +	{ .compatible = "fsl,imx8mp-audiomix-reset", },
> > +	{ /* sentinel */ },
> > +};
> > +
> > +static struct platform_driver imx_audiomix_reset_driver = {
> > +	.probe	= imx_audiomix_reset_probe,
> > +	.driver = {
> > +		.name		= KBUILD_MODNAME,
> > +		.of_match_table	= imx_audiomix_reset_dt_ids,
> > +	},
> > +};
> > +module_platform_driver(imx_audiomix_reset_driver);
> > diff --git a/include/dt-bindings/reset/imx-audiomix-reset.h b/include/dt-bindings/reset/imx-audiomix-reset.h
> > new file mode 100644
> > index 00000000..2e26878
> > --- /dev/null
> > +++ b/include/dt-bindings/reset/imx-audiomix-reset.h
> > @@ -0,0 +1,15 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright 2019 NXP.
> > + */
> > +
> > +#ifndef DT_BINDING_RESET_IMX_AUDIOMIX_H
> > +#define DT_BINDING_RESET_IMX_AUDIOMIX_H
> > +
> > +#define IMX_AUDIOMIX_EARC_RESET		0x0
> > +#define IMX_AUDIOMIX_EARC_PHY_RESET	0x1
> > +
> > +#define IMX_AUDIOMIX_RESET_NUM		2
> > +
> > +#endif
> > +
> 
> The imx-audiomix-reset.h change should go into a separate patch,
> together with the binding docs for fsl,imx8mp-audiomix-reset.
> 
> regards
> Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
