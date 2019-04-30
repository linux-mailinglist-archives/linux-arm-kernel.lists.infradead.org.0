Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3584EF405
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 12:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKg+ytoKsCy0eviwJ16QCXLgrYYGy6hJiE7+1Ez518U=; b=U4+kkVs4vjp63d
	55HDxm176YpY18dffTx3gD7y2BswWCTLkc/muHimu26WGBUEUC4eJTXps7w1/de6LlsN/lDOPCBAP
	vBFiM1I7Az3KQFgghLepCoO+wdewNdbcwpOyFO/bppJyE5K6ohi4NEG8Xno16VO6zr0+Y3NQ6L5qL
	8M0y9CX1fwSJdjhyUmpKOZobrgFflc5CNj3S+z+RvnB86oK5zHriLtob3vnpLoibVM3E/BfzcZupP
	LwrJnzDp0Ca5PG4H766pTLrbYdiIeZc6JoQ4yiSXwpSvFBPIIkMABYkey0/sU0eA0i3ZHZgOVrD/C
	P8CumuoH3tBofS5V8/8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPnS-0001Gp-FK; Tue, 30 Apr 2019 10:15:34 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPlw-0006tu-Ks
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 10:14:04 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x3UADlpp034298;
 Tue, 30 Apr 2019 05:13:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1556619227;
 bh=KsdR3VEdL7cp/7nX9lu0gZqpnNYN71T5lUfp4ML9370=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=iOIbeixlGAwOFNte7t0t4ubFd7NS39padEWWv1vAk1FafncVaHfsC0xgkNUdLcvGx
 puQ6mQQpoww/7jcYT6QDbOCL4a88U5lxSDhyZy48dRhPm8c02uZVMWp/bFWlXGeTQt
 mfz15B64rvyRdq46YqFoIEx/NjgRrSpkZAO4iSdk=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x3UADlkP022195
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Apr 2019 05:13:47 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 30
 Apr 2019 05:13:46 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 30 Apr 2019 05:13:46 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x3UAD0YB085082;
 Tue, 30 Apr 2019 05:13:42 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Marc Zyngier <marc.zyngier@arm.com>, Santosh Shilimkar
 <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>, Nishanth Menon
 <nm@ti.com>, <tglx@linutronix.de>, <jason@lakedaemon.net>
Subject: [PATCH v8 09/14] irqchip: ti-sci-intr: Add support for Interrupt
 Router driver
Date: Tue, 30 Apr 2019 15:42:25 +0530
Message-ID: <20190430101230.21794-10-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190430101230.21794-1-lokeshvutla@ti.com>
References: <20190430101230.21794-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_031400_950221_69597AC9 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>, linus.walleij@linaro.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Texas Instruments' K3 generation SoCs has an IP Interrupt Router
that does allows for redirection of input interrupts to host
interrupt controller. Interrupt Router inputs are either from a
peripheral or from an Interrupt Aggregator which is another
interrupt controller.

Configuration of the interrupt router registers can only be done by
a system co-processor and the driver needs to send a message to this
co processor over TISCI protocol.

Add support for Interrupt Router driver over TISCI protocol.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
Changes since v7:
- Adapted driver to interrupt cells 2.

 MAINTAINERS                       |   1 +
 drivers/irqchip/Kconfig           |  11 ++
 drivers/irqchip/Makefile          |   1 +
 drivers/irqchip/irq-ti-sci-intr.c | 275 ++++++++++++++++++++++++++++++
 4 files changed, 288 insertions(+)
 create mode 100644 drivers/irqchip/irq-ti-sci-intr.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 91b4dcfb47f4..b54a01a70f44 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15351,6 +15351,7 @@ F:	Documentation/devicetree/bindings/clock/ti,sci-clk.txt
 F:	drivers/clk/keystone/sci-clk.c
 F:	drivers/reset/reset-ti-sci.c
 F:	Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
+F:	drivers/irqchip/irq-ti-sci-intr.c
 
 Texas Instruments ASoC drivers
 M:	Peter Ujfalusi <peter.ujfalusi@ti.com>
diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 5438abb1baba..4f84e7902626 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -425,6 +425,17 @@ config LS1X_IRQ
 	help
 	  Support for the Loongson-1 platform Interrupt Controller.
 
+config TI_SCI_INTR_IRQCHIP
+	bool
+	depends on TI_SCI_PROTOCOL
+	select IRQ_DOMAIN
+	select IRQ_DOMAIN_HIERARCHY
+	help
+	  This enables the irqchip driver support for K3 Interrupt router
+	  over TI System Control Interface available on some new TI's SoCs.
+	  If you wish to use interrupt router irq resources managed by the
+	  TI System Controller, say Y here. Otherwise, say N.
+
 endmenu
 
 config SIFIVE_PLIC
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index 85972ae1bd7f..fa5c865788b5 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -97,3 +97,4 @@ obj-$(CONFIG_SIFIVE_PLIC)		+= irq-sifive-plic.o
 obj-$(CONFIG_IMX_IRQSTEER)		+= irq-imx-irqsteer.o
 obj-$(CONFIG_MADERA_IRQ)		+= irq-madera.o
 obj-$(CONFIG_LS1X_IRQ)			+= irq-ls1x.o
+obj-$(CONFIG_TI_SCI_INTR_IRQCHIP)	+= irq-ti-sci-intr.o
diff --git a/drivers/irqchip/irq-ti-sci-intr.c b/drivers/irqchip/irq-ti-sci-intr.c
new file mode 100644
index 000000000000..59d51a20bbd8
--- /dev/null
+++ b/drivers/irqchip/irq-ti-sci-intr.c
@@ -0,0 +1,275 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Texas Instruments' K3 Interrupt Router irqchip driver
+ *
+ * Copyright (C) 2018-2019 Texas Instruments Incorporated - http://www.ti.com/
+ *	Lokesh Vutla <lokeshvutla@ti.com>
+ */
+
+#include <linux/err.h>
+#include <linux/module.h>
+#include <linux/moduleparam.h>
+#include <linux/io.h>
+#include <linux/irqchip.h>
+#include <linux/irqdomain.h>
+#include <linux/of_platform.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/soc/ti/ti_sci_protocol.h>
+
+#define TI_SCI_DEV_ID_MASK	0xffff
+#define TI_SCI_DEV_ID_SHIFT	16
+#define TI_SCI_IRQ_ID_MASK	0xffff
+#define TI_SCI_IRQ_ID_SHIFT	0
+#define HWIRQ_TO_DEVID(hwirq)	(((hwirq) >> (TI_SCI_DEV_ID_SHIFT)) & \
+				 (TI_SCI_DEV_ID_MASK))
+#define HWIRQ_TO_IRQID(hwirq)	((hwirq) & (TI_SCI_IRQ_ID_MASK))
+#define TO_HWIRQ(dev, index)	((((dev) & TI_SCI_DEV_ID_MASK) << \
+				 TI_SCI_DEV_ID_SHIFT) | \
+				((index) & TI_SCI_IRQ_ID_MASK))
+
+/**
+ * struct ti_sci_intr_irq_domain - Structure representing a TISCI based
+ *				   Interrupt Router IRQ domain.
+ * @sci:	Pointer to TISCI handle
+ * @dst_irq:	TISCI resource pointer representing GIC irq controller.
+ * @dst_id:	TISCI device ID of the GIC irq controller.
+ * @type:	Specifies the trigger type supported by this Interrupt Router
+ */
+struct ti_sci_intr_irq_domain {
+	const struct ti_sci_handle *sci;
+	struct ti_sci_resource *dst_irq;
+	u32 dst_id;
+	u32 type;
+};
+
+static struct irq_chip ti_sci_intr_irq_chip = {
+	.name			= "INTR",
+	.irq_eoi		= irq_chip_eoi_parent,
+	.irq_mask		= irq_chip_mask_parent,
+	.irq_unmask		= irq_chip_unmask_parent,
+	.irq_set_type		= irq_chip_set_type_parent,
+	.irq_retrigger		= irq_chip_retrigger_hierarchy,
+	.irq_set_affinity	= irq_chip_set_affinity_parent,
+};
+
+/**
+ * ti_sci_intr_irq_domain_translate() - Retrieve hwirq and type from
+ *					IRQ firmware specific handler.
+ * @domain:	Pointer to IRQ domain
+ * @fwspec:	Pointer to IRQ specific firmware structure
+ * @hwirq:	IRQ number identified by hardware
+ * @type:	IRQ type
+ *
+ * Return 0 if all went ok else appropriate error.
+ */
+static int ti_sci_intr_irq_domain_translate(struct irq_domain *domain,
+					    struct irq_fwspec *fwspec,
+					    unsigned long *hwirq,
+					    unsigned int *type)
+{
+	struct ti_sci_intr_irq_domain *intr = domain->host_data;
+
+	if (fwspec->param_count != 2)
+		return -EINVAL;
+
+	*hwirq = TO_HWIRQ(fwspec->param[0], fwspec->param[1]);
+	*type = intr->type;
+
+	return 0;
+}
+
+/**
+ * ti_sci_intr_irq_domain_free() - Free the specified IRQs from the domain.
+ * @domain:	Domain to which the irqs belong
+ * @virq:	Linux virtual IRQ to be freed.
+ * @nr_irqs:	Number of continuous irqs to be freed
+ */
+static void ti_sci_intr_irq_domain_free(struct irq_domain *domain,
+					unsigned int virq, unsigned int nr_irqs)
+{
+	struct ti_sci_intr_irq_domain *intr = domain->host_data;
+	struct irq_data *data, *parent_data;
+	u16 dev_id, irq_index;
+
+	parent_data = irq_domain_get_irq_data(domain->parent, virq);
+	data = irq_domain_get_irq_data(domain, virq);
+	irq_index = HWIRQ_TO_IRQID(data->hwirq);
+	dev_id = HWIRQ_TO_DEVID(data->hwirq);
+
+	intr->sci->ops.rm_irq_ops.free_irq(intr->sci, dev_id, irq_index,
+					   intr->dst_id, parent_data->hwirq);
+	ti_sci_release_resource(intr->dst_irq, parent_data->hwirq);
+	irq_domain_free_irqs_parent(domain, virq, 1);
+	irq_domain_reset_irq_data(data);
+}
+
+/**
+ * ti_sci_intr_alloc_gic_irq() - Allocate GIC specific IRQ
+ * @domain:	Pointer to the interrupt router IRQ domain
+ * @virq:	Corresponding Linux virtual IRQ number
+ * @hwirq:	Corresponding hwirq for the IRQ within this IRQ domain
+ *
+ * Returns 0 if all went well else appropriate error pointer.
+ */
+static int ti_sci_intr_alloc_gic_irq(struct irq_domain *domain,
+				     unsigned int virq, u32 hwirq)
+{
+	struct ti_sci_intr_irq_domain *intr = domain->host_data;
+	struct irq_fwspec fwspec;
+	u16 dev_id, irq_index;
+	u16 dst_irq;
+	int err;
+
+	dev_id = HWIRQ_TO_DEVID(hwirq);
+	irq_index = HWIRQ_TO_IRQID(hwirq);
+
+	dst_irq = ti_sci_get_free_resource(intr->dst_irq);
+	if (dst_irq == TI_SCI_RESOURCE_NULL)
+		return -EINVAL;
+
+	fwspec.fwnode = domain->parent->fwnode;
+	fwspec.param_count = 3;
+	fwspec.param[0] = 0;	/* SPI */
+	fwspec.param[1] = dst_irq - 32; /* SPI offset */
+	fwspec.param[2] = intr->type;
+
+	err = irq_domain_alloc_irqs_parent(domain, virq, 1, &fwspec);
+	if (err)
+		goto err_irqs;
+
+	err = intr->sci->ops.rm_irq_ops.set_irq(intr->sci, dev_id, irq_index,
+						intr->dst_id, dst_irq);
+	if (err)
+		goto err_msg;
+
+	return 0;
+
+err_msg:
+	irq_domain_free_irqs_parent(domain, virq, 1);
+err_irqs:
+	ti_sci_release_resource(intr->dst_irq, dst_irq);
+	return err;
+}
+
+/**
+ * ti_sci_intr_irq_domain_alloc() - Allocate Interrupt router IRQs
+ * @domain:	Point to the interrupt router IRQ domain
+ * @virq:	Corresponding Linux virtual IRQ number
+ * @nr_irqs:	Continuous irqs to be allocated
+ * @data:	Pointer to firmware specifier
+ *
+ * Return 0 if all went well else appropriate error value.
+ */
+static int ti_sci_intr_irq_domain_alloc(struct irq_domain *domain,
+					unsigned int virq, unsigned int nr_irqs,
+					void *data)
+{
+	struct irq_fwspec *fwspec = data;
+	unsigned long hwirq;
+	unsigned int flags;
+	int err;
+
+	err = ti_sci_intr_irq_domain_translate(domain, fwspec, &hwirq, &flags);
+	if (err)
+		return err;
+
+	err = ti_sci_intr_alloc_gic_irq(domain, virq, hwirq);
+	if (err)
+		return err;
+
+	irq_domain_set_hwirq_and_chip(domain, virq, hwirq,
+				      &ti_sci_intr_irq_chip, NULL);
+
+	return 0;
+}
+
+static const struct irq_domain_ops ti_sci_intr_irq_domain_ops = {
+	.free		= ti_sci_intr_irq_domain_free,
+	.alloc		= ti_sci_intr_irq_domain_alloc,
+	.translate	= ti_sci_intr_irq_domain_translate,
+};
+
+static int ti_sci_intr_irq_domain_probe(struct platform_device *pdev)
+{
+	struct irq_domain *parent_domain, *domain;
+	struct ti_sci_intr_irq_domain *intr;
+	struct device_node *parent_node;
+	struct device *dev = &pdev->dev;
+	int ret;
+
+	parent_node = of_irq_find_parent(dev_of_node(dev));
+	if (!parent_node) {
+		dev_err(dev, "Failed to get IRQ parent node\n");
+		return -ENODEV;
+	}
+
+	parent_domain = irq_find_host(parent_node);
+	if (!parent_domain) {
+		dev_err(dev, "Failed to find IRQ parent domain\n");
+		return -ENODEV;
+	}
+
+	intr = devm_kzalloc(dev, sizeof(*intr), GFP_KERNEL);
+	if (!intr)
+		return -ENOMEM;
+
+	ret = of_property_read_u32(dev_of_node(dev), "ti,intr-trigger-type",
+				   &intr->type);
+	if (ret) {
+		dev_err(dev, "missing ti,intr-trigger-type property\n");
+		return -EINVAL;
+	}
+
+	intr->sci = devm_ti_sci_get_by_phandle(dev, "ti,sci");
+	if (IS_ERR(intr->sci)) {
+		ret = PTR_ERR(intr->sci);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "ti,sci read fail %d\n", ret);
+		intr->sci = NULL;
+		return ret;
+	}
+
+	ret = of_property_read_u32(dev_of_node(dev), "ti,sci-dst-id",
+				   &intr->dst_id);
+	if (ret) {
+		dev_err(dev, "missing 'ti,sci-dst-id' property\n");
+		return -EINVAL;
+	}
+
+	intr->dst_irq = devm_ti_sci_get_of_resource(intr->sci, dev,
+						    intr->dst_id,
+						    "ti,sci-rm-range-girq");
+	if (IS_ERR(intr->dst_irq)) {
+		dev_err(dev, "Destination irq resource allocation failed\n");
+		return PTR_ERR(intr->dst_irq);
+	}
+
+	domain = irq_domain_add_hierarchy(parent_domain, 0, 0, dev_of_node(dev),
+					  &ti_sci_intr_irq_domain_ops, intr);
+	if (!domain) {
+		dev_err(dev, "Failed to allocate IRQ domain\n");
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
+static const struct of_device_id ti_sci_intr_irq_domain_of_match[] = {
+	{ .compatible = "ti,sci-intr", },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, ti_sci_intr_irq_domain_of_match);
+
+static struct platform_driver ti_sci_intr_irq_domain_driver = {
+	.probe = ti_sci_intr_irq_domain_probe,
+	.driver = {
+		.name = "ti-sci-intr",
+		.of_match_table = ti_sci_intr_irq_domain_of_match,
+	},
+};
+module_platform_driver(ti_sci_intr_irq_domain_driver);
+
+MODULE_AUTHOR("Lokesh Vutla <lokeshvutla@ticom>");
+MODULE_DESCRIPTION("K3 Interrupt Router driver over TI SCI protocol");
+MODULE_LICENSE("GPL v2");
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
