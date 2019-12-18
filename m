Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3FC124046
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 08:23:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pitSJ1qhfBGYvYQ/WrLFIaAqcLfi9tm7XGeWDWzNKWk=; b=rIKIfF6RsXWg96Sc2swJquAKK/
	7UDaUeBP/H8Pu5u105hHebkM3RTZzJjWqA80oggZVLVfvVkWm/+RDnrIKyUAY/hF/VR70A5kbD9T9
	eYotE0kyw79W632C43WtVoVut5+6dXa1JcJLKoi92A+vgQ4mrdylUAiqzfoXLmqa4kKj2zrUtA/7f
	84ZfizvcfU1Py3kbpZqIxTUjjGrhT72dqe5+gBYixjht/BFJGz5BuInqcRlhXIny1THrQ51YpgrDR
	XqWpicWwRRY57A2MZvDLlr9JUW32bEHLa3y7GjU4zxPu4pZLbo3EgGdgl93w9nZHF63xW1vg6kgOi
	9tejQiTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihTgS-0005XG-Sd; Wed, 18 Dec 2019 07:23:48 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihTg2-0005LX-3Z
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 07:23:23 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DB3F7200027;
 Wed, 18 Dec 2019 08:23:20 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7283A20032E;
 Wed, 18 Dec 2019 08:23:13 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 6AE1640307;
 Wed, 18 Dec 2019 15:23:04 +0800 (SGT)
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org,
 robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, shengjiu.wang@nxp.com
Subject: [PATCH 2/3] drivers/irqchip: add NXP INTMUX interrupt multiplexer
 support
Date: Wed, 18 Dec 2019 15:20:14 +0800
Message-Id: <1576653615-27954-3-git-send-email-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576653615-27954-1-git-send-email-qiangqing.zhang@nxp.com>
References: <1576653615-27954-1-git-send-email-qiangqing.zhang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_232322_419927_6843FC6F 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, fugang.duan@nxp.com,
 linux-kernel@vger.kernel.org, Joakim Zhang <qiangqing.zhang@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Shengjiu Wang <shengjiu.wang@nxp.com>

The intmux module is used to output internal interrupt in subsystem
to system with 32-to-8 configuration. It has several multiplex
channels depends on system.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 drivers/irqchip/irq-imx-intmux.c | 220 +++++++++++++++++++++++++++++++
 1 file changed, 220 insertions(+)
 create mode 100644 drivers/irqchip/irq-imx-intmux.c

diff --git a/drivers/irqchip/irq-imx-intmux.c b/drivers/irqchip/irq-imx-intmux.c
new file mode 100644
index 000000000000..fa24b968f30b
--- /dev/null
+++ b/drivers/irqchip/irq-imx-intmux.c
@@ -0,0 +1,220 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright 2017 NXP
+
+#include <linux/clk.h>
+#include <linux/interrupt.h>
+#include <linux/irq.h>
+#include <linux/irqchip/chained_irq.h>
+#include <linux/irqdomain.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_platform.h>
+#include <linux/spinlock.h>
+
+#define CHANCSR(n)	(0x0 + 0x40 * n)
+#define CHANVEC(n)	(0x4 + 0x40 * n)
+#define CHANIER(n)	(0x10 + (0x40 * n))
+#define CHANIPR(n)	(0x20 + (0x40 * n))
+
+struct intmux_irqchip_data {
+	int chanidx;
+	int irq;
+	struct irq_domain *domain;
+	unsigned int irqstat;
+};
+
+struct intmux_data {
+	spinlock_t lock;
+	struct platform_device *pdev;
+	void __iomem *regs;
+	struct clk *ipg_clk;
+	int channum;
+	struct intmux_irqchip_data irqchip_data[];
+};
+
+static void imx_intmux_irq_mask(struct irq_data *d)
+{
+	struct intmux_irqchip_data *irqchip_data = d->chip_data;
+	u32 idx = irqchip_data->chanidx;
+	struct intmux_data *intmux_data = container_of(irqchip_data,
+				struct intmux_data, irqchip_data[idx]);
+	void __iomem *reg;
+	u32 val;
+
+	spin_lock(&intmux_data->lock);
+	reg = intmux_data->regs + CHANIER(idx);
+	val = readl_relaxed(reg);
+	/* disable the interrupt source of this channel */
+	val &= ~(1 << d->hwirq);
+	writel_relaxed(val, reg);
+	spin_unlock(&intmux_data->lock);
+}
+
+static void imx_intmux_irq_unmask(struct irq_data *d)
+{
+	struct intmux_irqchip_data *irqchip_data = d->chip_data;
+	u32 idx = irqchip_data->chanidx;
+	struct intmux_data *intmux_data = container_of(irqchip_data,
+				struct intmux_data, irqchip_data[idx]);
+	void __iomem *reg;
+	u32 val;
+
+	spin_lock(&intmux_data->lock);
+	reg = intmux_data->regs + CHANIER(idx);
+	val = readl_relaxed(reg);
+	/* enable the interrupt source of this channel */
+	val |= 1 << d->hwirq;
+	writel_relaxed(val, reg);
+	spin_unlock(&intmux_data->lock);
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
+static void imx_intmux_update_irqstat(struct intmux_irqchip_data *irqchip_data)
+{
+	int i = irqchip_data->chanidx;
+	struct intmux_data *intmux_data = container_of(irqchip_data,
+				struct intmux_data, irqchip_data[i]);
+
+	/* read the interrupt source pending status of this channel */
+	irqchip_data->irqstat = readl_relaxed(intmux_data->regs + CHANIPR(i));
+}
+
+static void imx_intmux_irq_handler(struct irq_desc *desc)
+{
+	struct intmux_irqchip_data *irqchip_data = irq_desc_get_handler_data(desc);
+	int pos, virq;
+
+	chained_irq_enter(irq_desc_get_chip(desc), desc);
+
+	imx_intmux_update_irqstat(irqchip_data);
+
+	for_each_set_bit(pos, (unsigned long *)&irqchip_data->irqstat, 32) {
+		virq = irq_find_mapping(irqchip_data->domain, pos);
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
+	struct intmux_data *intmux_data;
+	int channum;
+	int i, ret;
+
+	ret = of_property_read_u32(np, "fsl,intmux_chans", &channum);
+	if (ret)
+		channum = 1;
+
+	intmux_data = devm_kzalloc(&pdev->dev, sizeof(*intmux_data) +
+				   channum * sizeof(intmux_data->irqchip_data[0]),
+				   GFP_KERNEL);
+	if (!intmux_data)
+		return -ENOMEM;
+
+	intmux_data->regs = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(intmux_data->regs)) {
+		dev_err(&pdev->dev, "failed to initialize reg\n");
+		return PTR_ERR(intmux_data->regs);
+	}
+
+	intmux_data->ipg_clk = devm_clk_get(&pdev->dev, "ipg");
+	if (IS_ERR(intmux_data->ipg_clk)) {
+		ret = PTR_ERR(intmux_data->ipg_clk);
+		dev_err(&pdev->dev, "failed to get ipg clk: %d\n", ret);
+		return ret;
+	}
+
+	intmux_data->channum = channum;
+	intmux_data->pdev = pdev;
+	spin_lock_init(&intmux_data->lock);
+
+	ret = clk_prepare_enable(intmux_data->ipg_clk);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to enable ipg clk: %d\n", ret);
+		return ret;
+	}
+
+	for (i = 0; i < channum; i++) {
+		intmux_data->irqchip_data[i].chanidx = i;
+		intmux_data->irqchip_data[i].irq = platform_get_irq(pdev, i);
+		if (intmux_data->irqchip_data[i].irq <= 0) {
+			dev_err(&pdev->dev, "failed to get irq\n");
+			return -ENODEV;
+		}
+
+		intmux_data->irqchip_data[i].domain = irq_domain_add_linear(
+						np,
+						32,
+						&imx_intmux_domain_ops,
+						&intmux_data->irqchip_data[i]);
+		if (!intmux_data->irqchip_data[i].domain) {
+			dev_err(&intmux_data->pdev->dev,
+				"failed to create IRQ domain\n");
+			return -ENOMEM;
+		}
+
+		irq_set_chained_handler_and_data(intmux_data->irqchip_data[i].irq,
+						 imx_intmux_irq_handler,
+						 &intmux_data->irqchip_data[i]);
+	}
+
+	platform_set_drvdata(pdev, intmux_data);
+
+	return 0;
+}
+
+static int imx_intmux_remove(struct platform_device *pdev)
+{
+	struct intmux_data *intmux_data = platform_get_drvdata(pdev);
+	int i;
+
+	for (i = 0; i < intmux_data->channum; i++) {
+		irq_set_chained_handler_and_data(intmux_data->irqchip_data[i].irq,
+						 NULL, NULL);
+
+		irq_domain_remove(intmux_data->irqchip_data[i].domain);
+	}
+
+	platform_set_drvdata(pdev, NULL);
+	clk_disable_unprepare(intmux_data->ipg_clk);
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
