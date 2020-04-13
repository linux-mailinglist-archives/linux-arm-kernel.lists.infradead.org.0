Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B631A66FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 15:31:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=au90osli+dk01lbKHBpy4NMN32hTMGCcFV3Quo0OBnc=; b=kJj570ZHCwwjKd
	P2bGgBhlSQfkV6fy1puDafuaZi/VtvHuZ5LEQUvPxZ/oia8dC3sQHtLX30mHbIZCNQV4e5Y5yniFK
	cRZdXRam/25vCoV0YRaob9ouEkO4jRcWf0VaAIzXbFLHaqmYK1LLeQMlw5WELQsAHXHvYTz4nToft
	dw6oFbpqMSZABX7THRxwSNaYh/sBzKqoh9gvNADglPaKX8aZjrQ7DQQWzJSSdh+ODX3SKBic4EeKb
	/SYko5MIGQIT8RR6gYL3+Ai3T4Nog47al/S44e9PMjKDai/X+Q+2QwPQsBu39axGn6xrCt70GDB38
	wXILNRwQYNsthImqsGuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNzBS-0003U8-1b; Mon, 13 Apr 2020 13:31:30 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNzBK-0003Tg-QN
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 13:31:24 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0E92320001B;
 Mon, 13 Apr 2020 15:31:19 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F3DDF200008;
 Mon, 13 Apr 2020 15:31:18 +0200 (CEST)
Received: from localhost (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id DC5732039E;
 Mon, 13 Apr 2020 15:31:18 +0200 (CEST)
Date: Mon, 13 Apr 2020 16:31:18 +0300
From: Abel Vesa <abel.vesa@nxp.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH v2 12/13] reset: imx: Add audiomix reset controller support
Message-ID: <20200413133118.3qtf5znahvvgmnfw@fsr-ub1664-175>
References: <1585150731-3354-1-git-send-email-abel.vesa@nxp.com>
 <1585150731-3354-13-git-send-email-abel.vesa@nxp.com>
 <3e31d193605897bdfad3a3e7cde66bd03a3a8acd.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3e31d193605897bdfad3a3e7cde66bd03a3a8acd.camel@pengutronix.de>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_063123_131876_0EA415C3 
X-CRM114-Status: GOOD (  35.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

On 20-03-26 11:50:47, Philipp Zabel wrote:

Sorry for the late response. Please see my inline comments.

> Hi Abel,
> 
> On Wed, 2020-03-25 at 17:38 +0200, Abel Vesa wrote:
> > The imx-mix MFD driver registers some devices, one of which, in case of
> > audiomix, maps correctly to a reset controller type. This driver registers
> > a reset controller for that. For now, only the EARC specific resets are added.
> 
> I am still confused about what the runtime PM actually does. Maybe it
> would help me understand if you could point me to the EARC driver that
> is using this reset controller.
> 

The documentation for the i.MX8MP is not public yet, so I'll try to explain
with my own words how this works.

The audiomix is a HW mix that concentrates multiple GPRs that are audio subsystem
related into one single IP. These mixes (hdmitx, mediamix, etc) have their own power
domains, that's why the runtime PM.

> > Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> > ---
> >  drivers/reset/Kconfig              |   7 +++
> >  drivers/reset/Makefile             |   1 +
> >  drivers/reset/reset-imx-audiomix.c | 122 +++++++++++++++++++++++++++++++++++++
> >  3 files changed, 130 insertions(+)
> >  create mode 100644 drivers/reset/reset-imx-audiomix.c
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
> 
> The cover letter mentions hdmimix, dispmix and mediamix. Are there going
> to be a bunch of those mix reset drivers? How do they differ?

Well, each mix will deal with a different bunch of GPRs. Again, the mix
is a conglomerate of GPRs specific to one subsystem (like audio, display, hdmi, and so on).

> 
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
> 
> I think GPL-2.0 has been deprecated in the SPDX license list, better use
> GPL-2.0-only for new files.

Will fix in the next version.

> 
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
> This driver and the parent MFD driver do not implement runtime PM ops,
> and the device tree bindings do not specify any power domains. What does
> this actually do?

The power domains will be sent in the near future. Maybe I should just drop
the pm_runtime for now and submit that part when the PD are already in.

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
> Assuming this disables the power domain that powers the whole Audiomix,
> what happens to the reset lines in this case? Do they float? Are they
> guaranteed to stay deasserted?

AFAIK, they stay deasserted. But this audiomix should only be suspended
only after all the resets and clocks users have already suspended. So the
actual state of the resets should not matter at that point.

> 
> Note that the reset API does not require consumers to call
> reset_control_assert() on an exclusive reset control before calling
> reset_control_deassert(), so this could easily lead to issues with the
> device usage counter.

Hmm, you're right. It seems I need to keep count of each assertion/deassertion
for each reset id. As I said before, maybe for now I should drop the runtime pm
for the entire thing.

Am I the first one to make use of runtime PM for a reset controller ?!
Is the 'reset controller with its own PD" something I'm the only one dealing with EVER ?
Grepping the drivers/reset for the runtime, it seems I am. THAT'S WEIRD ! :D

> 
> Shared reset controls call deassert first, and assert after the last
> user is gone, so if the driver would start with deasserting both EARC
> and EARC_PHY reset lines via shared reset controls, this would underflow
> the device usage counter right away.

Right again. I'll definitely drop the runtime PM for now.

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
> 
> regards
> Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
