Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C826225235
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 16:32:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OihOW1C3SDbZ4pZzK/9IuA4qFlQ9GYoim6+SfWt0Mw8=; b=ejUbkF8wz9xb8w
	hvjdVHehlS1vDy7xfk1rHMjjSMC4TDo/2YpGab0S5ioGdejKwx3xiog5vUhbJDGxEP9HlSv+y/hqA
	xL9755fYdo3J5i5x81pesZPEyaBDLsaFSYdqBwqUOUce8PZVzI6R5+f5PKev6zxunaDUBwMAokGPZ
	dysxF5JCJwXxCkaHf6Moqzedr0O57a10UPnDONvmYfn1HhQxCs9z+5hh8txsNWgAoamObKvT5Imvr
	W8fNNCDnWGBaPgAo9mue1xObaP6cIiDLY9O9HyMh+eZhyFcWRpB7iUMpbXK5MvLeB/96W/LsRcta6
	O28Alo/7LfE3VfN0kcmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5op-0002Xv-Rt; Tue, 21 May 2019 14:32:43 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5nl-0001Sk-5D
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 14:31:43 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost.localdomain
 (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 8F8DF24001D;
 Tue, 21 May 2019 14:31:29 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jens Axboe <axboe@kernel.dk>, Hans de Goede <hdegoede@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v4 08/10] ata: ahci: mvebu: Add support for A8k legacy DT
 bindings
Date: Tue, 21 May 2019 16:30:21 +0200
Message-Id: <20190521143023.31810-9-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190521143023.31810-1-miquel.raynal@bootlin.com>
References: <20190521143023.31810-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_073138_016569_FF3C0B6B 
X-CRM114-Status: GOOD (  19.87  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Baruch Siach <baruch@tkos.co.il>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, linux-ide@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CP110 SATA unit has 2 ports, and a dedicated ICU entry per
port. In the past, the AHCI SATA driver only supported one interrupt
per SATA unit. To solve this conflict, the 2 SATA wired interrupts in
the South-Bridge got configured as 1 GIC interrupt in the
North-Bridge, regardless of the number of SATA ports actually
enabled/in use, and the DT bindings only referenced the interrupt of
one port.

Since then, this limitation has been addressed and this patch ensures
backward compatibility with old DTs not describing SATA ports
correctly directly from the AHCI MVEBU driver. This way, we will be
able to drop the hack from the ICU driver. IOW, when the A8k
compatible string is used and there is no sub-nodes in the DT, we
fake the creation and mapping of the second (missing) interrupt.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/ata/ahci_mvebu.c       | 29 ++++++++++++++++++++++++++++-
 drivers/ata/libahci_platform.c |  3 +++
 include/linux/ahci_platform.h  |  1 +
 3 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/ata/ahci_mvebu.c b/drivers/ata/ahci_mvebu.c
index 8671aa8179fa..8c981b8d6e4d 100644
--- a/drivers/ata/ahci_mvebu.c
+++ b/drivers/ata/ahci_mvebu.c
@@ -16,6 +16,7 @@
 #include <linux/mbus.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/of_irq.h>
 #include <linux/platform_device.h>
 #include "ahci.h"
 
@@ -28,9 +29,13 @@
 #define AHCI_WINDOW_BASE(win)	(0x64 + ((win) << 4))
 #define AHCI_WINDOW_SIZE(win)	(0x68 + ((win) << 4))
 
+#define ICU_SATA0_ICU_ID 109
+#define ICU_SATA1_ICU_ID 107
+
 struct ahci_mvebu_plat_data {
 	int (*plat_config)(struct ahci_host_priv *hpriv, struct device *dev);
 	unsigned int host_flags;
+	unsigned int resource_flags;
 };
 
 static void ahci_mvebu_mbus_config(struct ahci_host_priv *hpriv,
@@ -101,6 +106,27 @@ static int ahci_mvebu_armada_3700_config(struct ahci_host_priv *hpriv,
 static int ahci_mvebu_armada_8k_config(struct ahci_host_priv *hpriv,
 				       struct device *dev)
 {
+	struct device_node *np = of_irq_find_parent(dev->of_node);
+	struct irq_data *irqd = irq_get_irq_data(hpriv->irqs[0]);
+	int host_irq = irqd ? irqd_to_hwirq(irqd) : 0;
+	int missing_irq = (host_irq == ICU_SATA1_ICU_ID) ?
+		ICU_SATA0_ICU_ID : ICU_SATA1_ICU_ID;
+	struct irq_fwspec fwspec = {
+		.fwnode = of_node_to_fwnode(np),
+		.param_count = 2,
+		.param = {missing_irq, IRQ_TYPE_LEVEL_HIGH},
+	};
+
+	if (of_get_child_count(dev->of_node))
+		return 0;
+
+	hpriv->irqs[1] = irq_create_fwspec_mapping(&fwspec);
+	if (hpriv->irqs[1]) {
+		hpriv->flags |= AHCI_HFLAG_MULTI_MSI;
+		hpriv->get_irq_vector = ahci_get_per_port_irq_vector;
+		hpriv->mask_port_map = GENMASK(1, 0);
+	}
+
 	return 0;
 }
 
@@ -200,7 +226,7 @@ static int ahci_mvebu_probe(struct platform_device *pdev)
 	if (!pdata)
 		return -EINVAL;
 
-	hpriv = ahci_platform_get_resources(pdev, 0);
+	hpriv = ahci_platform_get_resources(pdev, pdata->resource_flags);
 	if (IS_ERR(hpriv))
 		return PTR_ERR(hpriv);
 
@@ -240,6 +266,7 @@ static const struct ahci_mvebu_plat_data ahci_mvebu_armada_3700_plat_data = {
 
 static const struct ahci_mvebu_plat_data ahci_mvebu_armada_8k_plat_data = {
 	.plat_config = ahci_mvebu_armada_8k_config,
+	.resource_flags = AHCI_PLATFORM_A8K_QUIRK,
 };
 
 static const struct of_device_id ahci_mvebu_of_match[] = {
diff --git a/drivers/ata/libahci_platform.c b/drivers/ata/libahci_platform.c
index 347ff14aedd2..620e5f27fdd7 100644
--- a/drivers/ata/libahci_platform.c
+++ b/drivers/ata/libahci_platform.c
@@ -484,6 +484,9 @@ struct ahci_host_priv *ahci_platform_get_resources(struct platform_device *pdev,
 	if (!child_nodes)
 		hpriv->nports = 1;
 
+	if (!child_nodes && flags & AHCI_PLATFORM_A8K_QUIRK)
+		hpriv->nports = 2;
+
 	hpriv->phys = devm_kcalloc(dev, hpriv->nports, sizeof(*hpriv->phys), GFP_KERNEL);
 	if (!hpriv->phys) {
 		rc = -ENOMEM;
diff --git a/include/linux/ahci_platform.h b/include/linux/ahci_platform.h
index eaedca5fe6fc..57465ba6bb15 100644
--- a/include/linux/ahci_platform.h
+++ b/include/linux/ahci_platform.h
@@ -44,5 +44,6 @@ int ahci_platform_suspend(struct device *dev);
 int ahci_platform_resume(struct device *dev);
 
 #define AHCI_PLATFORM_GET_RESETS	0x01
+#define AHCI_PLATFORM_A8K_QUIRK		0x02
 
 #endif /* _AHCI_PLATFORM_H */
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
