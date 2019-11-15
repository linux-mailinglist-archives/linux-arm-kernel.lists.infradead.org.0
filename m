Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 167FFFE52F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 19:45:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7JP9Kk7IUB1vVFvxEexwuTMlZqkMtAc1UjxbABQMOWQ=; b=BZsEARadA2q1Y8Q1c3+XR4VRqL
	SD3j37L1uk+MF6YrvH4JJcoEQylnpSO9kEJZz3ej9WOx7Gq5SCnOyO0r0qCNnAk8AoPvIfyPqKMDz
	xyt7k3ShPNl7ejS63v3SjtQ2/hlEkBO9pb1nBVYuBGbAyyLknQFd8+lxzO9XTq+2vG9HuyknYwOAL
	yuI9WTGBE+KbTUnxdRfUznvXo/jNWo778z6+At/+TSI7YIskry1B0+aC9356ix01YfhpHYtdisRm9
	AoKDfT8j+9G9DI89m9vwRZ9gCw/jxsmlwr8DUvBM1yhwPuckgJ6iWZ5su9uVnMMc04VFkjb5gyGkk
	OM5UuRMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVgbI-0005oL-Ph; Fri, 15 Nov 2019 18:45:44 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVgZP-0003fD-5P
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 18:43:49 +0000
Received: by mail-wm1-x341.google.com with SMTP id b11so10630270wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 10:43:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AJUCH/K/W4ArkzBqFTVeXPUp7ehqV40f+G+epdnvqqU=;
 b=ZAq2qk4o2IdIEApHSybbkmhFFOoX1Ry3aS1yos+P8Ypy3YVcH0aU1pTsIWC5rujel2
 QVQzBYPuwib9Bmrkgx6gqZimn6unQpEm9NvyIiQKJfqhnoFU+4bli6vcSRVcDsj7VVkd
 QUgTV3SvFAAgvpnoLokR4gIVay70LN4hIEtyb5UigeRlXx5mL2hFxnrRNakzVPfV/55o
 6LfiIWdl/h2fFrb7No57x/su8c5dDu71QAQvcKxPcHY7aYOQBFzqwsElr/Pi9RysHPBz
 xKe6orK3PSLUpaU1lCy2WVpGSKtRh6eAEfr3AnKjjXrQjUiCa9ZrGJEWY6zdgYdvMqhj
 he8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AJUCH/K/W4ArkzBqFTVeXPUp7ehqV40f+G+epdnvqqU=;
 b=SZkjHLaC/bHR+BtY2H3CAT+jy+nPeAFiKrjFbPrzZU7ClBYO1ipiwIIEjn6LbYeL8E
 LipMVYfYI7ZexRbsngfg4H9bPZCsG7I/BNKALiIK/YX5EeknsebvEfpQ68G8sIsc7cNE
 A34PbZ8rkrYOqfGGdjr6lp733IO8DCZSmbjaU7ctkVrOH0b1FF+dO9TKZbDPjepASySt
 U/RMXbCMMAzle7Ck5Wpmh72YfTPlZ2n35qOYGWKBKPePwTYCIbQ9t+2cjXGNGW/QZHdt
 nWs5ayJjtJ241RtYeMAdh0q+hsfV+7bYvKWSjxtqfzkpqbFOmiPx0ldycd6KHHufB5BJ
 33SQ==
X-Gm-Message-State: APjAAAUkaXMpSL2kWhP9IHvaYaox2uFcQvZQU8HMK9KHSTPAVompP6B9
 HE9MlkCvgllxvL6Xffwk7V1jm55GN9s=
X-Google-Smtp-Source: APXvYqxTKsfrkB/M3WwAIAO10Xg5xlqf+/7FUAfvGI0sPlxCPRMCg0G0YMxUxlAk1Q8UtrmoUARk4g==
X-Received: by 2002:a1c:7f94:: with SMTP id a142mr15738636wmd.33.1573843425232; 
 Fri, 15 Nov 2019 10:43:45 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id g138sm2620989wmg.11.2019.11.15.10.43.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 10:43:44 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 07/13] phy: usb: Add support for new Synopsis USB
 controller on the 7216
Date: Fri, 15 Nov 2019 13:42:17 -0500
Message-Id: <20191115184223.41504-8-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115184223.41504-1-alcooperx@gmail.com>
References: <20191115184223.41504-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_104347_235794_E81BDF5B 
X-CRM114-Status: GOOD (  24.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Florian Fainelli <f.fainelli@gmail.com>, Al Cooper <alcooperx@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 7216 has the new USB XHCI controller from Synopsis. While
this new controller and the PHY are similar to the STB versions,
the major differences are:

- Many of the registers and fields in the CTRL block have been
  removed or changed.
- A new set of Synopsis control registers, BCHP_USB_XHCI_GBL, were
  added.
- MDIO functionality has been replaced with direct access registers
  in the BCHP_USB_XHCI_GBL block.
- Power up PHY defaults that had to be changed by MDIO in previous
  chips will now power up with the correct defaults.

A new init module was created for this new Synopsis USB controller.
A new compatible string was added and the driver will dispatch
into one of two init modules based on it. A "reg-names" field was
added so the driver can more easily get optional registers.
A DT bindings document was also added for this driver.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/Makefile                 |   2 +-
 .../phy/broadcom/phy-brcm-usb-init-synopsis.c | 171 ++++++++++++++++++
 drivers/phy/broadcom/phy-brcm-usb-init.h      |   2 +
 drivers/phy/broadcom/phy-brcm-usb.c           |  70 +++++--
 4 files changed, 227 insertions(+), 18 deletions(-)
 create mode 100644 drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c

diff --git a/drivers/phy/broadcom/Makefile b/drivers/phy/broadcom/Makefile
index f453c7d3ffff..88523e2be861 100644
--- a/drivers/phy/broadcom/Makefile
+++ b/drivers/phy/broadcom/Makefile
@@ -8,7 +8,7 @@ obj-$(CONFIG_PHY_NS2_USB_DRD)		+= phy-bcm-ns2-usbdrd.o
 obj-$(CONFIG_PHY_BRCM_SATA)		+= phy-brcm-sata.o
 obj-$(CONFIG_PHY_BRCM_USB)		+= phy-brcm-usb-dvr.o
 
-phy-brcm-usb-dvr-objs := phy-brcm-usb.o phy-brcm-usb-init.o
+phy-brcm-usb-dvr-objs := phy-brcm-usb.o phy-brcm-usb-init.o phy-brcm-usb-init-synopsis.o
 
 obj-$(CONFIG_PHY_BCM_SR_PCIE)		+= phy-bcm-sr-pcie.o
 obj-$(CONFIG_PHY_BCM_SR_USB)		+= phy-bcm-sr-usb.o
diff --git a/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c b/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
new file mode 100644
index 000000000000..57663492b228
--- /dev/null
+++ b/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
@@ -0,0 +1,171 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2018, Broadcom */
+
+/*
+ * This module contains USB PHY initialization for power up and S3 resume
+ * for newer Synopsis based USB hardware first used on the bcm7216.
+ */
+
+#include <linux/delay.h>
+#include <linux/io.h>
+
+#include <linux/soc/brcmstb/brcmstb.h>
+#include "phy-brcm-usb-init.h"
+
+/* Register definitions for the USB CTRL block */
+#define USB_CTRL_SETUP			0x00
+#define   USB_CTRL_SETUP_STRAP_IPP_SEL_MASK		0x02000000
+#define   USB_CTRL_SETUP_SCB2_EN_MASK			0x00008000
+#define   USB_CTRL_SETUP_SCB1_EN_MASK			0x00004000
+#define   USB_CTRL_SETUP_SOFT_SHUTDOWN_MASK		0x00000200
+#define   USB_CTRL_SETUP_IPP_MASK			0x00000020
+#define   USB_CTRL_SETUP_IOC_MASK			0x00000010
+#define USB_CTRL_USB_PM			0x04
+#define   USB_CTRL_USB_PM_USB_PWRDN_MASK		0x80000000
+#define   USB_CTRL_USB_PM_SOFT_RESET_MASK		0x40000000
+#define   USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK		0x00800000
+#define   USB_CTRL_USB_PM_XHC_SOFT_RESETB_MASK		0x00400000
+#define USB_CTRL_USB_PM_STATUS		0x08
+#define USB_CTRL_USB_DEVICE_CTL1	0x10
+#define   USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_MASK	0x00000003
+
+
+static void xhci_soft_reset(struct brcm_usb_init_params *params,
+			int on_off)
+{
+	void __iomem *ctrl = params->ctrl_regs;
+
+	/* Assert reset */
+	if (on_off)
+		USB_CTRL_UNSET(ctrl, USB_PM, XHC_SOFT_RESETB);
+	/* De-assert reset */
+	else
+		USB_CTRL_SET(ctrl, USB_PM, XHC_SOFT_RESETB);
+}
+
+static void usb_init_ipp(struct brcm_usb_init_params *params)
+{
+	void __iomem *ctrl = params->ctrl_regs;
+	u32 reg;
+	u32 orig_reg;
+
+	pr_debug("%s\n", __func__);
+
+	orig_reg = reg = brcm_usb_readl(USB_CTRL_REG(ctrl, SETUP));
+	if (params->ipp != 2)
+		/* override ipp strap pin (if it exits) */
+		reg &= ~(USB_CTRL_MASK(SETUP, STRAP_IPP_SEL));
+
+	/* Override the default OC and PP polarity */
+	reg &= ~(USB_CTRL_MASK(SETUP, IPP) | USB_CTRL_MASK(SETUP, IOC));
+	if (params->ioc)
+		reg |= USB_CTRL_MASK(SETUP, IOC);
+	if (params->ipp == 1)
+		reg |= USB_CTRL_MASK(SETUP, IPP);
+	brcm_usb_writel(reg, USB_CTRL_REG(ctrl, SETUP));
+
+	/*
+	 * If we're changing IPP, make sure power is off long enough
+	 * to turn off any connected devices.
+	 */
+	if ((reg ^ orig_reg) & USB_CTRL_MASK(SETUP, IPP))
+		msleep(50);
+}
+
+static void usb_init_common(struct brcm_usb_init_params *params)
+{
+	u32 reg;
+	void __iomem *ctrl = params->ctrl_regs;
+
+	pr_debug("%s\n", __func__);
+
+	USB_CTRL_UNSET(ctrl, USB_PM, USB_PWRDN);
+	/* 1 millisecond - for USB clocks to settle down */
+	usleep_range(1000, 2000);
+
+	if (USB_CTRL_MASK(USB_DEVICE_CTL1, PORT_MODE)) {
+		reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
+		reg &= ~USB_CTRL_MASK(USB_DEVICE_CTL1, PORT_MODE);
+		reg |= params->mode;
+		brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
+	}
+	switch (params->mode) {
+	case USB_CTLR_MODE_HOST:
+		USB_CTRL_UNSET(ctrl, USB_PM, BDC_SOFT_RESETB);
+		break;
+	default:
+		USB_CTRL_UNSET(ctrl, USB_PM, BDC_SOFT_RESETB);
+		USB_CTRL_SET(ctrl, USB_PM, BDC_SOFT_RESETB);
+		break;
+	}
+}
+
+static void usb_init_xhci(struct brcm_usb_init_params *params)
+{
+	pr_debug("%s\n", __func__);
+
+	xhci_soft_reset(params, 0);
+}
+
+static void usb_uninit_common(struct brcm_usb_init_params *params)
+{
+	void __iomem *ctrl = params->ctrl_regs;
+
+	pr_debug("%s\n", __func__);
+
+	USB_CTRL_SET(ctrl, USB_PM, USB_PWRDN);
+
+}
+
+static void usb_uninit_xhci(struct brcm_usb_init_params *params)
+{
+
+	pr_debug("%s\n", __func__);
+
+	xhci_soft_reset(params, 1);
+}
+
+static int usb_get_dual_select(struct brcm_usb_init_params *params)
+{
+	void __iomem *ctrl = params->ctrl_regs;
+	u32 reg = 0;
+
+	pr_debug("%s\n", __func__);
+
+	reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
+	reg &= USB_CTRL_MASK(USB_DEVICE_CTL1, PORT_MODE);
+	return reg;
+}
+
+static void usb_set_dual_select(struct brcm_usb_init_params *params, int mode)
+{
+	void __iomem *ctrl = params->ctrl_regs;
+	u32 reg;
+
+	pr_debug("%s\n", __func__);
+
+	reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
+	reg &= ~USB_CTRL_MASK(USB_DEVICE_CTL1, PORT_MODE);
+	reg |= mode;
+	brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
+}
+
+
+static const struct brcm_usb_init_ops bcm7216_ops = {
+	.init_ipp = usb_init_ipp,
+	.init_common = usb_init_common,
+	.init_xhci = usb_init_xhci,
+	.uninit_common = usb_uninit_common,
+	.uninit_xhci = usb_uninit_xhci,
+	.get_dual_select = usb_get_dual_select,
+	.set_dual_select = usb_set_dual_select,
+};
+
+void brcm_usb_dvr_init_7216(struct brcm_usb_init_params *params)
+{
+
+	pr_debug("%s\n", __func__);
+
+	params->family_name = "7216";
+	params->ops = &bcm7216_ops;
+}
diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.h b/drivers/phy/broadcom/phy-brcm-usb-init.h
index 8fab5ff76b2b..571ccae48e3f 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.h
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.h
@@ -43,6 +43,7 @@ struct brcm_usb_init_ops {
 struct  brcm_usb_init_params {
 	void __iomem *ctrl_regs;
 	void __iomem *xhci_ec_regs;
+	void __iomem *xhci_gbl_regs;
 	int ioc;
 	int ipp;
 	int mode;
@@ -55,6 +56,7 @@ struct  brcm_usb_init_params {
 };
 
 void brcm_usb_dvr_init_7445(struct brcm_usb_init_params *params);
+void brcm_usb_dvr_init_7216(struct brcm_usb_init_params *params);
 
 static inline u32 brcm_usb_readl(void __iomem *addr)
 {
diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 9d93c5599511..64379ede480e 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -241,6 +241,15 @@ static const struct attribute_group brcm_usb_phy_group = {
 	.attrs = brcm_usb_phy_attrs,
 };
 
+static const struct of_device_id brcm_usb_dt_ids[] = {
+	{
+		.compatible = "brcm,bcm7216-usb-phy",
+		.data = &brcm_usb_dvr_init_7216,
+	},
+	{ .compatible = "brcm,brcmstb-usb-phy" },
+	{ /* sentinel */ }
+};
+
 static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 				 struct brcm_usb_phy_data *priv,
 				 struct device_node *dn)
@@ -316,13 +325,16 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 
 static int brcm_usb_phy_probe(struct platform_device *pdev)
 {
-	struct resource *res;
+	struct resource *res_ctrl;
+	struct resource *res_xhciec = NULL;
+	struct resource *res_xhcigbl = NULL;
 	struct device *dev = &pdev->dev;
 	struct brcm_usb_phy_data *priv;
 	struct phy_provider *phy_provider;
 	struct device_node *dn = pdev->dev.of_node;
 	int err;
 	const char *mode;
+	const struct of_device_id *match;
 
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -331,30 +343,59 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 
 	priv->ini.family_id = brcmstb_get_family_id();
 	priv->ini.product_id = brcmstb_get_product_id();
-	brcm_usb_dvr_init_7445(&priv->ini);
+
+	match = of_match_node(brcm_usb_dt_ids, dev->of_node);
+	if (match && match->data) {
+		void (*dvr_init)(struct brcm_usb_init_params *params);
+
+		dvr_init = match->data;
+		(*dvr_init)(&priv->ini);
+	} else {
+		brcm_usb_dvr_init_7445(&priv->ini);
+	}
+
 	dev_dbg(dev, "Best mapping table is for %s\n",
 		priv->ini.family_name);
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res) {
-		dev_err(dev, "can't get USB_CTRL base address\n");
-		return -EINVAL;
+
+	/* Newer DT node has reg-names. xhci_ec and xhci_gbl are optional. */
+	res_ctrl = platform_get_resource_byname(pdev, IORESOURCE_MEM, "ctrl");
+	if (res_ctrl != NULL) {
+		res_xhciec = platform_get_resource_byname(pdev,
+							  IORESOURCE_MEM,
+							  "xhci_ec");
+		res_xhcigbl = platform_get_resource_byname(pdev,
+							   IORESOURCE_MEM,
+							   "xhci_gbl");
+	} else {
+		/* Older DT node without reg-names, use index */
+		res_ctrl = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+		if (res_ctrl == NULL) {
+			dev_err(dev, "can't get CTRL base address\n");
+			return -EINVAL;
+		}
+		res_xhciec = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 	}
-	priv->ini.ctrl_regs = devm_ioremap_resource(dev, res);
+	priv->ini.ctrl_regs = devm_ioremap_resource(dev, res_ctrl);
 	if (IS_ERR(priv->ini.ctrl_regs)) {
 		dev_err(dev, "can't map CTRL register space\n");
 		return -EINVAL;
 	}
-
-	/* The XHCI EC registers are optional */
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
-	if (res) {
+	if (res_xhciec) {
 		priv->ini.xhci_ec_regs =
-			devm_ioremap_resource(dev, res);
+			devm_ioremap_resource(dev, res_xhciec);
 		if (IS_ERR(priv->ini.xhci_ec_regs)) {
 			dev_err(dev, "can't map XHCI EC register space\n");
 			return -EINVAL;
 		}
 	}
+	if (res_xhcigbl) {
+		priv->ini.xhci_gbl_regs =
+			devm_ioremap_resource(dev, res_xhcigbl);
+		if (IS_ERR(priv->ini.xhci_gbl_regs)) {
+			dev_err(dev, "can't map XHCI Global register space\n");
+			return -EINVAL;
+		}
+	}
 
 	of_property_read_u32(dn, "brcm,ipp", &priv->ini.ipp);
 	of_property_read_u32(dn, "brcm,ioc", &priv->ini.ioc);
@@ -480,11 +521,6 @@ static const struct dev_pm_ops brcm_usb_phy_pm_ops = {
 	SET_LATE_SYSTEM_SLEEP_PM_OPS(brcm_usb_phy_suspend, brcm_usb_phy_resume)
 };
 
-static const struct of_device_id brcm_usb_dt_ids[] = {
-	{ .compatible = "brcm,brcmstb-usb-phy" },
-	{ /* sentinel */ }
-};
-
 MODULE_DEVICE_TABLE(of, brcm_usb_dt_ids);
 
 static struct platform_driver brcm_usb_driver = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
