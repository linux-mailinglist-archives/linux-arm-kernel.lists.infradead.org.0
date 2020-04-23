Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A151B5FDD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:48:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=liCMr5t17TJmmDGb1v8glBPanaNtenoTu2NEo8SqATM=; b=CeNXgs79MLwab5
	x4bhkJ3F/yuKv7rp0+7uSsPTH+IZd6ZavKYjlbk1qAWOSQcG7zXMu2/0yFSz7j4J57orIEdWF5xyX
	EpSisSXK13h7VCIFnS2wEPfhg8F9SThnHdbgs4as2FNKi9x2+o7r9r+KRZcB7ykkXwpCAiLqCOD3x
	R4GuwXsQ60oBfMpDKaXRtH9fj853PglDmcpxu59pBblOoCjReG6cjiHCA2rQV+iu8mYyRUnu+Jnq6
	iJE5oCUBXxaIje7FntLamOSF98LFCGpTzDpokOkbWdx9jZ7X22K341oozuYJDR63MrnXilWfSnMkX
	EDfkneqxjzZ52ctJSMHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRe4z-0005GP-Ac; Thu, 23 Apr 2020 15:47:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRe4n-0005Cp-Oo
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:47:47 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jRe4c-0007d9-C5; Thu, 23 Apr 2020 17:47:34 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jRe4b-0006Ow-Ja; Thu, 23 Apr 2020 17:47:33 +0200
Message-ID: <a32ab342e7e4928ec252815ab0023f81bb182b32.camel@pengutronix.de>
Subject: Re: [PATCH v3 12/13] reset: imx: Add audiomix reset controller support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Abel Vesa <abel.vesa@nxp.com>, Lee Jones <lee.jones@linaro.org>, Shawn
 Guo <shawnguo@kernel.org>, Peng Fan <peng.fan@nxp.com>, Stephen Boyd
 <sboyd@kernel.org>, Sascha Hauer <kernel@pengutronix.de>, Anson Huang
 <anson.huang@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai
 <ping.bai@nxp.com>
Date: Thu, 23 Apr 2020 17:47:33 +0200
In-Reply-To: <1586937773-5836-13-git-send-email-abel.vesa@nxp.com>
References: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
 <1586937773-5836-13-git-send-email-abel.vesa@nxp.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_084745_801588_EA962E2F 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, 2020-04-15 at 11:02 +0300, Abel Vesa wrote:
> The imx-mix MFD driver registers some devices, one of which, in case of
> audiomix, maps correctly to a reset controller type. This driver registers
> a reset controller for that. For now, only the EARC specific resets are added.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>  drivers/reset/Kconfig              |   7 +++
>  drivers/reset/Makefile             |   1 +
>  drivers/reset/reset-imx-audiomix.c | 117 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 125 insertions(+)
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
>  obj-$(CONFIG_RESET_LANTIQ) += reset-lantiq.o
>  obj-$(CONFIG_RESET_LPC18XX) += reset-lpc18xx.o
>  obj-$(CONFIG_RESET_MESON) += reset-meson.o
> diff --git a/drivers/reset/reset-imx-audiomix.c b/drivers/reset/reset-imx-audiomix.c
> new file mode 100644
> index 00000000..9533e41
> --- /dev/null
> +++ b/drivers/reset/reset-imx-audiomix.c
> @@ -0,0 +1,117 @@
> +// SPDX-License-Identifier: GPL-2.0-only
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

This switch is not necessary. Since reg_addr is the same for both bits,
you can just set it directly, once. And since (IMX_AUDIOMIX_EARC_RESET
== IMX_AUDIOMIX_EARC_RESET_BIT) and (IMX_AUDIOMIX_EARC_PHY_RESET ==
IMX_AUDIOMIX_EARC_PHY_RESET_BIT), you can just use BIT(id) instead of
BIT(offset) below.

> +	default:
> +		return -EINVAL;

This is already catched by the core, which doesn't allow
(id >= rcdev->nr_resets).

> +	}
> +
> +	if (assert) {
> +		spin_lock_irqsave(&drvdata->lock, flags);
> +		reg = readl(reg_addr);
> +		writel(reg & ~BIT(offset), reg_addr);
> +		spin_unlock_irqrestore(&drvdata->lock, flags);
> +	} else {
> +		spin_lock_irqsave(&drvdata->lock, flags);
> +		reg = readl(reg_addr);
> +		writel(reg | BIT(offset), reg_addr);
> +		spin_unlock_irqrestore(&drvdata->lock, flags);
> +	}

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
