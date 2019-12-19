Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8765125ED9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 11:25:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WJovcHcHpbA25/pqbZxdhcX/BARp8MPzkyGZUZwrHwk=; b=jh7Rftq6qdaG7QKs2sOeQhu05E
	5mLeBoxKcvmtaUrA58VEdGurhBSHCy5RChP2fvGVOVY5XIhPiyae0SvRmDNFuy/1YbKKfwwaEE8Zn
	iHGZksVfYZD+Z/3WjHWlGovenm7wlwsmzYYV45qh8ZgNQGZRalzmcrHPQYu9s2LUxnBlbni1Jt/jo
	375Lw3GhtDC+SBBo5SNULWVrJhadNC9zLkUnqoDeywV9aKbQ7lQNrw3kZN8gbGZpqRDplyJK9r93Y
	G+i1qk/WplGtC6kLC0t+aZyizJbHJaHslUA2ZJLJ6PXBa/OI3eEA+6uCzuWBTZzqR6lTTq2zLw1rW
	CLqKwjow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihszk-0000HH-0n; Thu, 19 Dec 2019 10:25:24 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihsyr-0008F0-Mw
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 10:24:33 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7CA091A0227;
 Thu, 19 Dec 2019 11:24:28 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 99DA51A0768;
 Thu, 19 Dec 2019 11:24:22 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 00878402FC;
 Thu, 19 Dec 2019 18:24:14 +0800 (SGT)
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: tglx@linutronix.de, maz@kernel.org, jason@lakedaemon.net,
 robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de
Subject: [PATCH V2 2/2] drivers/irqchip: add NXP INTMUX interrupt multiplexer
 support
Date: Thu, 19 Dec 2019 18:21:05 +0800
Message-Id: <1576750865-14442-3-git-send-email-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576750865-14442-1-git-send-email-qiangqing.zhang@nxp.com>
References: <1576750865-14442-1-git-send-email-qiangqing.zhang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_022430_031386_D922763B 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: fugang.duan@nxp.com, Joakim Zhang <qiangqing.zhang@nxp.com>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Interrupt Multiplexer (INTMUX) expands the number of peripherals
that can interrupt the core:
* The INTMUX has 8 channels that are assigned to 8 NVIC interrupt slots.
* Each INTMUX channel can receive up to 32 interrupt sources and has 1
  interrupt output.
* The INTMUX routes the interrupt sources to the interrupt outputs.

In the driver, we only use channel 0 to steer 32 interrupt sources into
1 interrupt out.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 drivers/irqchip/Kconfig          |   6 +
 drivers/irqchip/Makefile         |   1 +
 drivers/irqchip/irq-imx-intmux.c | 240 +++++++++++++++++++++++++++++++
 3 files changed, 247 insertions(+)
 create mode 100644 drivers/irqchip/irq-imx-intmux.c

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index ba152954324b..7e2b1e9d0b45 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -457,6 +457,12 @@ config IMX_IRQSTEER
 	help
 	  Support for the i.MX IRQSTEER interrupt multiplexer/remapper.
 
+config IMX_INTMUX
+	def_bool y if ARCH_MXC
+	select IRQ_DOMAIN
+	help
+	  Support for the i.MX INTMUX interrupt multiplexer.
+
 config LS1X_IRQ
 	bool "Loongson-1 Interrupt Controller"
 	depends on MACH_LOONGSON32
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index e806dda690ea..af976a79d1fb 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -100,6 +100,7 @@ obj-$(CONFIG_CSKY_MPINTC)		+= irq-csky-mpintc.o
 obj-$(CONFIG_CSKY_APB_INTC)		+= irq-csky-apb-intc.o
 obj-$(CONFIG_SIFIVE_PLIC)		+= irq-sifive-plic.o
 obj-$(CONFIG_IMX_IRQSTEER)		+= irq-imx-irqsteer.o
+obj-$(CONFIG_IMX_INTMUX)		+= irq-imx-intmux.o
 obj-$(CONFIG_MADERA_IRQ)		+= irq-madera.o
 obj-$(CONFIG_LS1X_IRQ)			+= irq-ls1x.o
 obj-$(CONFIG_TI_SCI_INTR_IRQCHIP)	+= irq-ti-sci-intr.o
diff --git a/drivers/irqchip/irq-imx-intmux.c b/drivers/irqchip/irq-imx-intmux.c
new file mode 100644
index 000000000000..8a3a7de60219
--- /dev/null
+++ b/drivers/irqchip/irq-imx-intmux.c
@@ -0,0 +1,240 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright 2017 NXP
+
+#include <linux/clk.h>
+#include <linux/interrupt.h>
+#include <linux/irq.h>
+#include <linux/irqchip/chained_irq.h>
+#include <linux/irqdomain.h>
+#include <linux/kernel.h>
+#include <linux/of_irq.h>
+#include <linux/of_platform.h>
+#include <linux/spinlock.h>
+
+#define CHANIER(n)	(0x10 + (0x40 * n))
+#define CHANIPR(n)	(0x20 + (0x40 * n))
+
+/*                     INTMUX Block Diagram
+ *
+ *                               ________________
+ * interrupt source #  0  +---->|                |
+ *                        |     |                |
+ * interrupt source #  1  +++-->|                |
+ *            ...         | |   |   channel # 0  |--------->interrupt out # 0
+ *            ...         | |   |                |
+ *            ...         | |   |                |
+ * interrupt source # X-1 +++-->|________________|
+ *                        | | |
+ *                        | | |
+ *                        | | |  ________________
+ *                        +---->|                |
+ *                        | | | |                |
+ *                        | +-->|                |
+ *                        | | | |   channel # 1  |--------->interrupt out # 1
+ *                        | | +>|                |
+ *                        | | | |                |
+ *                        | | | |________________|
+ *                        | | |
+ *                        | | |
+ *                        | | |       ...
+ *                        | | |       ...
+ *                        | | |
+ *                        | | |  ________________
+ *                        +---->|                |
+ *                          | | |                |
+ *                          +-->|                |
+ *                            | |   channel # N  |--------->interrupt out # N
+ *                            +>|                |
+ *                              |                |
+ *                              |________________|
+ *
+ *
+ * N: Interrupt Channel Instance Number (N=7)
+ * X: Interrupt Source Number for each channel (X=32)
+ *
+ * The INTMUX interrupt multiplexer has 8 channels, each channel receives 32
+ * interrupt sources and generates 1 interrupt output.
+ *
+ * The aim of INTMUX design is to route same interrupt to different cores.
+ *
+ * In this driver, we only use channel 0 to steer 32 interrupt sources into 1
+ * interrupt out. We can extend the driver to support muti-channels in the
+ * future if has requirement.
+ *
+ */
+
+struct intmux_data {
+	void __iomem		*regs;
+	struct clk		*ipg_clk;
+	int			chan_idx;
+	int			irq;
+	struct irq_domain	*domain;
+	raw_spinlock_t		lock;
+};
+
+static void imx_intmux_irq_mask(struct irq_data *d)
+{
+	struct intmux_data *data = d->chip_data;
+	unsigned long flags;
+	void __iomem *reg;
+	u32 val;
+
+	raw_spin_lock_irqsave(&data->lock, flags);
+	reg = data->regs + CHANIER(data->chan_idx);
+	val = readl_relaxed(reg);
+	/* disable the interrupt source of this channel */
+	val &= ~(1 << d->hwirq);
+	writel_relaxed(val, reg);
+	raw_spin_unlock_irqrestore(&data->lock, flags);
+}
+
+static void imx_intmux_irq_unmask(struct irq_data *d)
+{
+	struct intmux_data *data = d->chip_data;
+	unsigned long flags;
+	void __iomem *reg;
+	u32 val;
+
+	raw_spin_lock_irqsave(&data->lock, flags);
+	reg = data->regs + CHANIER(data->chan_idx);
+	val = readl_relaxed(reg);
+	/* enable the interrupt source of this channel */
+	val |= 1 << d->hwirq;
+	writel_relaxed(val, reg);
+	raw_spin_unlock_irqrestore(&data->lock, flags);
+}
+
+static struct irq_chip imx_intmux_irq_chip = {
+	.name		= "intmux",
+	.irq_mask	= imx_intmux_irq_mask,
+	.irq_unmask	= imx_intmux_irq_unmask,
+};
+
+static int imx_intmux_irq_map(struct irq_domain *h, unsigned int irq,
+			      irq_hw_number_t hwirq)
+{
+	irq_set_status_flags(irq, IRQ_LEVEL);
+	irq_set_chip_data(irq, h->host_data);
+	irq_set_chip_and_handler(irq, &imx_intmux_irq_chip, handle_level_irq);
+
+	return 0;
+}
+
+static const struct irq_domain_ops imx_intmux_domain_ops = {
+	.map		= imx_intmux_irq_map,
+	.xlate		= irq_domain_xlate_onecell,
+};
+
+static void imx_intmux_irq_handler(struct irq_desc *desc)
+{
+	struct intmux_data *data = irq_desc_get_handler_data(desc);
+	unsigned long irqstat;
+	int pos, virq;
+
+	chained_irq_enter(irq_desc_get_chip(desc), desc);
+
+	/* read the interrupt source pending status of this channel */
+	irqstat = readl_relaxed(data->regs + CHANIPR(data->chan_idx));
+
+	for_each_set_bit(pos, &irqstat, 32) {
+		virq = irq_find_mapping(data->domain, pos);
+		if (virq)
+			generic_handle_irq(virq);
+	}
+
+	chained_irq_exit(irq_desc_get_chip(desc), desc);
+}
+
+static int imx_intmux_probe(struct platform_device *pdev)
+{
+	struct device_node *np = pdev->dev.of_node;
+	struct intmux_data *data;
+	int ret;
+
+	data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	data->regs = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(data->regs)) {
+		dev_err(&pdev->dev, "failed to initialize reg\n");
+		return PTR_ERR(data->regs);
+	}
+
+	data->ipg_clk = devm_clk_get(&pdev->dev, "ipg");
+	if (IS_ERR(data->ipg_clk)) {
+		ret = PTR_ERR(data->ipg_clk);
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "failed to get ipg clk: %d\n", ret);
+		return ret;
+	}
+
+	raw_spin_lock_init(&data->lock);
+
+	ret = clk_prepare_enable(data->ipg_clk);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to enable ipg clk: %d\n", ret);
+		return ret;
+	}
+
+	data->domain = irq_domain_add_linear(np, 32, &imx_intmux_domain_ops,
+					     data);
+	if (!data->domain) {
+		dev_err(&pdev->dev, "failed to create IRQ domain\n");
+		ret = -ENOMEM;
+		goto out;
+	}
+
+	/* use channel 0 for interrupt output */
+	data->chan_idx = 0;
+
+	data->irq = irq_of_parse_and_map(np, data->chan_idx);
+	if (!data->irq) {
+		ret = -EINVAL;
+		goto out;
+	}
+
+	irq_set_chained_handler_and_data(data->irq, imx_intmux_irq_handler,
+					 data);
+
+	/* disable all interrupt sources of this channel */
+	writel_relaxed(0, data->regs + CHANIER(data->chan_idx));
+
+	platform_set_drvdata(pdev, data);
+
+	return 0;
+out:
+	clk_disable_unprepare(data->ipg_clk);
+	return ret;
+}
+
+static int imx_intmux_remove(struct platform_device *pdev)
+{
+	struct intmux_data *data = platform_get_drvdata(pdev);
+
+	/* clear all interrupt sources pending status of this channel */
+	writel_relaxed(0, data->regs + CHANIPR(data->chan_idx));
+
+	irq_set_chained_handler_and_data(data->irq, NULL, NULL);
+
+	irq_domain_remove(data->domain);
+
+	clk_disable_unprepare(data->ipg_clk);
+
+	return 0;
+}
+
+static const struct of_device_id imx_intmux_id[] = {
+	{ .compatible = "fsl,imx-intmux", },
+	{ /* sentinel */ },
+};
+
+static struct platform_driver imx_intmux_driver = {
+	.driver = {
+		.name = "imx-intmux",
+		.of_match_table = imx_intmux_id,
+	},
+	.probe = imx_intmux_probe,
+	.remove = imx_intmux_remove,
+};
+builtin_platform_driver(imx_intmux_driver);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
