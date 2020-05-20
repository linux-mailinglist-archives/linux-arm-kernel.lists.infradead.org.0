Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E38A1DB413
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IzRLQRcnCkZ4nvdC1/WQCboMsXXMiBA6C3zVOb+tmXo=; b=Q38gCZh+1v2b5B
	q3btVWkIGeEsezUxvV1S9JPO7jZAGNPzlaugFL0lxq1eg/+jfr2f4wcBxZM5Ac3Y+QZahaDQr8fr8
	jduP+CTZGeA5eRXZ0xQhTq4VecEoyaUfuBdbC2VXEMAGgcAmpLOCO4fqCthEVmSjnv+NZcDGwJ88L
	2VO41E/J5+A9gwigFnG6IvWV8cHzQI9hmt9Mcf1kXBJRIcsdYP5WMYoxRsCrYbZFPgHdrr8mj29Qk
	qCCCc6wORoZN/HaWZhy2WP2VWMH78jFhbql6DX3dEQeQB2j8jkAPQ4SyH8SIgR15n52VWLsoO1Xzh
	owvzD5przieSAYaLlUGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbO8E-0006yy-Ad; Wed, 20 May 2020 12:47:34 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbO6G-0005fl-TJ
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:45:38 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04KCjO8K006238;
 Wed, 20 May 2020 07:45:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589978724;
 bh=EdV6egblQ+ocBa0JHaf2m/BbkT1YLHFKnSXbZ64QL4Y=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=vKVJYt2/TwXh7glrSZ8bR+grpPDCAo1qyr1hmwMDaDFtQYwgcub+KVDfQDu6bWpMe
 8my2J6w8UMTcani3dBU47lO3jrBpDcTfEN87+LNvtYMsYT5qU46KW01EhZNPVJY4Hq
 zqsg1iFp8CcrpaGqtSYZ4vLV4weNNicFN7J92Zrk=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04KCjOEM106911
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 20 May 2020 07:45:24 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 May 2020 07:45:23 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 May 2020 07:45:23 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04KCiuvQ026764;
 Wed, 20 May 2020 07:45:20 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 06/12] irqchip/ti-sci-intr: Add support for INTR being a
 parent to INTR
Date: Wed, 20 May 2020 18:14:48 +0530
Message-ID: <20200520124454.10532-7-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200520124454.10532-1-lokeshvutla@ti.com>
References: <20200520124454.10532-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_054533_057084_47DD6A00 
X-CRM114-Status: GOOD (  21.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishanth Menon <nm@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Driver assumes that Interrupt parent to Interrupt router is always GIC.
This is not true always and an Interrupt Router can be a parent to
Interrupt Router. Update the driver to detect the parent and request the
parent irqs accordingly.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 drivers/irqchip/irq-ti-sci-intr.c | 150 ++++++++++++++++++------------
 1 file changed, 91 insertions(+), 59 deletions(-)

diff --git a/drivers/irqchip/irq-ti-sci-intr.c b/drivers/irqchip/irq-ti-sci-intr.c
index 59d51a20bbd8..0b73816e77fc 100644
--- a/drivers/irqchip/irq-ti-sci-intr.c
+++ b/drivers/irqchip/irq-ti-sci-intr.c
@@ -17,29 +17,18 @@
 #include <linux/of_irq.h>
 #include <linux/soc/ti/ti_sci_protocol.h>
 
-#define TI_SCI_DEV_ID_MASK	0xffff
-#define TI_SCI_DEV_ID_SHIFT	16
-#define TI_SCI_IRQ_ID_MASK	0xffff
-#define TI_SCI_IRQ_ID_SHIFT	0
-#define HWIRQ_TO_DEVID(hwirq)	(((hwirq) >> (TI_SCI_DEV_ID_SHIFT)) & \
-				 (TI_SCI_DEV_ID_MASK))
-#define HWIRQ_TO_IRQID(hwirq)	((hwirq) & (TI_SCI_IRQ_ID_MASK))
-#define TO_HWIRQ(dev, index)	((((dev) & TI_SCI_DEV_ID_MASK) << \
-				 TI_SCI_DEV_ID_SHIFT) | \
-				((index) & TI_SCI_IRQ_ID_MASK))
-
 /**
  * struct ti_sci_intr_irq_domain - Structure representing a TISCI based
  *				   Interrupt Router IRQ domain.
  * @sci:	Pointer to TISCI handle
- * @dst_irq:	TISCI resource pointer representing GIC irq controller.
- * @dst_id:	TISCI device ID of the GIC irq controller.
+ * @out_irqs:	TISCI resource pointer representing INTR irqs.
+ * @pdev:	Pointer to platform device.
  * @type:	Specifies the trigger type supported by this Interrupt Router
  */
 struct ti_sci_intr_irq_domain {
 	const struct ti_sci_handle *sci;
-	struct ti_sci_resource *dst_irq;
-	u32 dst_id;
+	struct ti_sci_resource *out_irqs;
+	struct platform_device *pdev;
 	u32 type;
 };
 
@@ -70,15 +59,44 @@ static int ti_sci_intr_irq_domain_translate(struct irq_domain *domain,
 {
 	struct ti_sci_intr_irq_domain *intr = domain->host_data;
 
-	if (fwspec->param_count != 2)
+	if (fwspec->param_count != 1)
 		return -EINVAL;
 
-	*hwirq = TO_HWIRQ(fwspec->param[0], fwspec->param[1]);
+	*hwirq = fwspec->param[0];
 	*type = intr->type;
 
 	return 0;
 }
 
+/**
+ * ti_sci_intr_xlate_irq() - Translate hwirq to parent's hwirq.
+ * @intr:	IRQ domain corresponding to Interrupt Router
+ * @irq:	Hardware irq corresponding to the above irq domain
+ *
+ * Return parent irq number if translation is available else -ENOENT.
+ */
+static int ti_sci_intr_xlate_irq(struct ti_sci_intr_irq_domain *intr, u32 irq)
+{
+	struct device_node *np = dev_of_node(&intr->pdev->dev);
+	u32 base, pbase, size, len;
+	const __be32 *range;
+
+	range = of_get_property(np, "ti,interrupt-ranges", &len);
+	if (!range)
+		return irq;
+
+	for (len /= sizeof(*range); len >= 3; len -= 3) {
+		base = be32_to_cpu(*range++);
+		pbase = be32_to_cpu(*range++);
+		size = be32_to_cpu(*range++);
+
+		if (base <= irq && irq < base + size)
+			return irq - base + pbase;
+	}
+
+	return -ENOENT;
+}
+
 /**
  * ti_sci_intr_irq_domain_free() - Free the specified IRQs from the domain.
  * @domain:	Domain to which the irqs belong
@@ -89,66 +107,77 @@ static void ti_sci_intr_irq_domain_free(struct irq_domain *domain,
 					unsigned int virq, unsigned int nr_irqs)
 {
 	struct ti_sci_intr_irq_domain *intr = domain->host_data;
-	struct irq_data *data, *parent_data;
-	u16 dev_id, irq_index;
+	struct irq_data *data;
+	int out_irq;
 
-	parent_data = irq_domain_get_irq_data(domain->parent, virq);
 	data = irq_domain_get_irq_data(domain, virq);
-	irq_index = HWIRQ_TO_IRQID(data->hwirq);
-	dev_id = HWIRQ_TO_DEVID(data->hwirq);
+	out_irq = (uintptr_t)data->chip_data;
 
-	intr->sci->ops.rm_irq_ops.free_irq(intr->sci, dev_id, irq_index,
-					   intr->dst_id, parent_data->hwirq);
-	ti_sci_release_resource(intr->dst_irq, parent_data->hwirq);
+	intr->sci->ops.rm_irq_ops.free_irq(intr->sci,
+					   intr->pdev->id, data->hwirq,
+					   intr->pdev->id, out_irq);
+	ti_sci_release_resource(intr->out_irqs, out_irq);
 	irq_domain_free_irqs_parent(domain, virq, 1);
 	irq_domain_reset_irq_data(data);
 }
 
 /**
- * ti_sci_intr_alloc_gic_irq() - Allocate GIC specific IRQ
+ * ti_sci_intr_alloc_parent_irq() - Allocate parent IRQ
  * @domain:	Pointer to the interrupt router IRQ domain
  * @virq:	Corresponding Linux virtual IRQ number
  * @hwirq:	Corresponding hwirq for the IRQ within this IRQ domain
  *
- * Returns 0 if all went well else appropriate error pointer.
+ * Returns parent irq if all went well else appropriate error pointer.
  */
-static int ti_sci_intr_alloc_gic_irq(struct irq_domain *domain,
-				     unsigned int virq, u32 hwirq)
+static int ti_sci_intr_alloc_parent_irq(struct irq_domain *domain,
+					unsigned int virq, u32 hwirq)
 {
 	struct ti_sci_intr_irq_domain *intr = domain->host_data;
+	struct device_node *parent_node;
 	struct irq_fwspec fwspec;
-	u16 dev_id, irq_index;
-	u16 dst_irq;
-	int err;
-
-	dev_id = HWIRQ_TO_DEVID(hwirq);
-	irq_index = HWIRQ_TO_IRQID(hwirq);
+	u16 out_irq, p_hwirq;
+	int err = 0;
 
-	dst_irq = ti_sci_get_free_resource(intr->dst_irq);
-	if (dst_irq == TI_SCI_RESOURCE_NULL)
+	out_irq = ti_sci_get_free_resource(intr->out_irqs);
+	if (out_irq == TI_SCI_RESOURCE_NULL)
 		return -EINVAL;
 
-	fwspec.fwnode = domain->parent->fwnode;
-	fwspec.param_count = 3;
-	fwspec.param[0] = 0;	/* SPI */
-	fwspec.param[1] = dst_irq - 32; /* SPI offset */
-	fwspec.param[2] = intr->type;
+	p_hwirq = ti_sci_intr_xlate_irq(intr, out_irq);
+	if (p_hwirq < 0)
+		goto err_irqs;
+
+	parent_node = of_irq_find_parent(dev_of_node(&intr->pdev->dev));
+	fwspec.fwnode = of_node_to_fwnode(parent_node);
+	if (of_property_read_u32(parent_node, "#interrupt-cells",
+				 &fwspec.param_count))
+		goto err_irqs;
+
+	if (of_device_is_compatible(parent_node, "arm,gic-v3")) {
+		/* Parent is GIC */
+		fwspec.param[0] = 0;	/* SPI */
+		fwspec.param[1] = p_hwirq - 32; /* SPI offset */
+		fwspec.param[2] = intr->type;
+	} else {
+		/* Parent is Interrupt Router */
+		fwspec.param[0] = p_hwirq;
+	}
 
 	err = irq_domain_alloc_irqs_parent(domain, virq, 1, &fwspec);
 	if (err)
 		goto err_irqs;
 
-	err = intr->sci->ops.rm_irq_ops.set_irq(intr->sci, dev_id, irq_index,
-						intr->dst_id, dst_irq);
+	err = intr->sci->ops.rm_irq_ops.set_irq(intr->sci,
+						intr->pdev->id, hwirq,
+						intr->pdev->id, out_irq);
 	if (err)
 		goto err_msg;
 
-	return 0;
+	return p_hwirq;
 
 err_msg:
 	irq_domain_free_irqs_parent(domain, virq, 1);
 err_irqs:
-	ti_sci_release_resource(intr->dst_irq, dst_irq);
+	ti_sci_release_resource(intr->out_irqs, out_irq);
 	return err;
 }
 
@@ -168,18 +197,19 @@ static int ti_sci_intr_irq_domain_alloc(struct irq_domain *domain,
 	struct irq_fwspec *fwspec = data;
 	unsigned long hwirq;
 	unsigned int flags;
-	int err;
+	int err, p_hwirq;
 
 	err = ti_sci_intr_irq_domain_translate(domain, fwspec, &hwirq, &flags);
 	if (err)
 		return err;
 
-	err = ti_sci_intr_alloc_gic_irq(domain, virq, hwirq);
-	if (err)
-		return err;
+	p_hwirq = ti_sci_intr_alloc_parent_irq(domain, virq, hwirq);
+	if (p_hwirq < 0)
+		return p_hwirq;
 
 	irq_domain_set_hwirq_and_chip(domain, virq, hwirq,
-				      &ti_sci_intr_irq_chip, NULL);
+				      &ti_sci_intr_irq_chip,
+				      (void *)(uintptr_t)p_hwirq);
 
 	return 0;
 }
@@ -214,6 +244,7 @@ static int ti_sci_intr_irq_domain_probe(struct platform_device *pdev)
 	if (!intr)
 		return -ENOMEM;
 
+	intr->pdev = pdev;
 	ret = of_property_read_u32(dev_of_node(dev), "ti,intr-trigger-type",
 				   &intr->type);
 	if (ret) {
@@ -230,19 +261,18 @@ static int ti_sci_intr_irq_domain_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = of_property_read_u32(dev_of_node(dev), "ti,sci-dst-id",
-				   &intr->dst_id);
+	ret = of_property_read_u32(dev_of_node(dev), "ti,sci-dev-id",
+				   &pdev->id);
 	if (ret) {
-		dev_err(dev, "missing 'ti,sci-dst-id' property\n");
+		dev_err(dev, "missing 'ti,sci-dev-id' property\n");
 		return -EINVAL;
 	}
 
-	intr->dst_irq = devm_ti_sci_get_of_resource(intr->sci, dev,
-						    intr->dst_id,
-						    "ti,sci-rm-range-girq");
-	if (IS_ERR(intr->dst_irq)) {
+	intr->out_irqs = devm_ti_sci_get_resource(intr->sci, dev, pdev->id,
+					TI_SCI_RESASG_SUBTYPE_IR_OUTPUT);
+	if (IS_ERR(intr->out_irqs)) {
 		dev_err(dev, "Destination irq resource allocation failed\n");
-		return PTR_ERR(intr->dst_irq);
+		return PTR_ERR(intr->out_irqs);
 	}
 
 	domain = irq_domain_add_hierarchy(parent_domain, 0, 0, dev_of_node(dev),
@@ -252,6 +282,8 @@ static int ti_sci_intr_irq_domain_probe(struct platform_device *pdev)
 		return -ENOMEM;
 	}
 
+	dev_info(dev, "Interrupt Router %d domain created\n", pdev->id);
+
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
