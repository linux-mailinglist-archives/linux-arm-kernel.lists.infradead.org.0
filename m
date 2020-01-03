Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F4D12F60E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 10:27:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=18AV5rYe/ElstyfOLoPdpWy0llAywciPXN5pdBUaZkM=; b=jXbzDvgxNK+51t
	ZYjWpjGIKxmCfU047IBAz5RUNxbGmTYzWQd2GHjI//iuVqnulHd3El/4qSErV06KCPoQjvTLjqaQ+
	LeU3b03i1VbTGfvBfGsMq+NhKDCkZBhW/7+PtqqpiuCif6FYe8vIL2YtZdFxLUHvo/WSwaWv4eqz9
	3tDor7GhZ6FRGF7AjswwghhgwGml9IfY95M6TKLw4JJXCmLXn2iqG86+JmDc991XTiseuXDqr/k6y
	52+drWBR/IbCAd0D9aTYKmQM78AcdVHaKD3TTSQN7g/j1rTnznvnw3AvuY//ZaceKjSOavwMqdCW5
	EiuscV7qwBvyw/guBCPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inJF6-0000jc-D4; Fri, 03 Jan 2020 09:27:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inJEz-0000iu-R9
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 09:27:35 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1inJEt-0000N6-Co; Fri, 03 Jan 2020 10:27:27 +0100
Message-ID: <a121d715fbed1f8ab935d465a4f0cbb8071790d5.camel@pengutronix.de>
Subject: Re: [PATCH v2 2/2] reset: Add Broadcom STB RESCAL reset controller
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org
Date: Fri, 03 Jan 2020 10:27:26 +0100
In-Reply-To: <20200102231435.21703-3-f.fainelli@gmail.com>
References: <20200102231435.21703-1-f.fainelli@gmail.com>
 <20200102231435.21703-3-f.fainelli@gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_012733_881075_0C7E4805 
X-CRM114-Status: GOOD (  21.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Jim Quinlan <im2101024@gmail.com>, "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Jim Quinlan <jim2101024@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, "moderated
 list:BROADCOM BCM7XXX ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

just a few small nitpicks:

On Thu, 2020-01-02 at 15:14 -0800, Florian Fainelli wrote:
> From: Jim Quinlan <jim2101024@gmail.com>
> 
> On BCM7216 there is a special purpose reset controller named RESCAL
> (reset calibration) which is necessary for SATA and PCIe0/1 to operate
> correctly. This commit adds support for such a reset controller to be
> available.
> 
> Signed-off-by: Jim Quinlan <im2101024@gmail.com>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  drivers/reset/Kconfig                |   7 ++
>  drivers/reset/Makefile               |   1 +
>  drivers/reset/reset-brcmstb-rescal.c | 110 +++++++++++++++++++++++++++
>  3 files changed, 118 insertions(+)
>  create mode 100644 drivers/reset/reset-brcmstb-rescal.c
> 
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index 12f5c897788d..b7cc0a2049d9 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -49,6 +49,13 @@ config RESET_BRCMSTB
>  	  This enables the reset controller driver for Broadcom STB SoCs using
>  	  a SUN_TOP_CTRL_SW_INIT style controller.
>  
> +config RESET_BRCMSTB_RESCAL
> +	bool "Broadcom STB RESCAL reset controller"
> +	default ARCH_BRCMSTB || COMPILE_TEST
> +	help
> +	  This enables the RESCAL reset controller for SATA, PCIe0, or PCIe1 on
> +	  BCM7216.
> +
>  config RESET_HSDK
>  	bool "Synopsys HSDK Reset Driver"
>  	depends on HAS_IOMEM
> diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
> index 00767c03f5f2..1e4291185c52 100644
> --- a/drivers/reset/Makefile
> +++ b/drivers/reset/Makefile
> @@ -8,6 +8,7 @@ obj-$(CONFIG_RESET_ATH79) += reset-ath79.o
>  obj-$(CONFIG_RESET_AXS10X) += reset-axs10x.o
>  obj-$(CONFIG_RESET_BERLIN) += reset-berlin.o
>  obj-$(CONFIG_RESET_BRCMSTB) += reset-brcmstb.o
> +obj-$(CONFIG_RESET_BRCMSTB_RESCAL) += reset-brcmstb-rescal.o
>  obj-$(CONFIG_RESET_HSDK) += reset-hsdk.o
>  obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
>  obj-$(CONFIG_RESET_LANTIQ) += reset-lantiq.o
> diff --git a/drivers/reset/reset-brcmstb-rescal.c b/drivers/reset/reset-brcmstb-rescal.c
> new file mode 100644
> index 000000000000..e1c038e62855
> --- /dev/null
> +++ b/drivers/reset/reset-brcmstb-rescal.c
> @@ -0,0 +1,110 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (C) 2018-2020 Broadcom */
> +
> +#include <linux/device.h>
> +#include <linux/iopoll.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset-controller.h>
> +
> +#define BRCM_RESCAL_START	0x0
> +#define  BRCM_RESCAL_START_BIT	BIT(0)
> +#define BRCM_RESCAL_CTRL	0x4
> +#define BRCM_RESCAL_STATUS	0x8
> +#define  BRCM_RESCAL_STATUS_BIT	BIT(0)
> +
> +struct brcm_rescal_reset {
> +	void __iomem	*base;

You could replace the tab before *base with a space for consistency.

> +	struct device *dev;
> +	struct reset_controller_dev rcdev;
> +};
> +
> +static int brcm_rescal_reset_set(struct reset_controller_dev *rcdev,
> +				 unsigned long id)
> +{
> +	struct brcm_rescal_reset *data =
> +		container_of(rcdev, struct brcm_rescal_reset, rcdev);
> +	void __iomem *base = data->base;
> +	u32 reg;
> +	int ret;
> +
> +	reg = readl(base + BRCM_RESCAL_START);
> +	writel(reg | BRCM_RESCAL_START_BIT, base + BRCM_RESCAL_START);
> +	reg = readl(base + BRCM_RESCAL_START);
> +	if (!(reg & BRCM_RESCAL_START_BIT)) {
> +		dev_err(data->dev, "failed to start SATA/PCIe rescal\n");
> +		return -EIO;
> +	}
> +
> +	ret = readl_poll_timeout(base + BRCM_RESCAL_STATUS, reg,
> +				 !(reg & BRCM_RESCAL_STATUS_BIT), 100, 1000);
> +	if (ret) {
> +		dev_err(data->dev, "time out on SATA/PCIe rescal\n");
> +		return -ETIMEDOUT;

Just return ret here, readl_poll_timeout() already returns -ETIMEDOUT.

> +	}
> +
> +	reg = readl(base + BRCM_RESCAL_START);
> +	writel(reg & ~BRCM_RESCAL_START_BIT, base + BRCM_RESCAL_START);
> +	(void)readl(base + BRCM_RESCAL_START);

Is this final read actually necessary (if so, why)?

> +
> +	dev_dbg(data->dev, "SATA/PCIe rescal success\n");
> +
> +	return 0;
> +}
> +
> +static int brcm_rescal_reset_xlate(struct reset_controller_dev *rcdev,
> +				   const struct of_phandle_args *reset_spec)
> +{
> +	/* This is needed if #reset-cells == 0. */
> +	return 0;
> +}
> +
> +static const struct reset_control_ops brcm_rescal_reset_ops = {
> +	.reset = brcm_rescal_reset_set,
> +};
> +
> +static int brcm_rescal_reset_probe(struct platform_device *pdev)
> +{
> +	struct brcm_rescal_reset *data;
> +	struct resource *res;
> +
> +	data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	data->base = devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(data->base))
> +		return PTR_ERR(data->base);
> +
> +	platform_set_drvdata(pdev, data);

This can be dropped.

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
