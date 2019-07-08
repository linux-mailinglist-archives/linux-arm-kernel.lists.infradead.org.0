Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 078D1619B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 05:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGlbXgharrcprJM5KmqWCgo7/KW6PojFxAwmzaLv8zg=; b=H3SaBZBRIl4kuf
	d26/P6DUWDrZwu86jqYVqa1QCqwZTOU1JYEap8T/3WLlWz5bcRuiNHPNNfZ5i2SSWvGjYveQ2lLZZ
	czhbMl8UzY6LY9io4t0seQ/XKZcktBelFF0y+RygtpJTKNBhxq2e+I0PGVp9tQKjCDrPlkc0hvgZw
	2q3JjNmIuHv31c9oKDKlPqHu52fgGCa7ur9v0xEp4KOrgwiTBfacIWb4MKyF1RiPbNx1huke9D+dr
	WwKI9IL/XIJiX9/3ZoOHJluXbeGq/uKfTeSeoC78SWTyaAYF6IAAQM38t1wg3QXJgdZrhYXO9fya8
	J2IzxsS3drjnklfBGYyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkKkW-0002GH-O3; Mon, 08 Jul 2019 03:55:32 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkKit-0008V9-Nw
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 03:53:55 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x683qli6025054;
 Sun, 7 Jul 2019 22:52:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1562557967;
 bh=P69LeJyM5ZYJAAX1YsH9Z3wtJkPkjOYhdxTmMljKVK4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=W+c/42+fvKX3GCdPrEPgKdpXuCteYaRIugu5NPSgKXHWYvXBVlswBKZMhiWl7jrLz
 uGKtrM2TbztPRnDx0xA2vc4XfOQE4+tvdAqWQ5rFg2weuK6xPFr01AYJgWGaAnEmV4
 Gs5yw2d7Bpdu0FQH4N5iAgh2OsoXSaYhVCq3rcqQ=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x683qlTv043695
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 7 Jul 2019 22:52:47 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sun, 7 Jul
 2019 22:52:46 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sun, 7 Jul 2019 22:52:46 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x683qkjv122101;
 Sun, 7 Jul 2019 22:52:46 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x683qkm26445; 
 Sun, 7 Jul 2019 22:52:46 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Marc Zyngier <marc.zyngier@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>
Subject: [PATCH 4/6] irqchip/irq-pruss-intc: Add helper functions to configure
 internal mapping
Date: Sun, 7 Jul 2019 22:52:41 -0500
Message-ID: <20190708035243.12170-5-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190708035243.12170-1-s-anna@ti.com>
References: <20190708035243.12170-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_205351_902530_DE54940F 
X-CRM114-Status: GOOD (  26.65  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Murali Karicheri <m-karicheri2@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PRUSS INTC receives a number of system input interrupt source events
and supports individual control configuration and hardware prioritization.
These input events can be mapped to some output host interrupts through 2
levels of many-to-one mapping i.e. events to channel mapping and channels
to host interrupts.

This mapping information is provided through the PRU firmware that is
loaded onto a PRU core/s or through the device tree node of the PRU
application. The mapping is configured by the PRU remoteproc driver, and
is setup before the PRU core is started and cleaned up after the PRU core
is stopped. This event mapping configuration logic is optimized to program
the Channel Map Registers (CMRx) and Host-Interrupt Map Registers (HMRx)
only when a new program is being loaded/started and simply disables the
same events and interrupt channels without zeroing out the corresponding
map registers when stopping a PRU.

Add two helper functions: pruss_intc_configure() & pruss_intc_unconfigure()
that the PRU remoteproc driver can use to configure the PRUSS INTC.

Signed-off-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Andrew F. Davis <afd@ti.com>
Signed-off-by: Roger Quadros <rogerq@ti.com>
---
 drivers/irqchip/irq-pruss-intc.c       | 258 ++++++++++++++++++++++++-
 include/linux/irqchip/irq-pruss-intc.h |  33 ++++
 2 files changed, 289 insertions(+), 2 deletions(-)
 create mode 100644 include/linux/irqchip/irq-pruss-intc.h

diff --git a/drivers/irqchip/irq-pruss-intc.c b/drivers/irqchip/irq-pruss-intc.c
index 142d01b434e0..8118c2a2ac43 100644
--- a/drivers/irqchip/irq-pruss-intc.c
+++ b/drivers/irqchip/irq-pruss-intc.c
@@ -9,6 +9,7 @@
 
 #include <linux/irq.h>
 #include <linux/irqchip/chained_irq.h>
+#include <linux/irqchip/irq-pruss-intc.h>
 #include <linux/irqdomain.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
@@ -24,8 +25,8 @@
 /* minimum starting host interrupt number for MPU */
 #define MIN_PRU_HOST_INT	2
 
-/* maximum number of system events */
-#define MAX_PRU_SYS_EVENTS	64
+/* maximum number of host interrupts */
+#define MAX_PRU_HOST_INT	10
 
 /* PRU_ICSS_INTC registers */
 #define PRU_INTC_REVID		0x0000
@@ -57,15 +58,29 @@
 #define PRU_INTC_HINLR(x)	(0x1100 + (x) * 4)
 #define PRU_INTC_HIER		0x1500
 
+/* CMR register bit-field macros */
+#define CMR_EVT_MAP_MASK	0xf
+#define CMR_EVT_MAP_BITS	8
+#define CMR_EVT_PER_REG		4
+
+/* HMR register bit-field macros */
+#define HMR_CH_MAP_MASK		0xf
+#define HMR_CH_MAP_BITS		8
+#define HMR_CH_PER_REG		4
+
 /* HIPIR register bit-fields */
 #define INTC_HIPIR_NONE_HINT	0x80000000
 
+/* use -1 to mark unassigned events and channels */
+#define FREE			-1
+
 /**
  * struct pruss_intc - PRUSS interrupt controller structure
  * @irqs: kernel irq numbers corresponding to PRUSS host interrupts
  * @base: base virtual address of INTC register space
  * @irqchip: irq chip for this interrupt controller
  * @domain: irq domain for this interrupt controller
+ * @config_map: stored INTC configuration mapping data
  * @lock: mutex to serialize access to INTC
  * @host_mask: indicate which HOST IRQs are enabled
  * @shared_intr: bit-map denoting if the MPU host interrupt is shared
@@ -76,6 +91,7 @@ struct pruss_intc {
 	void __iomem *base;
 	struct irq_chip *irqchip;
 	struct irq_domain *domain;
+	struct pruss_intc_config config_map;
 	struct mutex lock; /* PRUSS INTC lock */
 	u32 host_mask;
 	u16 shared_intr;
@@ -107,6 +123,238 @@ static int pruss_intc_check_write(struct pruss_intc *intc, unsigned int reg,
 	return 0;
 }
 
+static struct pruss_intc *to_pruss_intc(struct device *pru_dev)
+{
+	struct device_node *np;
+	struct platform_device *pdev;
+	struct device *pruss_dev = pru_dev->parent;
+	struct pruss_intc *intc = ERR_PTR(-ENODEV);
+
+	np = of_get_child_by_name(pruss_dev->of_node, "interrupt-controller");
+	if (!np) {
+		dev_err(pruss_dev, "pruss does not have an interrupt-controller node\n");
+		return intc;
+	}
+
+	pdev = of_find_device_by_node(np);
+	if (!pdev) {
+		dev_err(pruss_dev, "no associated platform device\n");
+		goto out;
+	}
+
+	intc = platform_get_drvdata(pdev);
+	if (!intc) {
+		dev_err(pruss_dev, "pruss intc device probe failed?\n");
+		intc = ERR_PTR(-EINVAL);
+	}
+
+out:
+	of_node_put(np);
+	return intc;
+}
+
+/**
+ * pruss_intc_configure() - configure the PRUSS INTC
+ * @dev: pru device pointer
+ * @intc_config: PRU core-specific INTC configuration
+ *
+ * Configures the PRUSS INTC with the provided configuration from
+ * a PRU core. Any existing event to channel mappings or channel to
+ * host interrupt mappings are checked to make sure there are no
+ * conflicting configuration between both the PRU cores. The function
+ * is intended to be used only by the PRU remoteproc driver.
+ *
+ * Returns 0 on success, or a suitable error code otherwise
+ */
+int pruss_intc_configure(struct device *dev,
+			 struct pruss_intc_config *intc_config)
+{
+	struct pruss_intc *intc;
+	int i, idx, ret;
+	s8 ch, host;
+	u64 sysevt_mask = 0;
+	u32 ch_mask = 0;
+	u32 host_mask = 0;
+	u32 val;
+
+	intc = to_pruss_intc(dev);
+	if (IS_ERR(intc))
+		return PTR_ERR(intc);
+
+	mutex_lock(&intc->lock);
+
+	/*
+	 * configure channel map registers - each register holds map info
+	 * for 4 events, with each event occupying the lower nibble in
+	 * a register byte address in little-endian fashion
+	 */
+	for (i = 0; i < ARRAY_SIZE(intc_config->sysev_to_ch); i++) {
+		ch = intc_config->sysev_to_ch[i];
+		if (ch < 0)
+			continue;
+
+		/* check if sysevent already assigned */
+		if (intc->config_map.sysev_to_ch[i] != FREE) {
+			dev_err(dev, "event %d (req. channel %d) already assigned to channel %d\n",
+				i, ch, intc->config_map.sysev_to_ch[i]);
+			ret = -EEXIST;
+			goto unlock;
+		}
+
+		intc->config_map.sysev_to_ch[i] = ch;
+
+		idx = i / CMR_EVT_PER_REG;
+		val = pruss_intc_read_reg(intc, PRU_INTC_CMR(idx));
+		val &= ~(CMR_EVT_MAP_MASK <<
+			 ((i % CMR_EVT_PER_REG) * CMR_EVT_MAP_BITS));
+		val |= ch << ((i % CMR_EVT_PER_REG) * CMR_EVT_MAP_BITS);
+		pruss_intc_write_reg(intc, PRU_INTC_CMR(idx), val);
+		sysevt_mask |= BIT_ULL(i);
+		ch_mask |= BIT(ch);
+
+		dev_dbg(dev, "SYSEV%d -> CH%d (CMR%d 0x%08x)\n", i, ch, idx,
+			pruss_intc_read_reg(intc, PRU_INTC_CMR(idx)));
+	}
+
+	/*
+	 * set host map registers - each register holds map info for
+	 * 4 channels, with each channel occupying the lower nibble in
+	 * a register byte address in little-endian fashion
+	 */
+	for (i = 0; i < ARRAY_SIZE(intc_config->ch_to_host); i++) {
+		host = intc_config->ch_to_host[i];
+		if (host < 0)
+			continue;
+
+		/* check if channel already assigned */
+		if (intc->config_map.ch_to_host[i] != FREE) {
+			dev_err(dev, "channel %d (req. intr_no %d) already assigned to intr_no %d\n",
+				i, host, intc->config_map.ch_to_host[i]);
+			ret = -EEXIST;
+			goto unlock;
+		}
+
+		/* check if host intr is already in use by other PRU */
+		if (intc->host_mask & (1U << host)) {
+			dev_err(dev, "%s: host intr %d already in use\n",
+				__func__, host);
+			ret = -EEXIST;
+			goto unlock;
+		}
+
+		intc->config_map.ch_to_host[i] = host;
+
+		idx = i / HMR_CH_PER_REG;
+
+		val = pruss_intc_read_reg(intc, PRU_INTC_HMR(idx));
+		val &= ~(HMR_CH_MAP_MASK <<
+			 ((i % HMR_CH_PER_REG) * HMR_CH_MAP_BITS));
+		val |= host << ((i % HMR_CH_PER_REG) * HMR_CH_MAP_BITS);
+		pruss_intc_write_reg(intc, PRU_INTC_HMR(idx), val);
+
+		ch_mask |= BIT(i);
+		host_mask |= BIT(host);
+
+		dev_dbg(dev, "CH%d -> HOST%d (HMR%d 0x%08x)\n", i, host, idx,
+			pruss_intc_read_reg(intc, PRU_INTC_HMR(idx)));
+	}
+
+	dev_info(dev, "configured system_events = 0x%016llx intr_channels = 0x%08x host_intr = 0x%08x\n",
+		 sysevt_mask, ch_mask, host_mask);
+
+	/* enable system events, writing 0 has no-effect */
+	pruss_intc_write_reg(intc, PRU_INTC_ESR0, lower_32_bits(sysevt_mask));
+	pruss_intc_write_reg(intc, PRU_INTC_SECR0, lower_32_bits(sysevt_mask));
+	pruss_intc_write_reg(intc, PRU_INTC_ESR1, upper_32_bits(sysevt_mask));
+	pruss_intc_write_reg(intc, PRU_INTC_SECR1, upper_32_bits(sysevt_mask));
+
+	/* enable host interrupts */
+	for (i = 0; i < MAX_PRU_HOST_INT; i++) {
+		if (host_mask & BIT(i))
+			pruss_intc_write_reg(intc, PRU_INTC_HIEISR, i);
+	}
+
+	/* global interrupt enable */
+	pruss_intc_write_reg(intc, PRU_INTC_GER, 1);
+
+	intc->host_mask |= host_mask;
+
+	mutex_unlock(&intc->lock);
+	return 0;
+
+unlock:
+	mutex_unlock(&intc->lock);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(pruss_intc_configure);
+
+/**
+ * pruss_intc_unconfigure() - unconfigure the PRUSS INTC
+ * @dev: pru device pointer
+ * @intc_config: PRU core specific INTC configuration
+ *
+ * Undo whatever was done in pruss_intc_configure() for a PRU core.
+ * It should be sufficient to just mark the resources free in the
+ * global map and disable the host interrupts and sysevents.
+ */
+int pruss_intc_unconfigure(struct device *dev,
+			   struct pruss_intc_config *intc_config)
+{
+	struct pruss_intc *intc;
+	int i;
+	s8 ch, host;
+	u64 sysevt_mask = 0;
+	u32 host_mask = 0;
+
+	intc = to_pruss_intc(dev);
+	if (IS_ERR(intc))
+		return PTR_ERR(intc);
+
+	mutex_lock(&intc->lock);
+
+	for (i = 0; i < ARRAY_SIZE(intc_config->sysev_to_ch); i++) {
+		ch = intc_config->sysev_to_ch[i];
+		if (ch < 0)
+			continue;
+
+		/* mark sysevent free in global map */
+		intc->config_map.sysev_to_ch[i] = FREE;
+		sysevt_mask |= BIT_ULL(i);
+	}
+
+	for (i = 0; i < ARRAY_SIZE(intc_config->ch_to_host); i++) {
+		host = intc_config->ch_to_host[i];
+		if (host < 0)
+			continue;
+
+		/* mark channel free in global map */
+		intc->config_map.ch_to_host[i] = FREE;
+		host_mask |= BIT(host);
+	}
+
+	dev_info(dev, "unconfigured system_events = 0x%016llx host_intr = 0x%08x\n",
+		 sysevt_mask, host_mask);
+
+	/* disable system events, writing 0 has no-effect */
+	pruss_intc_write_reg(intc, PRU_INTC_ECR0, lower_32_bits(sysevt_mask));
+	pruss_intc_write_reg(intc, PRU_INTC_ECR1, upper_32_bits(sysevt_mask));
+	/* clear any pending status */
+	pruss_intc_write_reg(intc, PRU_INTC_SECR0, lower_32_bits(sysevt_mask));
+	pruss_intc_write_reg(intc, PRU_INTC_SECR1, upper_32_bits(sysevt_mask));
+
+	/* disable host interrupts */
+	for (i = 0; i < MAX_PRU_HOST_INT; i++) {
+		if (host_mask & BIT(i))
+			pruss_intc_write_reg(intc, PRU_INTC_HIDISR, i);
+	}
+
+	intc->host_mask &= ~host_mask;
+	mutex_unlock(&intc->lock);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(pruss_intc_unconfigure);
+
 static void pruss_intc_init(struct pruss_intc *intc)
 {
 	int i;
@@ -300,6 +548,12 @@ static int pruss_intc_probe(struct platform_device *pdev)
 
 	mutex_init(&intc->lock);
 
+	for (i = 0; i < ARRAY_SIZE(intc->config_map.sysev_to_ch); i++)
+		intc->config_map.sysev_to_ch[i] = FREE;
+
+	for (i = 0; i < ARRAY_SIZE(intc->config_map.ch_to_host); i++)
+		intc->config_map.ch_to_host[i] = FREE;
+
 	pruss_intc_init(intc);
 
 	irqchip = devm_kzalloc(dev, sizeof(*irqchip), GFP_KERNEL);
diff --git a/include/linux/irqchip/irq-pruss-intc.h b/include/linux/irqchip/irq-pruss-intc.h
new file mode 100644
index 000000000000..f1f1bb150100
--- /dev/null
+++ b/include/linux/irqchip/irq-pruss-intc.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * PRU-ICSS sub-system private interfaces
+ *
+ * Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
+ *	Suman Anna <s-anna@ti.com>
+ */
+
+#ifndef __LINUX_IRQ_PRUSS_INTC_H
+#define __LINUX_IRQ_PRUSS_INTC_H
+
+/* maximum number of system events */
+#define MAX_PRU_SYS_EVENTS	64
+
+/* maximum number of interrupt channels */
+#define MAX_PRU_CHANNELS	10
+
+/**
+ * struct pruss_intc_config - INTC configuration info
+ * @sysev_to_ch: system events to channel mapping information
+ * @ch_to_host: interrupt channel to host interrupt information
+ */
+struct pruss_intc_config {
+	s8 sysev_to_ch[MAX_PRU_SYS_EVENTS];
+	s8 ch_to_host[MAX_PRU_CHANNELS];
+};
+
+int pruss_intc_configure(struct device *dev,
+			 struct pruss_intc_config *intc_config);
+int pruss_intc_unconfigure(struct device *dev,
+			   struct pruss_intc_config *intc_config);
+
+#endif	/* __LINUX_IRQ_PRUSS_INTC_H */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
