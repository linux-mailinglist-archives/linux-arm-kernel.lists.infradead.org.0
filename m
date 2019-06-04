Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9ABC345B3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 13:41:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjdDI8M5W+YxcbBRtbw38miuAtOctQcCGqdWg/EosJA=; b=RgLcV9u/WgXtMT
	4/L5V5lLWDSLY2WkwNF+YsTQWM/gn9TyRgTCMdOHpkUB+eianSVJUC5usANR5eP0zG8BkCWHKHpNg
	qnc9uLUG8T0O66BAg1tLjvyqMTHYzqNtBk0GGgoTCLKVgTLADvtS94vbCC61EIFYTjjG0oBmasYe4
	OHvhCVq7PoEc01fFV/JJCmwNP7aJXpJNeZhFyQT811oDr4jePW754ovGZiHBgo9YAvX88bMJ9yy9F
	PRfEb+79TYEIwKnBd0/824sYm8WGL7Y37iMewHtqry6/mBMZUS75hj6YEkO73kkB3L5go+og3ccjx
	uhLNNg9SezbzN4zd3kqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY7oo-0005tp-1G; Tue, 04 Jun 2019 11:41:30 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY7o4-00050q-6P; Tue, 04 Jun 2019 11:40:54 +0000
X-UUID: af1084cd0d79483d84aaaa63e1e5dc92-20190604
X-UUID: af1084cd0d79483d84aaaa63e1e5dc92-20190604
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <min.guo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 643189707; Tue, 04 Jun 2019 03:40:01 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 04:39:58 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 19:39:54 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 4 Jun 2019 19:39:54 +0800
From: <min.guo@mediatek.com>
To: Bin Liu <b-liu@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 6/6] usb: musb: Add support for MediaTek musb controller
Date: Tue, 4 Jun 2019 19:39:19 +0800
Message-ID: <1559648359-6569-7-git-send-email-min.guo@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1559648359-6569-1-git-send-email-min.guo@mediatek.com>
References: <1559648359-6569-1-git-send-email-min.guo@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_044044_509905_EDF78877 
X-CRM114-Status: GOOD (  21.01  )
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
X-Mailman-Version: 2.1.21
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
 Yonglong Wu <yonglong.wu@mediatek.com>, hdegoede@redhat.com, tony@atomide.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Alan Stern <stern@rowland.harvard.edu>, Min Guo <min.guo@mediatek.com>,
 chunfeng.yun@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Min Guo <min.guo@mediatek.com>

This adds support for MediaTek musb controller in
host, peripheral and otg mode.
There are some quirk of MediaTek musb controller, such as:
 -W1C interrupt status registers
 -Private data toggle registers
 -No dedicated DMA interrupt line

Signed-off-by: Min Guo <min.guo@mediatek.com>
Signed-off-by: Yonglong Wu <yonglong.wu@mediatek.com>
---
changes in v6:
1. Add of_platform_populate in probe to populate connector platform_devices
   from device tree data
2. Replace extcon with usb role switch mechanism to support dual-role mode
3. Remove set vbus function

changes in v5:
1. Replace musb_readb() with musb_clearb() to clear common/tx/rx pending interrupts
2. Make musb_clearb/w() return the value of musb_readb/w()
3. Add driver to get child nodes of usb connector and extcon device

changes in v4:
1. no changes

changes in v3:
suggested by Bin:
1. Remove 'u8/u16 data' parameter in clearb/w() hooks
2. Replace musb_readb/w() with musb_clearb/w() to clear interrupts status

changes in v2:
suggested by Bin:
1. Add summarize of MediaTek musb controller differences in the commit log
2. Add "|| COMPILE_TEST" in Kconfig
3. Move MediaTek's private toggle registers from musb_regs.h to mediatek.c
4. Replace musb_readl() with musb_readw() to read 16bit toggle register
---
 drivers/usb/musb/Kconfig    |   9 +-
 drivers/usb/musb/Makefile   |   1 +
 drivers/usb/musb/mediatek.c | 582 ++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 591 insertions(+), 1 deletion(-)
 create mode 100644 drivers/usb/musb/mediatek.c

diff --git a/drivers/usb/musb/Kconfig b/drivers/usb/musb/Kconfig
index 52f8e2b..767c5da 100644
--- a/drivers/usb/musb/Kconfig
+++ b/drivers/usb/musb/Kconfig
@@ -116,6 +116,13 @@ config USB_MUSB_JZ4740
 	depends on USB_MUSB_GADGET
 	depends on USB=n || USB_OTG_BLACKLIST_HUB
 
+config USB_MUSB_MEDIATEK
+	tristate "MediaTek platforms"
+	depends on ARCH_MEDIATEK || COMPILE_TEST
+	depends on NOP_USB_XCEIV
+	depends on GENERIC_PHY
+	select USB_ROLE_SWITCH
+
 config USB_MUSB_AM335X_CHILD
 	tristate
 
@@ -142,7 +149,7 @@ config USB_UX500_DMA
 
 config USB_INVENTRA_DMA
 	bool 'Inventra'
-	depends on USB_MUSB_OMAP2PLUS
+	depends on USB_MUSB_OMAP2PLUS || USB_MUSB_MEDIATEK
 	help
 	  Enable DMA transfers using Mentor's engine.
 
diff --git a/drivers/usb/musb/Makefile b/drivers/usb/musb/Makefile
index 3a88c79..63d82d0 100644
--- a/drivers/usb/musb/Makefile
+++ b/drivers/usb/musb/Makefile
@@ -24,6 +24,7 @@ obj-$(CONFIG_USB_MUSB_DA8XX)			+= da8xx.o
 obj-$(CONFIG_USB_MUSB_UX500)			+= ux500.o
 obj-$(CONFIG_USB_MUSB_JZ4740)			+= jz4740.o
 obj-$(CONFIG_USB_MUSB_SUNXI)			+= sunxi.o
+obj-$(CONFIG_USB_MUSB_MEDIATEK)      		+= mediatek.o
 
 
 obj-$(CONFIG_USB_MUSB_AM335X_CHILD)		+= musb_am335x.o
diff --git a/drivers/usb/musb/mediatek.c b/drivers/usb/musb/mediatek.c
new file mode 100644
index 0000000..3df8d7e
--- /dev/null
+++ b/drivers/usb/musb/mediatek.c
@@ -0,0 +1,582 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 MediaTek Inc.
+ *
+ * Author:
+ *  Min Guo <min.guo@mediatek.com>
+ *  Yonglong Wu <yonglong.wu@mediatek.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/dma-mapping.h>
+#include <linux/module.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/usb/role.h>
+#include <linux/usb/usb_phy_generic.h>
+#include "musb_core.h"
+#include "musb_dma.h"
+
+#define USB_L1INTS	0x00a0
+#define USB_L1INTM	0x00a4
+#define MTK_MUSB_TXFUNCADDR	0x0480
+
+/* MediaTek controller toggle enable and status reg */
+#define MUSB_RXTOG		0x80
+#define MUSB_RXTOGEN		0x82
+#define MUSB_TXTOG		0x84
+#define MUSB_TXTOGEN		0x86
+#define MTK_TOGGLE_EN		GENMASK(15, 0)
+
+#define TX_INT_STATUS		BIT(0)
+#define RX_INT_STATUS		BIT(1)
+#define USBCOM_INT_STATUS		BIT(2)
+#define DMA_INT_STATUS		BIT(3)
+
+#define DMA_INTR_STATUS_MSK		GENMASK(7, 0)
+#define DMA_INTR_UNMASK_SET_MSK	GENMASK(31, 24)
+
+struct mtk_glue {
+	struct device *dev;
+	struct musb *musb;
+	struct platform_device *musb_pdev;
+	struct platform_device *usb_phy;
+	struct phy *phy;
+	struct usb_phy *xceiv;
+	enum phy_mode phy_mode;
+	struct clk *main;
+	struct clk *mcu;
+	struct clk *univpll;
+	enum usb_role role;
+	struct usb_role_switch *role_sw;
+};
+
+static int mtk_musb_clks_get(struct mtk_glue *glue)
+{
+	struct device *dev = glue->dev;
+
+	glue->main = devm_clk_get(dev, "main");
+	if (IS_ERR(glue->main)) {
+		dev_err(dev, "fail to get main clock\n");
+		return PTR_ERR(glue->main);
+	}
+
+	glue->mcu = devm_clk_get(dev, "mcu");
+	if (IS_ERR(glue->mcu)) {
+		dev_err(dev, "fail to get mcu clock\n");
+		return PTR_ERR(glue->mcu);
+	}
+
+	glue->univpll = devm_clk_get(dev, "univpll");
+	if (IS_ERR(glue->univpll)) {
+		dev_err(dev, "fail to get univpll clock\n");
+		return PTR_ERR(glue->univpll);
+	}
+
+	return 0;
+}
+
+static int mtk_musb_clks_enable(struct mtk_glue *glue)
+{
+	int ret;
+
+	ret = clk_prepare_enable(glue->main);
+	if (ret) {
+		dev_err(glue->dev, "failed to enable main clock\n");
+		goto err_main_clk;
+	}
+
+	ret = clk_prepare_enable(glue->mcu);
+	if (ret) {
+		dev_err(glue->dev, "failed to enable mcu clock\n");
+		goto err_mcu_clk;
+	}
+
+	ret = clk_prepare_enable(glue->univpll);
+	if (ret) {
+		dev_err(glue->dev, "failed to enable univpll clock\n");
+		goto err_univpll_clk;
+	}
+
+	return 0;
+
+err_univpll_clk:
+	clk_disable_unprepare(glue->mcu);
+err_mcu_clk:
+	clk_disable_unprepare(glue->main);
+err_main_clk:
+	return ret;
+}
+
+static void mtk_musb_clks_disable(struct mtk_glue *glue)
+{
+	clk_disable_unprepare(glue->univpll);
+	clk_disable_unprepare(glue->mcu);
+	clk_disable_unprepare(glue->main);
+}
+
+static int musb_usb_role_sx_set(struct device *dev, enum usb_role role)
+{
+	struct mtk_glue *glue = dev_get_drvdata(dev);
+	struct musb *musb = glue->musb;
+	u8 devctl = readb(musb->mregs + MUSB_DEVCTL);
+	enum usb_role new_role;
+
+	if (role == glue->role)
+		return 0;
+
+	switch (role) {
+	case USB_ROLE_HOST:
+		musb->xceiv->otg->state = OTG_STATE_A_WAIT_VRISE;
+		glue->phy_mode = PHY_MODE_USB_HOST;
+		new_role = USB_ROLE_HOST;
+		if (glue->role == USB_ROLE_NONE)
+			phy_power_on(glue->phy);
+
+		devctl |= MUSB_DEVCTL_SESSION;
+		musb_writeb(musb->mregs, MUSB_DEVCTL, devctl);
+		MUSB_HST_MODE(musb);
+		break;
+	case USB_ROLE_DEVICE:
+		musb->xceiv->otg->state = OTG_STATE_B_IDLE;
+		glue->phy_mode = PHY_MODE_USB_DEVICE;
+		new_role = USB_ROLE_DEVICE;
+		devctl &= ~MUSB_DEVCTL_SESSION;
+		musb_writeb(musb->mregs, MUSB_DEVCTL, devctl);
+		if (glue->role == USB_ROLE_NONE)
+			phy_power_on(glue->phy);
+
+		MUSB_DEV_MODE(musb);
+		break;
+	case USB_ROLE_NONE:
+		glue->phy_mode = PHY_MODE_USB_OTG;
+		new_role = USB_ROLE_NONE;
+		devctl &= ~MUSB_DEVCTL_SESSION;
+		musb_writeb(musb->mregs, MUSB_DEVCTL, devctl);
+		if (glue->role != USB_ROLE_NONE)
+			phy_power_off(glue->phy);
+
+		break;
+	default:
+		dev_err(glue->dev, "Invalid State\n");
+		return -EINVAL;
+	}
+
+	glue->role = new_role;
+	phy_set_mode(glue->phy, glue->phy_mode);
+
+	return 0;
+}
+
+static enum usb_role musb_usb_role_sx_get(struct device *dev)
+{
+	struct mtk_glue *glue = dev_get_drvdata(dev);
+
+	return glue->role;
+}
+
+static int mtk_otg_switch_init(struct mtk_glue *glue)
+{
+	struct usb_role_switch_desc role_sx_desc = { 0 };
+
+	role_sx_desc.set = musb_usb_role_sx_set;
+	role_sx_desc.get = musb_usb_role_sx_get;
+	role_sx_desc.fwnode = dev_fwnode(glue->dev);
+	glue->role_sw = usb_role_switch_register(glue->dev, &role_sx_desc);
+
+	return PTR_ERR_OR_ZERO(glue->role_sw);
+}
+
+static void mtk_otg_switch_exit(struct mtk_glue *glue)
+{
+	return usb_role_switch_unregister(glue->role_sw);
+}
+
+static irqreturn_t generic_interrupt(int irq, void *__hci)
+{
+	unsigned long flags;
+	irqreturn_t retval = IRQ_NONE;
+	struct musb *musb = __hci;
+
+	spin_lock_irqsave(&musb->lock, flags);
+	musb->int_usb = musb_clearb(musb->mregs, MUSB_INTRUSB);
+	musb->int_rx = musb_clearw(musb->mregs, MUSB_INTRRX);
+	musb->int_tx = musb_clearw(musb->mregs, MUSB_INTRTX);
+
+	if (musb->int_usb || musb->int_tx || musb->int_rx)
+		retval = musb_interrupt(musb);
+
+	spin_unlock_irqrestore(&musb->lock, flags);
+
+	return retval;
+}
+
+static irqreturn_t mtk_musb_interrupt(int irq, void *dev_id)
+{
+	irqreturn_t retval = IRQ_NONE;
+	struct musb *musb = (struct musb *)dev_id;
+	u32 l1_ints;
+
+	l1_ints = musb_readl(musb->mregs, USB_L1INTS) &
+			musb_readl(musb->mregs, USB_L1INTM);
+
+	if (l1_ints & (TX_INT_STATUS | RX_INT_STATUS | USBCOM_INT_STATUS))
+		retval = generic_interrupt(irq, musb);
+
+#if defined(CONFIG_USB_INVENTRA_DMA)
+	if (l1_ints & DMA_INT_STATUS)
+		retval = dma_controller_irq(irq, musb->dma_controller);
+#endif
+	return retval;
+}
+
+static u32 mtk_musb_busctl_offset(u8 epnum, u16 offset)
+{
+	return MTK_MUSB_TXFUNCADDR + offset + 8 * epnum;
+}
+
+static u8 mtk_musb_clearb(void __iomem *addr, unsigned int offset)
+{
+	u8 data;
+
+	/* W1C */
+	data = musb_readb(addr, offset);
+	musb_writeb(addr, offset, data);
+	return data;
+}
+
+static u16 mtk_musb_clearw(void __iomem *addr, unsigned int offset)
+{
+	u16 data;
+
+	/* W1C */
+	data = musb_readw(addr, offset);
+	musb_writew(addr, offset, data);
+	return data;
+}
+
+static int mtk_musb_set_mode(struct musb *musb, u8 mode)
+{
+	struct device *dev = musb->controller;
+	struct mtk_glue *glue = dev_get_drvdata(dev->parent);
+	enum phy_mode new_mode;
+	enum usb_role new_role;
+
+	switch (mode) {
+	case MUSB_HOST:
+		new_mode = PHY_MODE_USB_HOST;
+		new_role = USB_ROLE_HOST;
+		break;
+	case MUSB_PERIPHERAL:
+		new_mode = PHY_MODE_USB_DEVICE;
+		new_role = USB_ROLE_DEVICE;
+		break;
+	case MUSB_OTG:
+		new_mode = PHY_MODE_USB_OTG;
+		new_role = USB_ROLE_NONE;
+		break;
+	default:
+		dev_err(glue->dev, "Invalid mode request\n");
+		return -EINVAL;
+	}
+
+	if (glue->phy_mode == new_mode)
+		return 0;
+
+	if (musb->port_mode != MUSB_OTG) {
+		dev_err(glue->dev, "Does not support changing modes\n");
+		return -EINVAL;
+	}
+
+	glue->role = new_role;
+	musb_usb_role_sx_set(dev, glue->role);
+	return 0;
+}
+
+static int mtk_musb_init(struct musb *musb)
+{
+	struct device *dev = musb->controller;
+	struct mtk_glue *glue = dev_get_drvdata(dev->parent);
+	int ret;
+
+	glue->musb = musb;
+	musb->phy = glue->phy;
+	musb->xceiv = glue->xceiv;
+	musb->is_host = false;
+	musb->isr = mtk_musb_interrupt;
+
+	/* Set TX/RX toggle enable */
+	musb_writew(musb->mregs, MUSB_TXTOGEN, MTK_TOGGLE_EN);
+	musb_writew(musb->mregs, MUSB_RXTOGEN, MTK_TOGGLE_EN);
+
+	if (musb->port_mode == MUSB_OTG) {
+		ret = mtk_otg_switch_init(glue);
+		if (ret)
+			return ret;
+	}
+
+	ret = phy_init(glue->phy);
+	if (ret)
+		goto err_phy_init;
+
+	ret = phy_power_on(glue->phy);
+	if (ret)
+		goto err_phy_power_on;
+
+	phy_set_mode(glue->phy, glue->phy_mode);
+
+#if defined(CONFIG_USB_INVENTRA_DMA)
+	musb_writel(musb->mregs, MUSB_HSDMA_INTR,
+		    DMA_INTR_STATUS_MSK | DMA_INTR_UNMASK_SET_MSK);
+#endif
+	musb_writel(musb->mregs, USB_L1INTM, TX_INT_STATUS | RX_INT_STATUS |
+		    USBCOM_INT_STATUS | DMA_INT_STATUS);
+	return 0;
+
+err_phy_power_on:
+	phy_exit(glue->phy);
+err_phy_init:
+	mtk_otg_switch_exit(glue);
+	return ret;
+}
+
+static u16 mtk_musb_get_toggle(struct musb_qh *qh, int is_out)
+{
+	struct musb *musb = qh->hw_ep->musb;
+	u8 epnum = qh->hw_ep->epnum;
+	u16 toggle;
+
+	toggle = musb_readw(musb->mregs, is_out ? MUSB_TXTOG : MUSB_RXTOG);
+	return toggle & (1 << epnum);
+}
+
+static u16 mtk_musb_set_toggle(struct musb_qh *qh, int is_out, struct urb *urb)
+{
+	struct musb *musb = qh->hw_ep->musb;
+	u8 epnum = qh->hw_ep->epnum;
+	u16 value, toggle;
+
+	toggle = usb_gettoggle(urb->dev, qh->epnum, is_out);
+
+	if (is_out) {
+		value = musb_readw(musb->mregs, MUSB_TXTOG);
+		value |= toggle << epnum;
+		musb_writew(musb->mregs, MUSB_TXTOG, value);
+	} else {
+		value = musb_readw(musb->mregs, MUSB_RXTOG);
+		value |= toggle << epnum;
+		musb_writew(musb->mregs, MUSB_RXTOG, value);
+	}
+
+	return 0;
+}
+
+static int mtk_musb_exit(struct musb *musb)
+{
+	struct device *dev = musb->controller;
+	struct mtk_glue *glue = dev_get_drvdata(dev->parent);
+
+	mtk_otg_switch_exit(glue);
+	phy_power_off(glue->phy);
+	phy_exit(glue->phy);
+	mtk_musb_clks_disable(glue);
+
+	pm_runtime_put_sync(dev);
+	pm_runtime_disable(dev);
+	return 0;
+}
+
+static const struct musb_platform_ops mtk_musb_ops = {
+	.quirks = MUSB_DMA_INVENTRA,
+	.init = mtk_musb_init,
+	.get_toggle = mtk_musb_get_toggle,
+	.set_toggle = mtk_musb_set_toggle,
+	.exit = mtk_musb_exit,
+#ifdef CONFIG_USB_INVENTRA_DMA
+	.dma_init = musbhs_dma_controller_create_noirq,
+	.dma_exit = musbhs_dma_controller_destroy,
+#endif
+	.clearb = mtk_musb_clearb,
+	.clearw = mtk_musb_clearw,
+	.busctl_offset = mtk_musb_busctl_offset,
+	.set_mode = mtk_musb_set_mode,
+};
+
+#define MTK_MUSB_MAX_EP_NUM	8
+#define MTK_MUSB_RAM_BITS	11
+
+static struct musb_fifo_cfg mtk_musb_mode_cfg[] = {
+	{ .hw_ep_num = 1, .style = FIFO_TX, .maxpacket = 512, },
+	{ .hw_ep_num = 1, .style = FIFO_RX, .maxpacket = 512, },
+	{ .hw_ep_num = 2, .style = FIFO_TX, .maxpacket = 512, },
+	{ .hw_ep_num = 2, .style = FIFO_RX, .maxpacket = 512, },
+	{ .hw_ep_num = 3, .style = FIFO_TX, .maxpacket = 512, },
+	{ .hw_ep_num = 3, .style = FIFO_RX, .maxpacket = 512, },
+	{ .hw_ep_num = 4, .style = FIFO_TX, .maxpacket = 512, },
+	{ .hw_ep_num = 4, .style = FIFO_RX, .maxpacket = 512, },
+	{ .hw_ep_num = 5, .style = FIFO_TX, .maxpacket = 512, },
+	{ .hw_ep_num = 5, .style = FIFO_RX, .maxpacket = 512, },
+	{ .hw_ep_num = 6, .style = FIFO_TX, .maxpacket = 1024, },
+	{ .hw_ep_num = 6, .style = FIFO_RX, .maxpacket = 1024, },
+	{ .hw_ep_num = 7, .style = FIFO_TX, .maxpacket = 512, },
+	{ .hw_ep_num = 7, .style = FIFO_RX, .maxpacket = 64, },
+};
+
+static const struct musb_hdrc_config mtk_musb_hdrc_config = {
+	.fifo_cfg = mtk_musb_mode_cfg,
+	.fifo_cfg_size = ARRAY_SIZE(mtk_musb_mode_cfg),
+	.multipoint = true,
+	.dyn_fifo = true,
+	.num_eps = MTK_MUSB_MAX_EP_NUM,
+	.ram_bits = MTK_MUSB_RAM_BITS,
+};
+
+static const struct platform_device_info mtk_dev_info = {
+	.name = "musb-hdrc",
+	.id = PLATFORM_DEVID_AUTO,
+	.dma_mask = DMA_BIT_MASK(32),
+};
+
+static int mtk_musb_probe(struct platform_device *pdev)
+{
+	struct musb_hdrc_platform_data *pdata;
+	struct mtk_glue *glue;
+	struct platform_device_info pinfo;
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	int ret = -ENOMEM;
+
+	glue = devm_kzalloc(dev, sizeof(*glue), GFP_KERNEL);
+	if (!glue)
+		return -ENOMEM;
+
+	glue->dev = dev;
+	pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
+	if (!pdata)
+		return -ENOMEM;
+
+	ret = of_platform_populate(np, NULL, NULL, dev);
+	if (ret) {
+		dev_err(dev, "failed to create child devices at %p\n", np);
+		return ret;
+	}
+
+	ret = mtk_musb_clks_get(glue);
+	if (ret)
+		return ret;
+
+	pdata->config = &mtk_musb_hdrc_config;
+	pdata->platform_ops = &mtk_musb_ops;
+	pdata->mode = usb_get_dr_mode(dev);
+
+	if (IS_ENABLED(CONFIG_USB_MUSB_HOST))
+		pdata->mode = USB_DR_MODE_HOST;
+	else if (IS_ENABLED(CONFIG_USB_MUSB_GADGET))
+		pdata->mode = USB_DR_MODE_PERIPHERAL;
+
+	switch (pdata->mode) {
+	case USB_DR_MODE_HOST:
+		glue->phy_mode = PHY_MODE_USB_HOST;
+		glue->role = USB_ROLE_HOST;
+		break;
+	case USB_DR_MODE_PERIPHERAL:
+		glue->phy_mode = PHY_MODE_USB_DEVICE;
+		glue->role = USB_ROLE_DEVICE;
+		break;
+	case USB_DR_MODE_OTG:
+		glue->phy_mode = PHY_MODE_USB_OTG;
+		glue->role = USB_ROLE_NONE;
+		break;
+	default:
+		dev_err(&pdev->dev, "Error 'dr_mode' property\n");
+		return -EINVAL;
+	}
+
+	glue->phy = devm_of_phy_get_by_index(dev, np, 0);
+	if (IS_ERR(glue->phy)) {
+		dev_err(dev, "fail to getting phy %ld\n",
+			PTR_ERR(glue->phy));
+		return PTR_ERR(glue->phy);
+	}
+
+	glue->usb_phy = usb_phy_generic_register();
+	if (IS_ERR(glue->usb_phy)) {
+		dev_err(dev, "fail to registering usb-phy %ld\n",
+			PTR_ERR(glue->usb_phy));
+		return PTR_ERR(glue->usb_phy);
+	}
+
+	glue->xceiv = devm_usb_get_phy(dev, USB_PHY_TYPE_USB2);
+	if (IS_ERR(glue->xceiv)) {
+		dev_err(dev, "fail to getting usb-phy %d\n", ret);
+		ret = PTR_ERR(glue->xceiv);
+		goto err_unregister_usb_phy;
+	}
+
+	platform_set_drvdata(pdev, glue);
+	pm_runtime_enable(dev);
+	pm_runtime_get_sync(dev);
+
+	ret = mtk_musb_clks_enable(glue);
+	if (ret)
+		goto err_enable_clk;
+
+	pinfo = mtk_dev_info;
+	pinfo.parent = dev;
+	pinfo.res = pdev->resource;
+	pinfo.num_res = pdev->num_resources;
+	pinfo.data = pdata;
+	pinfo.size_data = sizeof(*pdata);
+
+	glue->musb_pdev = platform_device_register_full(&pinfo);
+	if (IS_ERR(glue->musb_pdev)) {
+		ret = PTR_ERR(glue->musb_pdev);
+		dev_err(dev, "failed to register musb device: %d\n", ret);
+		goto err_device_register;
+	}
+
+	return 0;
+
+err_device_register:
+	mtk_musb_clks_disable(glue);
+err_enable_clk:
+	pm_runtime_put_sync(dev);
+	pm_runtime_disable(dev);
+err_unregister_usb_phy:
+	usb_phy_generic_unregister(glue->usb_phy);
+	return ret;
+}
+
+static int mtk_musb_remove(struct platform_device *pdev)
+{
+	struct mtk_glue *glue = platform_get_drvdata(pdev);
+	struct platform_device *usb_phy = glue->usb_phy;
+
+	platform_device_unregister(glue->musb_pdev);
+	usb_phy_generic_unregister(usb_phy);
+
+	return 0;
+}
+
+#ifdef CONFIG_OF
+static const struct of_device_id mtk_musb_match[] = {
+	{.compatible = "mediatek,mtk-musb",},
+	{},
+};
+MODULE_DEVICE_TABLE(of, mtk_musb_match);
+#endif
+
+static struct platform_driver mtk_musb_driver = {
+	.probe = mtk_musb_probe,
+	.remove = mtk_musb_remove,
+	.driver = {
+		   .name = "musb-mtk",
+		   .of_match_table = of_match_ptr(mtk_musb_match),
+	},
+};
+
+module_platform_driver(mtk_musb_driver);
+
+MODULE_DESCRIPTION("MediaTek MUSB Glue Layer");
+MODULE_AUTHOR("Min Guo <min.guo@mediatek.com>");
+MODULE_LICENSE("GPL v2");
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
