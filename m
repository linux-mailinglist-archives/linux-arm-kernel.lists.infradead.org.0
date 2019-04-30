Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAFBF410
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 12:17:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PYKYI91Sl2mjClAWDW7qKdPWT4HNMzWNz+H0F5KshIk=; b=olO+FSHtKVBc0w
	RKLb5YTyogYOWb316tzRsuV006bo0kKvUTw0DtB3JE7EgWm4Fxugm98BVrpkW8KzO4EkJwMJQiP7O
	lGnszy1MlbefKrRJtJ7YlMfRpuh75rLuWHeW78ky+OCpJnkIfj8gikewauXvZm5fztHnCrnXx/pij
	YDYv4Bpg7SkwfH7iPYSWKHSn2wgVA0+5lyjZCbslDNHzxFAwSNjBZSoFnMdl1OEA9c7kqhijApYSl
	YWFHuOQtAn7lRNT3ZZoou9CSuodKPqbVL5nZbORfdJJFFA51kO3tgrCRLvg1hgpKtT4pvK7r2yvVh
	cSpmOOphu3wfjk6CPTDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPow-0002BL-VF; Tue, 30 Apr 2019 10:17:06 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPmE-00079S-Fw
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 10:14:28 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x3UAE5GO044451;
 Tue, 30 Apr 2019 05:14:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1556619245;
 bh=9T1+9YJFLids0gdsas5L4APsMX65K8+z0t8DADJ616k=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=vOP3IF7HsaYfY131hD9QwEuI2zZ164xqYnP1dsKwho3tN+rOJft3gAtUEmQMIDO2o
 6sD64+Uh2JjCHC4GShfe0rdbyXpGCPx7Yivrj+0FMVBGSO8nF69GWZY6kwlTJ9NLPU
 TNArGxbIlk5+kevAfdKypGkW9eCBxig9rQUZZNg4=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x3UAE5V2022606
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Apr 2019 05:14:05 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 30
 Apr 2019 05:14:04 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 30 Apr 2019 05:14:04 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x3UAD0YF085082;
 Tue, 30 Apr 2019 05:14:00 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Marc Zyngier <marc.zyngier@arm.com>, Santosh Shilimkar
 <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>, Nishanth Menon
 <nm@ti.com>, <tglx@linutronix.de>, <jason@lakedaemon.net>
Subject: [PATCH v8 13/14] irqchip: ti-sci-inta: Add msi domain support
Date: Tue, 30 Apr 2019 15:42:29 +0530
Message-ID: <20190430101230.21794-14-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190430101230.21794-1-lokeshvutla@ti.com>
References: <20190430101230.21794-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_031419_249368_5054E1F3 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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

Add a msi domain that is child to the INTA domain. Clients
uses the INTA msi bus layer to allocate irqs in this
msi domain.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
Changes sinece v7:
-None

 drivers/irqchip/Kconfig           |  1 +
 drivers/irqchip/irq-ti-sci-inta.c | 40 ++++++++++++++++++++++++++++++-
 2 files changed, 40 insertions(+), 1 deletion(-)

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 7c84a71bcd88..1fab40487d63 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -441,6 +441,7 @@ config TI_SCI_INTA_IRQCHIP
 	depends on TI_SCI_PROTOCOL
 	select IRQ_DOMAIN
 	select IRQ_DOMAIN_HIERARCHY
+	select TI_SCI_INTA_MSI_DOMAIN
 	help
 	  This enables the irqchip driver support for K3 Interrupt aggregator
 	  over TI System Control Interface available on some new TI's SoCs.
diff --git a/drivers/irqchip/irq-ti-sci-inta.c b/drivers/irqchip/irq-ti-sci-inta.c
index 87e0abe0041f..011b60a49e3f 100644
--- a/drivers/irqchip/irq-ti-sci-inta.c
+++ b/drivers/irqchip/irq-ti-sci-inta.c
@@ -18,6 +18,7 @@
 #include <linux/of_irq.h>
 #include <linux/of_platform.h>
 #include <linux/irqchip/chained_irq.h>
+#include <linux/soc/ti/ti_sci_inta_msi.h>
 #include <linux/soc/ti/ti_sci_protocol.h>
 #include <asm-generic/msi.h>
 
@@ -28,6 +29,9 @@
 #define HWIRQ_TO_DEVID(hwirq)	(((hwirq) >> (TI_SCI_DEV_ID_SHIFT)) & \
 				 (TI_SCI_DEV_ID_MASK))
 #define HWIRQ_TO_IRQID(hwirq)	((hwirq) & (TI_SCI_IRQ_ID_MASK))
+#define TO_HWIRQ(dev, index)	((((dev) & TI_SCI_DEV_ID_MASK) << \
+				 TI_SCI_DEV_ID_SHIFT) | \
+				((index) & TI_SCI_IRQ_ID_MASK))
 
 #define MAX_EVENTS_PER_VINT	64
 #define VINT_ENABLE_SET_OFFSET	0x0
@@ -484,9 +488,34 @@ static const struct irq_domain_ops ti_sci_inta_irq_domain_ops = {
 	.alloc		= ti_sci_inta_irq_domain_alloc,
 };
 
+static struct irq_chip ti_sci_inta_msi_irq_chip = {
+	.name			= "MSI-INTA",
+	.flags			= IRQCHIP_SUPPORTS_LEVEL_MSI,
+};
+
+static void ti_sci_inta_msi_set_desc(msi_alloc_info_t *arg,
+				     struct msi_desc *desc)
+{
+	struct platform_device *pdev = to_platform_device(desc->dev);
+
+	arg->desc = desc;
+	arg->hwirq = TO_HWIRQ(pdev->id, desc->inta.dev_index);
+}
+
+static struct msi_domain_ops ti_sci_inta_msi_ops = {
+	.set_desc	= ti_sci_inta_msi_set_desc,
+};
+
+static struct msi_domain_info ti_sci_inta_msi_domain_info = {
+	.flags	= (MSI_FLAG_USE_DEF_DOM_OPS | MSI_FLAG_USE_DEF_CHIP_OPS |
+		   MSI_FLAG_LEVEL_CAPABLE),
+	.ops	= &ti_sci_inta_msi_ops,
+	.chip	= &ti_sci_inta_msi_irq_chip,
+};
+
 static int ti_sci_inta_irq_domain_probe(struct platform_device *pdev)
 {
-	struct irq_domain *parent_domain, *domain;
+	struct irq_domain *parent_domain, *domain, *msi_domain;
 	struct device_node *parent_node, *node;
 	struct ti_sci_inta_irq_domain *inta;
 	struct device *dev = &pdev->dev;
@@ -551,6 +580,15 @@ static int ti_sci_inta_irq_domain_probe(struct platform_device *pdev)
 		return -ENOMEM;
 	}
 
+	msi_domain = ti_sci_inta_msi_create_irq_domain(of_node_to_fwnode(node),
+						&ti_sci_inta_msi_domain_info,
+						domain);
+	if (!msi_domain) {
+		irq_domain_remove(domain);
+		dev_err(dev, "Failed to allocate msi domain\n");
+		return -ENOMEM;
+	}
+
 	INIT_LIST_HEAD(&inta->vint_list);
 	mutex_init(&inta->vint_mutex);
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
