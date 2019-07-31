Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 130757D17D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 00:44:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y0JWGwaGXyFCbUR3Eir3rIbZLo/7yL55ykPjjTX9ht4=; b=BUeVX4PcdVU1gL
	zZmxgCfM6vCWjCp9N8rPkwq/8c3ail1wACAKCHJXCo+knXTem5999Bv6FkiAT0XhraWh2tXD1WXmA
	4P5eE1u+k0+hsezWzlubkhO3BeaTz/NLEYezo38tWXVdXOQpNEnwz2D+LDQAH/rShOzaSxiDEaF7h
	t03o8X6sfh+YcYpIkmQPL+Emnb31H5rlQrqRvSsfmXe8BU0C2i1MWeX73Qw/YTuYx+x43OGGSDTCt
	B7k+rx1keNIbPthDdfBzBgRuLBL1Hexr7HhbeuQzVxSmsqY+T+9Xopios73P8WEuIU8A4F+3D/QGi
	4wIqL0blqYr3wCiq2INw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsxKz-0005h9-MA; Wed, 31 Jul 2019 22:44:49 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsxJy-0004Zy-Ps
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 22:43:51 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6VMgg15095981;
 Wed, 31 Jul 2019 17:42:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564612962;
 bh=/9Ma6uSBzOyvNJSA6eCHG0NmCUFeMZ7i4htZ2o0Tc5U=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=eGdUMgIIVllgtzVuG8zAhy9naFmGzBa9Tsqg1e/2KX/NhwiOlzCXIFq9rDY4IgQ/E
 7kVCdswVnryyDIMoD9sZcaE4PocfuscuQ8oykCbXi48avvMa9ZoRNCx+A50PC9H+nB
 HoydzHEOOg0y7KyNptpSgqNzXHvRhRvP/Zo0BRaQ=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6VMggHk001890
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 31 Jul 2019 17:42:42 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 31
 Jul 2019 17:42:41 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 31 Jul 2019 17:42:41 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6VMgfoB104327;
 Wed, 31 Jul 2019 17:42:41 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6VMgfZ25779; 
 Wed, 31 Jul 2019 17:42:41 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Jason
 Cooper <jason@lakedaemon.net>
Subject: [PATCH v2 2/6] irqchip/irq-pruss-intc: Add a PRUSS irqchip driver for
 PRUSS interrupts
Date: Wed, 31 Jul 2019 17:41:45 -0500
Message-ID: <20190731224149.11153-3-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731224149.11153-1-s-anna@ti.com>
References: <20190731224149.11153-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_154346_999511_1ADD4EAF 
X-CRM114-Status: GOOD (  27.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 David Lechner <david@lechnology.com>, Tony Lindgren <tony@atomide.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 "Andrew F. Davis" <afd@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Murali Karicheri <m-karicheri2@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Andrew F. Davis" <afd@ti.com>

The Programmable Real-Time Unit Subsystem (PRUSS) contains a local
interrupt controller (INTC) that can handle various system input events
and post interrupts back to the device-level initiators. The INTC can
support upto 64 input events with individual control configuration and
hardware prioritization. These events are mapped onto 10 output interrupt
lines through two levels of many-to-one mapping support. Different
interrupt lines are routed to the individual PRU cores or to the host
CPU, or to other devices on the SoC. Some of these events are sourced
from peripherals or other sub-modules within that PRUSS, while a few
others are sourced from SoC-level peripherals/devices.

The PRUSS INTC platform driver manages this PRUSS interrupt controller
and implements an irqchip driver to provide a Linux standard way for
the PRU client users to enable/disable/ack/re-trigger a PRUSS system
event. The system events to interrupt channels and output interrupts
relies on the mapping configuration provided either through the PRU
firmware blob or via the PRU application's device tree node. The
mappings will be programmed during the boot/shutdown of a PRU core.

The PRUSS INTC module is reference counted during the interrupt
setup phase through the irqchip's irq_request_resources() and
irq_release_resources() ops. This restricts the module from being
removed as long as there are active interrupt users.

The driver currently supports and can be built for OMAP architecture
based AM335x, AM437x and AM57xx SoCs; Keystone2 architecture based
66AK2G SoCs and Davinci architecture based OMAP-L13x/AM18x/DA850 SoCs.
All of these SoCs support 64 system events, 10 interrupt channels and
10 output interrupt lines per PRUSS INTC with a few SoC integration
differences.

NOTE:
Each PRU-ICSS's INTC on AM57xx SoCs is preceded by a Crossbar that
enables multiple external events to be routed to a specific number
of input interrupt events. Any non-default external interrupt event
directed towards PRUSS needs this crossbar to be setup properly.

Signed-off-by: Andrew F. Davis <afd@ti.com>
Signed-off-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Roger Quadros <rogerq@ti.com>
---
v2: 
 - Addressed all of David Lechner's comments
 - Dropped irq_retrigger callback
 - Updated interrupt names from "hostX" to "host_intrX"
 - Moved host_mask variable to patch 4
v1: https://patchwork.kernel.org/patch/11034545/
v0: https://patchwork.kernel.org/patch/10795761/

 drivers/irqchip/Kconfig          |  10 +
 drivers/irqchip/Makefile         |   1 +
 drivers/irqchip/irq-pruss-intc.c | 338 +++++++++++++++++++++++++++++++
 3 files changed, 349 insertions(+)
 create mode 100644 drivers/irqchip/irq-pruss-intc.c

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 80e10f4e213a..dc6b5aa77a5d 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -471,6 +471,16 @@ config TI_SCI_INTA_IRQCHIP
 	  If you wish to use interrupt aggregator irq resources managed by the
 	  TI System Controller, say Y here. Otherwise, say N.
 
+config TI_PRUSS_INTC
+	tristate "TI PRU-ICSS Interrupt Controller"
+	depends on ARCH_DAVINCI || SOC_AM33XX || SOC_AM437X || SOC_DRA7XX || ARCH_KEYSTONE
+	select IRQ_DOMAIN
+	help
+	   This enables support for the PRU-ICSS Local Interrupt Controller
+	   present within a PRU-ICSS subsystem present on various TI SoCs.
+	   The PRUSS INTC enables various interrupts to be routed to multiple
+	   different processors within the SoC.
+
 endmenu
 
 config SIFIVE_PLIC
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index 8d0fcec6ab23..a02e652ca805 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -102,3 +102,4 @@ obj-$(CONFIG_MADERA_IRQ)		+= irq-madera.o
 obj-$(CONFIG_LS1X_IRQ)			+= irq-ls1x.o
 obj-$(CONFIG_TI_SCI_INTR_IRQCHIP)	+= irq-ti-sci-intr.o
 obj-$(CONFIG_TI_SCI_INTA_IRQCHIP)	+= irq-ti-sci-inta.o
+obj-$(CONFIG_TI_PRUSS_INTC)		+= irq-pruss-intc.o
diff --git a/drivers/irqchip/irq-pruss-intc.c b/drivers/irqchip/irq-pruss-intc.c
new file mode 100644
index 000000000000..4a9456544fd0
--- /dev/null
+++ b/drivers/irqchip/irq-pruss-intc.c
@@ -0,0 +1,338 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * PRU-ICSS INTC IRQChip driver for various TI SoCs
+ *
+ * Copyright (C) 2016-2019 Texas Instruments Incorporated - http://www.ti.com/
+ *	Andrew F. Davis <afd@ti.com>
+ *	Suman Anna <s-anna@ti.com>
+ */
+
+#include <linux/irq.h>
+#include <linux/irqchip/chained_irq.h>
+#include <linux/irqdomain.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+
+/*
+ * Number of host interrupts reaching the main MPU sub-system. Note that this
+ * is not the same as the total number of host interrupts supported by the PRUSS
+ * INTC instance
+ */
+#define MAX_NUM_HOST_IRQS	8
+
+/* minimum starting host interrupt number for MPU */
+#define MIN_PRU_HOST_INT	2
+
+/* maximum number of system events */
+#define MAX_PRU_SYS_EVENTS	64
+
+/* PRU_ICSS_INTC registers */
+#define PRU_INTC_REVID		0x0000
+#define PRU_INTC_CR		0x0004
+#define PRU_INTC_GER		0x0010
+#define PRU_INTC_GNLR		0x001c
+#define PRU_INTC_SISR		0x0020
+#define PRU_INTC_SICR		0x0024
+#define PRU_INTC_EISR		0x0028
+#define PRU_INTC_EICR		0x002c
+#define PRU_INTC_HIEISR		0x0034
+#define PRU_INTC_HIDISR		0x0038
+#define PRU_INTC_GPIR		0x0080
+#define PRU_INTC_SRSR0		0x0200
+#define PRU_INTC_SRSR1		0x0204
+#define PRU_INTC_SECR0		0x0280
+#define PRU_INTC_SECR1		0x0284
+#define PRU_INTC_ESR0		0x0300
+#define PRU_INTC_ESR1		0x0304
+#define PRU_INTC_ECR0		0x0380
+#define PRU_INTC_ECR1		0x0384
+#define PRU_INTC_CMR(x)		(0x0400 + (x) * 4)
+#define PRU_INTC_HMR(x)		(0x0800 + (x) * 4)
+#define PRU_INTC_HIPIR(x)	(0x0900 + (x) * 4)
+#define PRU_INTC_SIPR0		0x0d00
+#define PRU_INTC_SIPR1		0x0d04
+#define PRU_INTC_SITR0		0x0d80
+#define PRU_INTC_SITR1		0x0d84
+#define PRU_INTC_HINLR(x)	(0x1100 + (x) * 4)
+#define PRU_INTC_HIER		0x1500
+
+/* HIPIR register bit-fields */
+#define INTC_HIPIR_NONE_HINT	0x80000000
+
+/**
+ * struct pruss_intc - PRUSS interrupt controller structure
+ * @irqs: kernel irq numbers corresponding to PRUSS host interrupts
+ * @base: base virtual address of INTC register space
+ * @irqchip: irq chip for this interrupt controller
+ * @domain: irq domain for this interrupt controller
+ * @lock: mutex to serialize access to INTC
+ */
+struct pruss_intc {
+	unsigned int irqs[MAX_NUM_HOST_IRQS];
+	void __iomem *base;
+	struct irq_chip *irqchip;
+	struct irq_domain *domain;
+	struct mutex lock; /* PRUSS INTC lock */
+};
+
+static inline u32 pruss_intc_read_reg(struct pruss_intc *intc, unsigned int reg)
+{
+	return readl_relaxed(intc->base + reg);
+}
+
+static inline void pruss_intc_write_reg(struct pruss_intc *intc,
+					unsigned int reg, u32 val)
+{
+	writel_relaxed(val, intc->base + reg);
+}
+
+static int pruss_intc_check_write(struct pruss_intc *intc, unsigned int reg,
+				  unsigned int sysevent)
+{
+	if (!intc)
+		return -EINVAL;
+
+	if (sysevent >= MAX_PRU_SYS_EVENTS)
+		return -EINVAL;
+
+	pruss_intc_write_reg(intc, reg, sysevent);
+
+	return 0;
+}
+
+static void pruss_intc_init(struct pruss_intc *intc)
+{
+	int i;
+
+	/* configure polarity to active high for all system interrupts */
+	pruss_intc_write_reg(intc, PRU_INTC_SIPR0, 0xffffffff);
+	pruss_intc_write_reg(intc, PRU_INTC_SIPR1, 0xffffffff);
+
+	/* configure type to pulse interrupt for all system interrupts */
+	pruss_intc_write_reg(intc, PRU_INTC_SITR0, 0);
+	pruss_intc_write_reg(intc, PRU_INTC_SITR1, 0);
+
+	/* clear all 16 interrupt channel map registers */
+	for (i = 0; i < 16; i++)
+		pruss_intc_write_reg(intc, PRU_INTC_CMR(i), 0);
+
+	/* clear all 3 host interrupt map registers */
+	for (i = 0; i < 3; i++)
+		pruss_intc_write_reg(intc, PRU_INTC_HMR(i), 0);
+}
+
+static void pruss_intc_irq_ack(struct irq_data *data)
+{
+	struct pruss_intc *intc = irq_data_get_irq_chip_data(data);
+	unsigned int hwirq = data->hwirq;
+
+	pruss_intc_check_write(intc, PRU_INTC_SICR, hwirq);
+}
+
+static void pruss_intc_irq_mask(struct irq_data *data)
+{
+	struct pruss_intc *intc = irq_data_get_irq_chip_data(data);
+	unsigned int hwirq = data->hwirq;
+
+	pruss_intc_check_write(intc, PRU_INTC_EICR, hwirq);
+}
+
+static void pruss_intc_irq_unmask(struct irq_data *data)
+{
+	struct pruss_intc *intc = irq_data_get_irq_chip_data(data);
+	unsigned int hwirq = data->hwirq;
+
+	pruss_intc_check_write(intc, PRU_INTC_EISR, hwirq);
+}
+
+static int pruss_intc_irq_reqres(struct irq_data *data)
+{
+	if (!try_module_get(THIS_MODULE))
+		return -ENODEV;
+
+	return 0;
+}
+
+static void pruss_intc_irq_relres(struct irq_data *data)
+{
+	module_put(THIS_MODULE);
+}
+
+static int pruss_intc_irq_domain_map(struct irq_domain *d, unsigned int virq,
+				     irq_hw_number_t hw)
+{
+	struct pruss_intc *intc = d->host_data;
+
+	irq_set_chip_data(virq, intc);
+	irq_set_chip_and_handler(virq, intc->irqchip, handle_level_irq);
+
+	return 0;
+}
+
+static void pruss_intc_irq_domain_unmap(struct irq_domain *d, unsigned int virq)
+{
+	irq_set_chip_and_handler(virq, NULL, NULL);
+	irq_set_chip_data(virq, NULL);
+}
+
+static const struct irq_domain_ops pruss_intc_irq_domain_ops = {
+	.xlate	= irq_domain_xlate_onecell,
+	.map	= pruss_intc_irq_domain_map,
+	.unmap	= pruss_intc_irq_domain_unmap,
+};
+
+static void pruss_intc_irq_handler(struct irq_desc *desc)
+{
+	unsigned int irq = irq_desc_get_irq(desc);
+	struct irq_chip *chip = irq_desc_get_chip(desc);
+	struct pruss_intc *intc = irq_get_handler_data(irq);
+	u32 hipir;
+	unsigned int virq;
+	int i, hwirq;
+
+	chained_irq_enter(chip, desc);
+
+	/* find our host irq number */
+	for (i = 0; i < MAX_NUM_HOST_IRQS; i++)
+		if (intc->irqs[i] == irq)
+			break;
+	if (i == MAX_NUM_HOST_IRQS)
+		goto err;
+
+	i += MIN_PRU_HOST_INT;
+
+	/* get highest priority pending PRUSS system event */
+	hipir = pruss_intc_read_reg(intc, PRU_INTC_HIPIR(i));
+	while (!(hipir & INTC_HIPIR_NONE_HINT)) {
+		hwirq = hipir & GENMASK(9, 0);
+		virq = irq_linear_revmap(intc->domain, hwirq);
+
+		/*
+		 * NOTE: manually ACK any system events that do not have a
+		 * handler mapped yet
+		 */
+		if (unlikely(!virq))
+			pruss_intc_check_write(intc, PRU_INTC_SICR, hwirq);
+		else
+			generic_handle_irq(virq);
+
+		/* get next system event */
+		hipir = pruss_intc_read_reg(intc, PRU_INTC_HIPIR(i));
+	}
+err:
+	chained_irq_exit(chip, desc);
+}
+
+static int pruss_intc_probe(struct platform_device *pdev)
+{
+	static const char * const irq_names[] = {
+		"host_intr0", "host_intr1", "host_intr2", "host_intr3",
+		"host_intr4", "host_intr5", "host_intr6", "host_intr7", };
+	struct device *dev = &pdev->dev;
+	struct pruss_intc *intc;
+	struct resource *res;
+	struct irq_chip *irqchip;
+	int i, irq;
+
+	intc = devm_kzalloc(dev, sizeof(*intc), GFP_KERNEL);
+	if (!intc)
+		return -ENOMEM;
+	platform_set_drvdata(pdev, intc);
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	intc->base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(intc->base)) {
+		dev_err(dev, "failed to parse and map intc memory resource\n");
+		return PTR_ERR(intc->base);
+	}
+
+	dev_dbg(dev, "intc memory: pa %pa size 0x%zx va %pK\n", &res->start,
+		(size_t)resource_size(res), intc->base);
+
+	mutex_init(&intc->lock);
+
+	pruss_intc_init(intc);
+
+	irqchip = devm_kzalloc(dev, sizeof(*irqchip), GFP_KERNEL);
+	if (!irqchip)
+		return -ENOMEM;
+
+	irqchip->irq_ack = pruss_intc_irq_ack;
+	irqchip->irq_mask = pruss_intc_irq_mask;
+	irqchip->irq_unmask = pruss_intc_irq_unmask;
+	irqchip->irq_request_resources = pruss_intc_irq_reqres;
+	irqchip->irq_release_resources = pruss_intc_irq_relres;
+	irqchip->name = dev_name(dev);
+	intc->irqchip = irqchip;
+
+	/* always 64 events */
+	intc->domain = irq_domain_add_linear(dev->of_node, MAX_PRU_SYS_EVENTS,
+					     &pruss_intc_irq_domain_ops, intc);
+	if (!intc->domain)
+		return -ENOMEM;
+
+	for (i = 0; i < MAX_NUM_HOST_IRQS; i++) {
+		irq = platform_get_irq_byname(pdev, irq_names[i]);
+		if (irq < 0) {
+			dev_err(dev, "platform_get_irq_byname failed for %s : %d\n",
+				irq_names[i], irq);
+			goto fail_irq;
+		}
+
+		intc->irqs[i] = irq;
+		irq_set_handler_data(irq, intc);
+		irq_set_chained_handler(irq, pruss_intc_irq_handler);
+	}
+
+	return 0;
+
+fail_irq:
+	while (--i >= 0) {
+		if (intc->irqs[i])
+			irq_set_chained_handler_and_data(intc->irqs[i], NULL,
+							 NULL);
+	}
+	irq_domain_remove(intc->domain);
+	return irq;
+}
+
+static int pruss_intc_remove(struct platform_device *pdev)
+{
+	struct pruss_intc *intc = platform_get_drvdata(pdev);
+	unsigned int hwirq;
+	int i;
+
+	for (i = 0; i < MAX_NUM_HOST_IRQS; i++) {
+		if (intc->irqs[i])
+			irq_set_chained_handler_and_data(intc->irqs[i], NULL,
+							 NULL);
+	}
+
+	for (hwirq = 0; hwirq < MAX_PRU_SYS_EVENTS; hwirq++)
+		irq_dispose_mapping(irq_find_mapping(intc->domain, hwirq));
+	irq_domain_remove(intc->domain);
+
+	return 0;
+}
+
+static const struct of_device_id pruss_intc_of_match[] = {
+	{ .compatible = "ti,pruss-intc", },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, pruss_intc_of_match);
+
+static struct platform_driver pruss_intc_driver = {
+	.driver = {
+		.name = "pruss-intc",
+		.of_match_table = pruss_intc_of_match,
+	},
+	.probe  = pruss_intc_probe,
+	.remove = pruss_intc_remove,
+};
+module_platform_driver(pruss_intc_driver);
+
+MODULE_AUTHOR("Andrew F. Davis <afd@ti.com>");
+MODULE_AUTHOR("Suman Anna <s-anna@ti.com>");
+MODULE_DESCRIPTION("TI PRU-ICSS INTC Driver");
+MODULE_LICENSE("GPL v2");
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
