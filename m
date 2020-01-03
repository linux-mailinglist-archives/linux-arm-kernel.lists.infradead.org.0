Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FAA12F619
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 10:31:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rd6Qq4iCXqlbZv+ZP/DXsMYVgUAvTbtuVknjh1ALIzQ=; b=hMBcCHeTNY7HAl
	KF6+gBMcXGPk2DUZBCCOGCEYwSIEKJzKxtq6BpiCYtNGg182hZvvYm0bZeUT2Fpw7R4OYB5KMWs1l
	5gtmMthrbWK7VyvoXYjuwX1ndJnPU3kfUCFg40tdfYSDgZ/rAeQxfpjJKCc81bVlU4RUVVksW4wmE
	iHOf7cXOkWpYukTkirHHsOnWz5oSO53Wpi8vyfRCBckyBFVq5opDJkbI7CA6dpjs3ctLZ41XArdzk
	QWHNVJ1FJoB/LHeObWuZh35Gph3fmMsjiLsZP6c9eIdhWkzh2maa7MjqqwpcSALnT/rEm5sE2aOKY
	1M+EUh3eTYvOIBE1sUbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inJJ2-0002Y8-ES; Fri, 03 Jan 2020 09:31:44 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inJIv-0002XV-2f
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 09:31:39 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0039VRsV060166;
 Fri, 3 Jan 2020 03:31:27 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578043887;
 bh=VZlXfOZjW4WM1kw+MMvIIMERV96FbgypkxC7+mbaDqA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=L02vFofQpV0UhY7L5BpMLdJbsgZ6DsKBeAN/uX00J7plQFB9b7xwn+g988sNEHgt1
 5o3sLHEiA7sMtS3Uyg7Nh6NJT64+lprA7W7aMkoI9/YMb0gQ62yupHphA32k1CPy8K
 YpCQK67iWJi/1A+XVoxcgdFHzvwuIU5IB98lw9cE=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0039VRHq010004
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 3 Jan 2020 03:31:27 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 3 Jan
 2020 03:31:26 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 3 Jan 2020 03:31:26 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0039VMtB017205;
 Fri, 3 Jan 2020 03:31:23 -0600
Subject: Re: [PATCH v3 07/13] phy: usb: Add support for new Synopsis USB
 controller on the 7216
To: Al Cooper <alcooperx@gmail.com>, <linux-kernel@vger.kernel.org>
References: <20191210132132.41509-1-alcooperx@gmail.com>
 <20191210132132.41509-8-alcooperx@gmail.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <8576406d-2b90-684f-0c5e-44937c3b030a@ti.com>
Date: Fri, 3 Jan 2020 15:03:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20191210132132.41509-8-alcooperx@gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_013137_225538_AA200DBD 
X-CRM114-Status: GOOD (  31.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 10/12/19 6:51 PM, Al Cooper wrote:
> The 7216 has the new USB XHCI controller from Synopsis. While
> this new controller and the PHY are similar to the STB versions,
> the major differences are:
> 
> - Many of the registers and fields in the CTRL block have been
>   removed or changed.
> - A new set of Synopsis control registers, BCHP_USB_XHCI_GBL, were
>   added.

Is it not Synopsys?

Thanks
Kishon

> - MDIO functionality has been replaced with direct access registers
>   in the BCHP_USB_XHCI_GBL block.
> - Power up PHY defaults that had to be changed by MDIO in previous
>   chips will now power up with the correct defaults.
> 
> A new init module was created for this new Synopsis USB controller.
> A new compatible string was added and the driver will dispatch
> into one of two init modules based on it. A "reg-names" field was
> added so the driver can more easily get optional registers.
> A DT bindings document was also added for this driver.
> 
> Signed-off-by: Al Cooper <alcooperx@gmail.com>
> ---
>  drivers/phy/broadcom/Makefile                 |   2 +-
>  .../phy/broadcom/phy-brcm-usb-init-synopsis.c | 171 ++++++++++++++++++
>  drivers/phy/broadcom/phy-brcm-usb-init.h      |   2 +
>  drivers/phy/broadcom/phy-brcm-usb.c           |  70 +++++--
>  4 files changed, 227 insertions(+), 18 deletions(-)
>  create mode 100644 drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
> 
> diff --git a/drivers/phy/broadcom/Makefile b/drivers/phy/broadcom/Makefile
> index f453c7d3ffff..88523e2be861 100644
> --- a/drivers/phy/broadcom/Makefile
> +++ b/drivers/phy/broadcom/Makefile
> @@ -8,7 +8,7 @@ obj-$(CONFIG_PHY_NS2_USB_DRD)		+= phy-bcm-ns2-usbdrd.o
>  obj-$(CONFIG_PHY_BRCM_SATA)		+= phy-brcm-sata.o
>  obj-$(CONFIG_PHY_BRCM_USB)		+= phy-brcm-usb-dvr.o
>  
> -phy-brcm-usb-dvr-objs := phy-brcm-usb.o phy-brcm-usb-init.o
> +phy-brcm-usb-dvr-objs := phy-brcm-usb.o phy-brcm-usb-init.o phy-brcm-usb-init-synopsis.o
>  
>  obj-$(CONFIG_PHY_BCM_SR_PCIE)		+= phy-bcm-sr-pcie.o
>  obj-$(CONFIG_PHY_BCM_SR_USB)		+= phy-bcm-sr-usb.o
> diff --git a/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c b/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
> new file mode 100644
> index 000000000000..57663492b228
> --- /dev/null
> +++ b/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
> @@ -0,0 +1,171 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (c) 2018, Broadcom */
> +
> +/*
> + * This module contains USB PHY initialization for power up and S3 resume
> + * for newer Synopsis based USB hardware first used on the bcm7216.
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/io.h>
> +
> +#include <linux/soc/brcmstb/brcmstb.h>
> +#include "phy-brcm-usb-init.h"
> +
> +/* Register definitions for the USB CTRL block */
> +#define USB_CTRL_SETUP			0x00
> +#define   USB_CTRL_SETUP_STRAP_IPP_SEL_MASK		0x02000000
> +#define   USB_CTRL_SETUP_SCB2_EN_MASK			0x00008000
> +#define   USB_CTRL_SETUP_SCB1_EN_MASK			0x00004000
> +#define   USB_CTRL_SETUP_SOFT_SHUTDOWN_MASK		0x00000200
> +#define   USB_CTRL_SETUP_IPP_MASK			0x00000020
> +#define   USB_CTRL_SETUP_IOC_MASK			0x00000010
> +#define USB_CTRL_USB_PM			0x04
> +#define   USB_CTRL_USB_PM_USB_PWRDN_MASK		0x80000000
> +#define   USB_CTRL_USB_PM_SOFT_RESET_MASK		0x40000000
> +#define   USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK		0x00800000
> +#define   USB_CTRL_USB_PM_XHC_SOFT_RESETB_MASK		0x00400000
> +#define USB_CTRL_USB_PM_STATUS		0x08
> +#define USB_CTRL_USB_DEVICE_CTL1	0x10
> +#define   USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_MASK	0x00000003
> +
> +
> +static void xhci_soft_reset(struct brcm_usb_init_params *params,
> +			int on_off)
> +{
> +	void __iomem *ctrl = params->ctrl_regs;
> +
> +	/* Assert reset */
> +	if (on_off)
> +		USB_CTRL_UNSET(ctrl, USB_PM, XHC_SOFT_RESETB);
> +	/* De-assert reset */
> +	else
> +		USB_CTRL_SET(ctrl, USB_PM, XHC_SOFT_RESETB);
> +}
> +
> +static void usb_init_ipp(struct brcm_usb_init_params *params)
> +{
> +	void __iomem *ctrl = params->ctrl_regs;
> +	u32 reg;
> +	u32 orig_reg;
> +
> +	pr_debug("%s\n", __func__);
> +
> +	orig_reg = reg = brcm_usb_readl(USB_CTRL_REG(ctrl, SETUP));
> +	if (params->ipp != 2)
> +		/* override ipp strap pin (if it exits) */
> +		reg &= ~(USB_CTRL_MASK(SETUP, STRAP_IPP_SEL));
> +
> +	/* Override the default OC and PP polarity */
> +	reg &= ~(USB_CTRL_MASK(SETUP, IPP) | USB_CTRL_MASK(SETUP, IOC));
> +	if (params->ioc)
> +		reg |= USB_CTRL_MASK(SETUP, IOC);
> +	if (params->ipp == 1)
> +		reg |= USB_CTRL_MASK(SETUP, IPP);
> +	brcm_usb_writel(reg, USB_CTRL_REG(ctrl, SETUP));
> +
> +	/*
> +	 * If we're changing IPP, make sure power is off long enough
> +	 * to turn off any connected devices.
> +	 */
> +	if ((reg ^ orig_reg) & USB_CTRL_MASK(SETUP, IPP))
> +		msleep(50);
> +}
> +
> +static void usb_init_common(struct brcm_usb_init_params *params)
> +{
> +	u32 reg;
> +	void __iomem *ctrl = params->ctrl_regs;
> +
> +	pr_debug("%s\n", __func__);
> +
> +	USB_CTRL_UNSET(ctrl, USB_PM, USB_PWRDN);
> +	/* 1 millisecond - for USB clocks to settle down */
> +	usleep_range(1000, 2000);
> +
> +	if (USB_CTRL_MASK(USB_DEVICE_CTL1, PORT_MODE)) {
> +		reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
> +		reg &= ~USB_CTRL_MASK(USB_DEVICE_CTL1, PORT_MODE);
> +		reg |= params->mode;
> +		brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
> +	}
> +	switch (params->mode) {
> +	case USB_CTLR_MODE_HOST:
> +		USB_CTRL_UNSET(ctrl, USB_PM, BDC_SOFT_RESETB);
> +		break;
> +	default:
> +		USB_CTRL_UNSET(ctrl, USB_PM, BDC_SOFT_RESETB);
> +		USB_CTRL_SET(ctrl, USB_PM, BDC_SOFT_RESETB);
> +		break;
> +	}
> +}
> +
> +static void usb_init_xhci(struct brcm_usb_init_params *params)
> +{
> +	pr_debug("%s\n", __func__);
> +
> +	xhci_soft_reset(params, 0);
> +}
> +
> +static void usb_uninit_common(struct brcm_usb_init_params *params)
> +{
> +	void __iomem *ctrl = params->ctrl_regs;
> +
> +	pr_debug("%s\n", __func__);
> +
> +	USB_CTRL_SET(ctrl, USB_PM, USB_PWRDN);
> +
> +}
> +
> +static void usb_uninit_xhci(struct brcm_usb_init_params *params)
> +{
> +
> +	pr_debug("%s\n", __func__);
> +
> +	xhci_soft_reset(params, 1);
> +}
> +
> +static int usb_get_dual_select(struct brcm_usb_init_params *params)
> +{
> +	void __iomem *ctrl = params->ctrl_regs;
> +	u32 reg = 0;
> +
> +	pr_debug("%s\n", __func__);
> +
> +	reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
> +	reg &= USB_CTRL_MASK(USB_DEVICE_CTL1, PORT_MODE);
> +	return reg;
> +}
> +
> +static void usb_set_dual_select(struct brcm_usb_init_params *params, int mode)
> +{
> +	void __iomem *ctrl = params->ctrl_regs;
> +	u32 reg;
> +
> +	pr_debug("%s\n", __func__);
> +
> +	reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
> +	reg &= ~USB_CTRL_MASK(USB_DEVICE_CTL1, PORT_MODE);
> +	reg |= mode;
> +	brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
> +}
> +
> +
> +static const struct brcm_usb_init_ops bcm7216_ops = {
> +	.init_ipp = usb_init_ipp,
> +	.init_common = usb_init_common,
> +	.init_xhci = usb_init_xhci,
> +	.uninit_common = usb_uninit_common,
> +	.uninit_xhci = usb_uninit_xhci,
> +	.get_dual_select = usb_get_dual_select,
> +	.set_dual_select = usb_set_dual_select,
> +};
> +
> +void brcm_usb_dvr_init_7216(struct brcm_usb_init_params *params)
> +{
> +
> +	pr_debug("%s\n", __func__);
> +
> +	params->family_name = "7216";
> +	params->ops = &bcm7216_ops;
> +}
> diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.h b/drivers/phy/broadcom/phy-brcm-usb-init.h
> index 7701872d1136..db6851c55335 100644
> --- a/drivers/phy/broadcom/phy-brcm-usb-init.h
> +++ b/drivers/phy/broadcom/phy-brcm-usb-init.h
> @@ -43,6 +43,7 @@ struct brcm_usb_init_ops {
>  struct  brcm_usb_init_params {
>  	void __iomem *ctrl_regs;
>  	void __iomem *xhci_ec_regs;
> +	void __iomem *xhci_gbl_regs;
>  	int ioc;
>  	int ipp;
>  	int mode;
> @@ -55,6 +56,7 @@ struct  brcm_usb_init_params {
>  };
>  
>  void brcm_usb_dvr_init_7445(struct brcm_usb_init_params *params);
> +void brcm_usb_dvr_init_7216(struct brcm_usb_init_params *params);
>  
>  static inline u32 brcm_usb_readl(void __iomem *addr)
>  {
> diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
> index 9d93c5599511..64379ede480e 100644
> --- a/drivers/phy/broadcom/phy-brcm-usb.c
> +++ b/drivers/phy/broadcom/phy-brcm-usb.c
> @@ -241,6 +241,15 @@ static const struct attribute_group brcm_usb_phy_group = {
>  	.attrs = brcm_usb_phy_attrs,
>  };
>  
> +static const struct of_device_id brcm_usb_dt_ids[] = {
> +	{
> +		.compatible = "brcm,bcm7216-usb-phy",
> +		.data = &brcm_usb_dvr_init_7216,
> +	},
> +	{ .compatible = "brcm,brcmstb-usb-phy" },
> +	{ /* sentinel */ }
> +};
> +
>  static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
>  				 struct brcm_usb_phy_data *priv,
>  				 struct device_node *dn)
> @@ -316,13 +325,16 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
>  
>  static int brcm_usb_phy_probe(struct platform_device *pdev)
>  {
> -	struct resource *res;
> +	struct resource *res_ctrl;
> +	struct resource *res_xhciec = NULL;
> +	struct resource *res_xhcigbl = NULL;
>  	struct device *dev = &pdev->dev;
>  	struct brcm_usb_phy_data *priv;
>  	struct phy_provider *phy_provider;
>  	struct device_node *dn = pdev->dev.of_node;
>  	int err;
>  	const char *mode;
> +	const struct of_device_id *match;
>  
>  	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>  	if (!priv)
> @@ -331,30 +343,59 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
>  
>  	priv->ini.family_id = brcmstb_get_family_id();
>  	priv->ini.product_id = brcmstb_get_product_id();
> -	brcm_usb_dvr_init_7445(&priv->ini);
> +
> +	match = of_match_node(brcm_usb_dt_ids, dev->of_node);
> +	if (match && match->data) {
> +		void (*dvr_init)(struct brcm_usb_init_params *params);
> +
> +		dvr_init = match->data;
> +		(*dvr_init)(&priv->ini);
> +	} else {
> +		brcm_usb_dvr_init_7445(&priv->ini);
> +	}
> +
>  	dev_dbg(dev, "Best mapping table is for %s\n",
>  		priv->ini.family_name);
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	if (!res) {
> -		dev_err(dev, "can't get USB_CTRL base address\n");
> -		return -EINVAL;
> +
> +	/* Newer DT node has reg-names. xhci_ec and xhci_gbl are optional. */
> +	res_ctrl = platform_get_resource_byname(pdev, IORESOURCE_MEM, "ctrl");
> +	if (res_ctrl != NULL) {
> +		res_xhciec = platform_get_resource_byname(pdev,
> +							  IORESOURCE_MEM,
> +							  "xhci_ec");
> +		res_xhcigbl = platform_get_resource_byname(pdev,
> +							   IORESOURCE_MEM,
> +							   "xhci_gbl");
> +	} else {
> +		/* Older DT node without reg-names, use index */
> +		res_ctrl = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +		if (res_ctrl == NULL) {
> +			dev_err(dev, "can't get CTRL base address\n");
> +			return -EINVAL;
> +		}
> +		res_xhciec = platform_get_resource(pdev, IORESOURCE_MEM, 1);
>  	}
> -	priv->ini.ctrl_regs = devm_ioremap_resource(dev, res);
> +	priv->ini.ctrl_regs = devm_ioremap_resource(dev, res_ctrl);
>  	if (IS_ERR(priv->ini.ctrl_regs)) {
>  		dev_err(dev, "can't map CTRL register space\n");
>  		return -EINVAL;
>  	}
> -
> -	/* The XHCI EC registers are optional */
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> -	if (res) {
> +	if (res_xhciec) {
>  		priv->ini.xhci_ec_regs =
> -			devm_ioremap_resource(dev, res);
> +			devm_ioremap_resource(dev, res_xhciec);
>  		if (IS_ERR(priv->ini.xhci_ec_regs)) {
>  			dev_err(dev, "can't map XHCI EC register space\n");
>  			return -EINVAL;
>  		}
>  	}
> +	if (res_xhcigbl) {
> +		priv->ini.xhci_gbl_regs =
> +			devm_ioremap_resource(dev, res_xhcigbl);
> +		if (IS_ERR(priv->ini.xhci_gbl_regs)) {
> +			dev_err(dev, "can't map XHCI Global register space\n");
> +			return -EINVAL;
> +		}
> +	}
>  
>  	of_property_read_u32(dn, "brcm,ipp", &priv->ini.ipp);
>  	of_property_read_u32(dn, "brcm,ioc", &priv->ini.ioc);
> @@ -480,11 +521,6 @@ static const struct dev_pm_ops brcm_usb_phy_pm_ops = {
>  	SET_LATE_SYSTEM_SLEEP_PM_OPS(brcm_usb_phy_suspend, brcm_usb_phy_resume)
>  };
>  
> -static const struct of_device_id brcm_usb_dt_ids[] = {
> -	{ .compatible = "brcm,brcmstb-usb-phy" },
> -	{ /* sentinel */ }
> -};
> -
>  MODULE_DEVICE_TABLE(of, brcm_usb_dt_ids);
>  
>  static struct platform_driver brcm_usb_driver = {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
