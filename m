Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E1AF40D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 12:16:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xtW+/9fEF/PI1xDpWL1hS/mFeJb5LwhthUAbIrY7RTw=; b=M0mlB0R3dfRwfb
	q1EBVB7Muc3h9XUDuUIhOlppEvfL+1DAKxpvv6LWO5Rk1IhN1K10ar7UFywo5ZzGSBaVGMUpH9nGC
	GShFB7FWtoXn/a37QSmmmUy2rELPfWpcEOcKmNhIqefA3TXkUi6jifYkc+ho9mrDzF50N+tHAgnxI
	NYYsGf4bpquTlmDlwYkQ3yJNbBzgD2z1kYFNFABZUaMTZ3kAWNYf9azfZ6N2nXVSDxQh0+ApN7eAp
	ugMIV/Gw7VsXipQNo7kZ1oyipI9YFAzED9u8F9u3dwSAqKmeiwr1zGVdjhTsbwbxMUmmjf1N4biA+
	QsVNdY7PkNcwYvur7FoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPom-0001ww-SE; Tue, 30 Apr 2019 10:16:56 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPm8-0006zm-0Q
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 10:14:24 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x3UADuEi010193;
 Tue, 30 Apr 2019 05:13:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1556619236;
 bh=THUAovtokoBFavB8NTf85hLIrl1Kdfm22RNhrtemxJQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=BeAq+FTwNiTdfoSUxDu3Q0bGU9FwpPrPiRWx1/ClSfYuZkHaCoFAgDBVcxFcbHsie
 jzHIUX5Rgv4eXamKVF0PNLdSvesEcUHVuvxEGuNVDKTZKNX4CeoLP0DV7GW1tUCnrz
 koXe4xgwVioTUoIDubc4r44vqsOuOoTAETyH89Lc=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x3UADuPw126395
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Apr 2019 05:13:56 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 30
 Apr 2019 05:13:55 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 30 Apr 2019 05:13:55 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x3UAD0YD085082;
 Tue, 30 Apr 2019 05:13:51 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Marc Zyngier <marc.zyngier@arm.com>, Santosh Shilimkar
 <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>, Nishanth Menon
 <nm@ti.com>, <tglx@linutronix.de>, <jason@lakedaemon.net>
Subject: [PATCH v8 11/14] irqchip: ti-sci-inta: Add support for Interrupt
 Aggregator driver
Date: Tue, 30 Apr 2019 15:42:27 +0530
Message-ID: <20190430101230.21794-12-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190430101230.21794-1-lokeshvutla@ti.com>
References: <20190430101230.21794-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_031412_518405_F59D1201 
X-CRM114-Status: GOOD (  27.14  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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

Texas Instruments' K3 generation SoCs has an IP Interrupt Aggregator
which is an interrupt controller that does the following:
- Converts events to interrupts that can be understood by
  an interrupt router.
- Allows for multiplexing of events to interrupts.

Configuration of the interrupt aggregator registers can only be done by
a system co-processor and the driver needs to send a message to this
co processor over TISCI protocol. This patch adds support for Interrupt
Aggregator irqdomain.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
Changes since v7:
- Update ti_sci_inta_set_type() to handle unsupported trigger types
- Guarded entire allocation and free of irqs with vint_mutex because of the
  race condition that can happen while allocation and free.
  https://patchwork.kernel.org/patch/10910145/
- Dropped event_mutex
- Update ack_irq to not clear the event if we know down event is expected.

 MAINTAINERS                       |   1 +
 drivers/irqchip/Kconfig           |  11 +
 drivers/irqchip/Makefile          |   1 +
 drivers/irqchip/irq-ti-sci-inta.c | 577 ++++++++++++++++++++++++++++++
 4 files changed, 590 insertions(+)
 create mode 100644 drivers/irqchip/irq-ti-sci-inta.c

diff --git a/MAINTAINERS b/MAINTAINERS
index bac5c926a6ed..fff8e1589f07 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15353,6 +15353,7 @@ F:	drivers/reset/reset-ti-sci.c
 F:	Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
 F:	Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.txt
 F:	drivers/irqchip/irq-ti-sci-intr.c
+F:	drivers/irqchip/irq-ti-sci-inta.c
 
 Texas Instruments ASoC drivers
 M:	Peter Ujfalusi <peter.ujfalusi@ti.com>
diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 4f84e7902626..7c84a71bcd88 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -436,6 +436,17 @@ config TI_SCI_INTR_IRQCHIP
 	  If you wish to use interrupt router irq resources managed by the
 	  TI System Controller, say Y here. Otherwise, say N.
 
+config TI_SCI_INTA_IRQCHIP
+	bool
+	depends on TI_SCI_PROTOCOL
+	select IRQ_DOMAIN
+	select IRQ_DOMAIN_HIERARCHY
+	help
+	  This enables the irqchip driver support for K3 Interrupt aggregator
+	  over TI System Control Interface available on some new TI's SoCs.
+	  If you wish to use interrupt aggregator irq resources managed by the
+	  TI System Controller, say Y here. Otherwise, say N.
+
 endmenu
 
 config SIFIVE_PLIC
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index fa5c865788b5..8a33013da953 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -98,3 +98,4 @@ obj-$(CONFIG_IMX_IRQSTEER)		+= irq-imx-irqsteer.o
 obj-$(CONFIG_MADERA_IRQ)		+= irq-madera.o
 obj-$(CONFIG_LS1X_IRQ)			+= irq-ls1x.o
 obj-$(CONFIG_TI_SCI_INTR_IRQCHIP)	+= irq-ti-sci-intr.o
+obj-$(CONFIG_TI_SCI_INTA_IRQCHIP)	+= irq-ti-sci-inta.o
diff --git a/drivers/irqchip/irq-ti-sci-inta.c b/drivers/irqchip/irq-ti-sci-inta.c
new file mode 100644
index 000000000000..87e0abe0041f
--- /dev/null
+++ b/drivers/irqchip/irq-ti-sci-inta.c
@@ -0,0 +1,577 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Texas Instruments' K3 Interrupt Aggregator irqchip driver
+ *
+ * Copyright (C) 2018-2019 Texas Instruments Incorporated - http://www.ti.com/
+ *	Lokesh Vutla <lokeshvutla@ti.com>
+ */
+
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/irqchip.h>
+#include <linux/irqdomain.h>
+#include <linux/interrupt.h>
+#include <linux/msi.h>
+#include <linux/module.h>
+#include <linux/moduleparam.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/of_platform.h>
+#include <linux/irqchip/chained_irq.h>
+#include <linux/soc/ti/ti_sci_protocol.h>
+#include <asm-generic/msi.h>
+
+#define TI_SCI_DEV_ID_MASK	0xffff
+#define TI_SCI_DEV_ID_SHIFT	16
+#define TI_SCI_IRQ_ID_MASK	0xffff
+#define TI_SCI_IRQ_ID_SHIFT	0
+#define HWIRQ_TO_DEVID(hwirq)	(((hwirq) >> (TI_SCI_DEV_ID_SHIFT)) & \
+				 (TI_SCI_DEV_ID_MASK))
+#define HWIRQ_TO_IRQID(hwirq)	((hwirq) & (TI_SCI_IRQ_ID_MASK))
+
+#define MAX_EVENTS_PER_VINT	64
+#define VINT_ENABLE_SET_OFFSET	0x0
+#define VINT_ENABLE_CLR_OFFSET	0x8
+#define VINT_STATUS_OFFSET	0x18
+
+/**
+ * struct ti_sci_inta_event_desc - Description of an event coming to
+ *				   Interrupt Aggregator. This serves
+ *				   as a mapping table for global event,
+ *				   hwirq and vint bit.
+ * @global_event:	Global event number corresponding to this event
+ * @hwirq:		Hwirq of the incoming interrupt
+ * @vint_bit:		Corresponding vint bit to which this event is attached.
+ */
+struct ti_sci_inta_event_desc {
+	u16 global_event;
+	u32 hwirq;
+	u8 vint_bit;
+};
+
+/**
+ * struct ti_sci_inta_vint_desc - Description of a virtual interrupt coming out
+ *				  of Interrupt Aggregator.
+ * @domain:		Pointer to IRQ domain to which this vint belongs.
+ * @list:		List entry for the vint list
+ * @event_map:		Bitmap to manage the allocation of events to vint.
+ * @events:		Array of event descriptors assigned to this vint.
+ * @parent_virq:	Linux IRQ number that gets attached to parent
+ * @vint_id:		TISCI vint ID
+ */
+struct ti_sci_inta_vint_desc {
+	struct irq_domain *domain;
+	struct list_head list;
+	DECLARE_BITMAP(event_map, MAX_EVENTS_PER_VINT);
+	struct ti_sci_inta_event_desc events[MAX_EVENTS_PER_VINT];
+	unsigned int parent_virq;
+	u16 vint_id;
+};
+
+/**
+ * struct ti_sci_inta_irq_domain - Structure representing a TISCI based
+ *				   Interrupt Aggregator IRQ domain.
+ * @sci:		Pointer to TISCI handle
+ * @vint:		TISCI resource pointer representing IA inerrupts.
+ * @global_event:	TISCI resource pointer representing global events.
+ * @vint_list:		List of the vints active in the system
+ * @vint_mutex:		Mutex to protect vint_list
+ * @base:		Base address of the memory mapped IO registers
+ * @pdev:		Pointer to platform device.
+ */
+struct ti_sci_inta_irq_domain {
+	const struct ti_sci_handle *sci;
+	struct ti_sci_resource *vint;
+	struct ti_sci_resource *global_event;
+	struct list_head vint_list;
+	/* Mutex to protect vint list */
+	struct mutex vint_mutex;
+	void __iomem *base;
+	struct platform_device *pdev;
+};
+
+#define to_vint_desc(e, i) container_of(e, struct ti_sci_inta_vint_desc, \
+					events[i])
+
+/**
+ * ti_sci_inta_irq_handler() - Chained IRQ handler for the vint irqs
+ * @desc:	Pointer to irq_desc corresponding to the irq
+ */
+static void ti_sci_inta_irq_handler(struct irq_desc *desc)
+{
+	struct ti_sci_inta_vint_desc *vint_desc;
+	struct ti_sci_inta_irq_domain *inta;
+	struct irq_domain *domain;
+	unsigned int virq, bit;
+	unsigned long val;
+
+	vint_desc = irq_desc_get_handler_data(desc);
+	domain = vint_desc->domain;
+	inta = domain->host_data;
+
+	chained_irq_enter(irq_desc_get_chip(desc), desc);
+
+	val = readq_relaxed(inta->base + vint_desc->vint_id * 0x1000 +
+			    VINT_STATUS_OFFSET);
+
+	for_each_set_bit(bit, &val, MAX_EVENTS_PER_VINT) {
+		virq = irq_find_mapping(domain, vint_desc->events[bit].hwirq);
+		if (virq)
+			generic_handle_irq(virq);
+	}
+
+	chained_irq_exit(irq_desc_get_chip(desc), desc);
+}
+
+/**
+ * ti_sci_inta_alloc_parent_irq() - Allocate parent irq to Interrupt aggregator
+ * @domain:	IRQ domain corresponding to Interrupt Aggregator
+ *
+ * Return 0 if all went well else corresponding error value.
+ */
+static struct ti_sci_inta_vint_desc *ti_sci_inta_alloc_parent_irq(struct irq_domain *domain)
+{
+	struct ti_sci_inta_irq_domain *inta = domain->host_data;
+	struct ti_sci_inta_vint_desc *vint_desc;
+	struct irq_fwspec parent_fwspec;
+	unsigned int parent_virq;
+	u16 vint_id;
+
+	vint_id = ti_sci_get_free_resource(inta->vint);
+	if (vint_id == TI_SCI_RESOURCE_NULL)
+		return ERR_PTR(-EINVAL);
+
+	vint_desc = kzalloc(sizeof(*vint_desc), GFP_KERNEL);
+	if (!vint_desc)
+		return ERR_PTR(-ENOMEM);
+
+	vint_desc->domain = domain;
+	vint_desc->vint_id = vint_id;
+	INIT_LIST_HEAD(&vint_desc->list);
+
+	parent_fwspec.fwnode = of_node_to_fwnode(of_irq_find_parent(dev_of_node(&inta->pdev->dev)));
+	parent_fwspec.param_count = 2;
+	parent_fwspec.param[0] = inta->pdev->id;
+	parent_fwspec.param[1] = vint_desc->vint_id;
+
+	parent_virq = irq_create_fwspec_mapping(&parent_fwspec);
+	if (parent_virq <= 0) {
+		kfree(vint_desc);
+		return ERR_PTR(parent_virq);
+	}
+	vint_desc->parent_virq = parent_virq;
+
+	list_add_tail(&vint_desc->list, &inta->vint_list);
+	irq_set_chained_handler_and_data(vint_desc->parent_virq,
+					 ti_sci_inta_irq_handler, vint_desc);
+
+	return vint_desc;
+}
+
+/**
+ * ti_sci_inta_alloc_event() - Attach an event to a IA vint.
+ * @vint_desc:	Pointer to vint_desc to which the event gets attached
+ * @free_bit:	Bit inside vint to which event gets attached
+ * @hwirq:	hwirq of the input event
+ *
+ * Return event_desc pointer if all went ok else appropriate error value.
+ */
+static struct ti_sci_inta_event_desc *ti_sci_inta_alloc_event(struct ti_sci_inta_vint_desc *vint_desc,
+							      u16 free_bit,
+							      u32 hwirq)
+{
+	struct ti_sci_inta_irq_domain *inta = vint_desc->domain->host_data;
+	struct ti_sci_inta_event_desc *event_desc;
+	u16 dev_id, dev_index;
+	int err;
+
+	dev_id = HWIRQ_TO_DEVID(hwirq);
+	dev_index = HWIRQ_TO_IRQID(hwirq);
+
+	event_desc = &vint_desc->events[free_bit];
+	event_desc->hwirq = hwirq;
+	event_desc->vint_bit = free_bit;
+	event_desc->global_event = ti_sci_get_free_resource(inta->global_event);
+	if (event_desc->global_event == TI_SCI_RESOURCE_NULL)
+		return ERR_PTR(-EINVAL);
+
+	err = inta->sci->ops.rm_irq_ops.set_event_map(inta->sci,
+						      dev_id, dev_index,
+						      inta->pdev->id,
+						      vint_desc->vint_id,
+						      event_desc->global_event,
+						      free_bit);
+	if (err)
+		goto free_global_event;
+
+	return event_desc;
+free_global_event:
+	ti_sci_release_resource(inta->global_event, event_desc->global_event);
+	return ERR_PTR(err);
+}
+
+/**
+ * ti_sci_inta_alloc_irq() -  Allocate an irq within INTA domain
+ * @domain:	irq_domain pointer corresponding to INTA
+ * @hwirq:	hwirq of the input event
+ *
+ * Note: Allocation happens in the following manner:
+ *	- Find a free bit available in any of the vints available in the list.
+ *	- If not found, allocate a vint from the vint pool
+ *	- Attach the free bit to input hwirq.
+ * Return event_desc if all went ok else appropriate error value.
+ */
+static struct ti_sci_inta_event_desc *ti_sci_inta_alloc_irq(struct irq_domain *domain,
+							    u32 hwirq)
+{
+	struct ti_sci_inta_irq_domain *inta = domain->host_data;
+	struct ti_sci_inta_vint_desc *vint_desc = NULL;
+	struct ti_sci_inta_event_desc *event_desc;
+	u16 free_bit;
+
+	mutex_lock(&inta->vint_mutex);
+	list_for_each_entry(vint_desc, &inta->vint_list, list) {
+		free_bit = find_first_zero_bit(vint_desc->event_map,
+					       MAX_EVENTS_PER_VINT);
+		if (free_bit != MAX_EVENTS_PER_VINT) {
+			set_bit(free_bit, vint_desc->event_map);
+			goto alloc_event;
+		}
+	}
+
+	/* No free bits available. Allocate a new vint */
+	vint_desc = ti_sci_inta_alloc_parent_irq(domain);
+	if (IS_ERR(vint_desc)) {
+		mutex_unlock(&inta->vint_mutex);
+		return ERR_PTR(PTR_ERR(vint_desc));
+	}
+
+	free_bit = find_first_zero_bit(vint_desc->event_map,
+				       MAX_EVENTS_PER_VINT);
+	set_bit(free_bit, vint_desc->event_map);
+
+alloc_event:
+	event_desc = ti_sci_inta_alloc_event(vint_desc, free_bit, hwirq);
+	if (IS_ERR(event_desc))
+		clear_bit(free_bit, vint_desc->event_map);
+
+	mutex_unlock(&inta->vint_mutex);
+	return event_desc;
+}
+
+/**
+ * ti_sci_inta_free_parent_irq() - Free a parent irq to INTA
+ * @inta:	Pointer to inta domain.
+ * @vint_desc:	Pointer to vint_desc that needs to be freed.
+ */
+static void ti_sci_inta_free_parent_irq(struct ti_sci_inta_irq_domain *inta,
+					struct ti_sci_inta_vint_desc *vint_desc)
+{
+	if (find_first_bit(vint_desc->event_map, MAX_EVENTS_PER_VINT) == MAX_EVENTS_PER_VINT) {
+		list_del(&vint_desc->list);
+		ti_sci_release_resource(inta->vint, vint_desc->vint_id);
+		irq_dispose_mapping(vint_desc->parent_virq);
+		kfree(vint_desc);
+	}
+}
+
+/**
+ * ti_sci_inta_free_irq() - Free an IRQ within INTA domain
+ * @event_desc:	Pointer to event_desc that needs to be freed.
+ * @hwirq:	Hwirq number within INTA domain that needs to be freed
+ */
+static void ti_sci_inta_free_irq(struct ti_sci_inta_event_desc *event_desc,
+				 u32 hwirq)
+{
+	struct ti_sci_inta_vint_desc *vint_desc;
+	struct ti_sci_inta_irq_domain *inta;
+
+	vint_desc = to_vint_desc(event_desc, event_desc->vint_bit);
+	inta = vint_desc->domain->host_data;
+	/* free event irq */
+	mutex_lock(&inta->vint_mutex);
+	inta->sci->ops.rm_irq_ops.free_event_map(inta->sci,
+						 HWIRQ_TO_DEVID(hwirq),
+						 HWIRQ_TO_IRQID(hwirq),
+						 inta->pdev->id,
+						 vint_desc->vint_id,
+						 event_desc->global_event,
+						 event_desc->vint_bit);
+
+	clear_bit(event_desc->vint_bit, vint_desc->event_map);
+	ti_sci_release_resource(inta->global_event, event_desc->global_event);
+	event_desc->global_event = TI_SCI_RESOURCE_NULL;
+	event_desc->hwirq = 0;
+
+	ti_sci_inta_free_parent_irq(inta, vint_desc);
+	mutex_unlock(&inta->vint_mutex);
+}
+
+/**
+ * ti_sci_inta_request_resources() - Allocate resources for input irq
+ * @data: Pointer to corresponding irq_data
+ *
+ * Note: This is the core api where the actual allocation happens for input
+ *	 hwirq. This allocation involves creating a parent irq for vint.
+ *	 If this is done in irq_domain_ops.alloc() then a deadlock is reached
+ *	 for allocation. So this allocation is being done in request_resources()
+ *
+ * Return: 0 if all went well else corresponding error.
+ */
+static int ti_sci_inta_request_resources(struct irq_data *data)
+{
+	struct ti_sci_inta_event_desc *event_desc;
+
+	event_desc = ti_sci_inta_alloc_irq(data->domain, data->hwirq);
+	if (IS_ERR(event_desc))
+		return PTR_ERR(event_desc);
+
+	data->chip_data = event_desc;
+
+	return 0;
+}
+
+/**
+ * ti_sci_inta_release_resources - Release resources for input irq
+ * @data: Pointer to corresponding irq_data
+ *
+ * Note: Corresponding to request_resources(), all the unmapping and deletion
+ *	 of parent vint irqs happens in this api.
+ */
+static void ti_sci_inta_release_resources(struct irq_data *data)
+{
+	struct ti_sci_inta_event_desc *event_desc;
+
+	event_desc = irq_data_get_irq_chip_data(data);
+	ti_sci_inta_free_irq(event_desc, data->hwirq);
+}
+
+/**
+ * ti_sci_inta_manage_event() - Control the event based on the offset
+ * @data:	Pointer to corresponding irq_data
+ * @offset:	register offset using which event is controlled.
+ */
+static void ti_sci_inta_manage_event(struct irq_data *data, u32 offset)
+{
+	struct ti_sci_inta_event_desc *event_desc;
+	struct ti_sci_inta_vint_desc *vint_desc;
+	struct ti_sci_inta_irq_domain *inta;
+
+	event_desc = irq_data_get_irq_chip_data(data);
+	vint_desc = to_vint_desc(event_desc, event_desc->vint_bit);
+	inta = data->domain->host_data;
+
+	writeq_relaxed(BIT(event_desc->vint_bit),
+		       inta->base + vint_desc->vint_id * 0x1000 + offset);
+}
+
+/**
+ * ti_sci_inta_mask_irq() - Mask an event
+ * @data:	Pointer to corresponding irq_data
+ */
+static void ti_sci_inta_mask_irq(struct irq_data *data)
+{
+	ti_sci_inta_manage_event(data, VINT_ENABLE_CLR_OFFSET);
+}
+
+/**
+ * ti_sci_inta_unmask_irq() - Unmask an event
+ * @data:	Pointer to corresponding irq_data
+ */
+static void ti_sci_inta_unmask_irq(struct irq_data *data)
+{
+	ti_sci_inta_manage_event(data, VINT_ENABLE_SET_OFFSET);
+}
+
+/**
+ * ti_sci_inta_ack_irq() - Ack an event
+ * @data:	Pointer to corresponding irq_data
+ */
+static void ti_sci_inta_ack_irq(struct irq_data *data)
+{
+	/*
+	 * Do not clear the event if hardware is capable of sending
+	 * a down event.
+	 */
+	if (irqd_get_trigger_type(data) != IRQF_TRIGGER_HIGH)
+		ti_sci_inta_manage_event(data, VINT_STATUS_OFFSET);
+}
+
+static int ti_sci_inta_set_affinity(struct irq_data *d,
+				    const struct cpumask *mask_val, bool force)
+{
+	return -EINVAL;
+}
+
+/**
+ * ti_sci_inta_set_type() - Update the trigger type of the irq.
+ * @data:	Pointer to corresponding irq_data
+ * @type:	Trigger type as specified by user
+ *
+ * Note: This updates the handle_irq callback for level msi.
+ *
+ * Return 0 if all went well else appropriate error.
+ */
+static int ti_sci_inta_set_type(struct irq_data *data, unsigned int type)
+{
+	/*
+	 * .alloc default sets handle_edge_irq. But if the user specifies
+	 * that IRQ is level MSI, then update the handle to handle_level_irq
+	 */
+	switch (type & IRQ_TYPE_SENSE_MASK) {
+	case IRQF_TRIGGER_HIGH:
+		irq_set_handler_locked(data, handle_level_irq);
+		return 0;
+	case IRQF_TRIGGER_RISING:
+		return 0;
+	default:
+		return -EINVAL;
+	}
+
+	return -EINVAL;
+}
+
+static struct irq_chip ti_sci_inta_irq_chip = {
+	.name			= "INTA",
+	.irq_ack		= ti_sci_inta_ack_irq,
+	.irq_mask		= ti_sci_inta_mask_irq,
+	.irq_set_type		= ti_sci_inta_set_type,
+	.irq_unmask		= ti_sci_inta_unmask_irq,
+	.irq_set_affinity	= ti_sci_inta_set_affinity,
+	.irq_request_resources	= ti_sci_inta_request_resources,
+	.irq_release_resources	= ti_sci_inta_release_resources,
+};
+
+/**
+ * ti_sci_inta_irq_domain_free() - Free an IRQ from the IRQ domain
+ * @domain:	Domain to which the irqs belong
+ * @virq:	base linux virtual IRQ to be freed.
+ * @nr_irqs:	Number of continuous irqs to be freed
+ */
+static void ti_sci_inta_irq_domain_free(struct irq_domain *domain,
+					unsigned int virq, unsigned int nr_irqs)
+{
+	struct irq_data *data = irq_domain_get_irq_data(domain, virq);
+
+	irq_domain_reset_irq_data(data);
+}
+
+/**
+ * ti_sci_inta_irq_domain_alloc() - Allocate Interrupt aggregator IRQs
+ * @domain:	Point to the interrupt aggregator IRQ domain
+ * @virq:	Corresponding Linux virtual IRQ number
+ * @nr_irqs:	Continuous irqs to be allocated
+ * @data:	Pointer to firmware specifier
+ *
+ * No actual allocation happens here.
+ *
+ * Return 0 if all went well else appropriate error value.
+ */
+static int ti_sci_inta_irq_domain_alloc(struct irq_domain *domain,
+					unsigned int virq, unsigned int nr_irqs,
+					void *data)
+{
+	msi_alloc_info_t *arg = data;
+
+	irq_domain_set_info(domain, virq, arg->hwirq, &ti_sci_inta_irq_chip,
+			    NULL, handle_edge_irq, NULL, NULL);
+
+	return 0;
+}
+
+static const struct irq_domain_ops ti_sci_inta_irq_domain_ops = {
+	.free		= ti_sci_inta_irq_domain_free,
+	.alloc		= ti_sci_inta_irq_domain_alloc,
+};
+
+static int ti_sci_inta_irq_domain_probe(struct platform_device *pdev)
+{
+	struct irq_domain *parent_domain, *domain;
+	struct device_node *parent_node, *node;
+	struct ti_sci_inta_irq_domain *inta;
+	struct device *dev = &pdev->dev;
+	struct resource *res;
+	int ret;
+
+	node = dev_of_node(dev);
+	parent_node = of_irq_find_parent(node);
+	if (!parent_node) {
+		dev_err(dev, "Failed to get IRQ parent node\n");
+		return -ENODEV;
+	}
+
+	parent_domain = irq_find_host(parent_node);
+	if (!parent_domain)
+		return -EPROBE_DEFER;
+
+	inta = devm_kzalloc(dev, sizeof(*inta), GFP_KERNEL);
+	if (!inta)
+		return -ENOMEM;
+
+	inta->pdev = pdev;
+	inta->sci = devm_ti_sci_get_by_phandle(dev, "ti,sci");
+	if (IS_ERR(inta->sci)) {
+		ret = PTR_ERR(inta->sci);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "ti,sci read fail %d\n", ret);
+		inta->sci = NULL;
+		return ret;
+	}
+
+	ret = of_property_read_u32(dev->of_node, "ti,sci-dev-id", &pdev->id);
+	if (ret) {
+		dev_err(dev, "missing 'ti,sci-dev-id' property\n");
+		return -EINVAL;
+	}
+
+	inta->vint = devm_ti_sci_get_of_resource(inta->sci, dev, pdev->id,
+						 "ti,sci-rm-range-vint");
+	if (IS_ERR(inta->vint)) {
+		dev_err(dev, "VINT resource allocation failed\n");
+		return PTR_ERR(inta->vint);
+	}
+
+	inta->global_event = devm_ti_sci_get_of_resource(inta->sci, dev, pdev->id,
+						"ti,sci-rm-range-global-event");
+	if (IS_ERR(inta->global_event)) {
+		dev_err(dev, "Global event resource allocation failed\n");
+		return PTR_ERR(inta->global_event);
+	}
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	inta->base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(inta->base))
+		return -ENODEV;
+
+	domain = irq_domain_add_linear(dev_of_node(dev),
+				       ti_sci_get_num_resources(inta->vint),
+				       &ti_sci_inta_irq_domain_ops, inta);
+	if (!domain) {
+		dev_err(dev, "Failed to allocate IRQ domain\n");
+		return -ENOMEM;
+	}
+
+	INIT_LIST_HEAD(&inta->vint_list);
+	mutex_init(&inta->vint_mutex);
+
+	return 0;
+}
+
+static const struct of_device_id ti_sci_inta_irq_domain_of_match[] = {
+	{ .compatible = "ti,sci-inta", },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, ti_sci_inta_irq_domain_of_match);
+
+static struct platform_driver ti_sci_inta_irq_domain_driver = {
+	.probe = ti_sci_inta_irq_domain_probe,
+	.driver = {
+		.name = "ti-sci-inta",
+		.of_match_table = ti_sci_inta_irq_domain_of_match,
+	},
+};
+module_platform_driver(ti_sci_inta_irq_domain_driver);
+
+MODULE_AUTHOR("Lokesh Vutla <lokeshvutla@ticom>");
+MODULE_DESCRIPTION("K3 Interrupt Aggregator driver over TI SCI protocol");
+MODULE_LICENSE("GPL v2");
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
