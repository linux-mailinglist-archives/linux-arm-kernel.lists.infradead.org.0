Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA3725215
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 16:31:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pqtef1W7mIKp16UmqXT9gOyNwulLkBHoqU3Xvq9jNUI=; b=Azc/KwZZQCXExa
	EJzGhDZiQCH4Je4TRbIxBnZRK5E7uOfwh8t6HJGDoZeGlBSYpVNJlMlNRCJ/2ocZBXFHUPfQXgwwj
	P/fd3ebddjv4Y616eqzDb3VtDbIB9c8BhiabXk8pHQdzmiLUkBiadNTlcyuBc2zg5XwxASlSSJsYm
	7ftVAdT5eXUfFiKLqeIHvKBsnTdLKckxDiTTY5pN5LZevA4EGGpWjfZg677oM8W+Odio5z7p2FQUv
	JlGHUmC2C9Tjnhh0Hlu66Yhdf8AkTfm46KxPsz6oObPyfrboHaQU7stw+/dw8DrFCX2+22UspXu89
	GcLNrYImfpFN/hAWmUyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5nZ-00017W-4F; Tue, 21 May 2019 14:31:25 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5nG-0000pr-Fv
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 14:31:13 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost.localdomain
 (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 30B1B240004;
 Tue, 21 May 2019 14:30:56 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jens Axboe <axboe@kernel.dk>, Hans de Goede <hdegoede@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v4 02/10] ata: ahci: Support per-port interrupts
Date: Tue, 21 May 2019 16:30:15 +0200
Message-Id: <20190521143023.31810-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190521143023.31810-1-miquel.raynal@bootlin.com>
References: <20190521143023.31810-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_073107_295777_64A0061D 
X-CRM114-Status: GOOD (  20.50  )
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

Right now the ATA core only allows IPs to use a single interrupt. Some
of them (for instance the Armada-CP110 one) actually has one interrupt
per port. Add some logic to support such situation.

We consider that either there is one single interrupt declared in the
main IP node, or there are per-port interrupts, each of them being
declared in the port sub-nodes.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/ata/acard-ahci.c       |  2 +-
 drivers/ata/ahci.c             |  8 +++-
 drivers/ata/ahci.h             |  3 +-
 drivers/ata/libahci.c          |  2 +-
 drivers/ata/libahci_platform.c | 67 ++++++++++++++++++++++++++++------
 drivers/ata/sata_highbank.c    |  2 +-
 6 files changed, 68 insertions(+), 16 deletions(-)

diff --git a/drivers/ata/acard-ahci.c b/drivers/ata/acard-ahci.c
index 583e366be7e2..9414b81e994c 100644
--- a/drivers/ata/acard-ahci.c
+++ b/drivers/ata/acard-ahci.c
@@ -434,7 +434,7 @@ static int acard_ahci_init_one(struct pci_dev *pdev, const struct pci_device_id
 	if (!hpriv)
 		return -ENOMEM;
 
-	hpriv->irq = pdev->irq;
+	hpriv->irqs[0] = pdev->irq;
 	hpriv->flags |= (unsigned long)pi.private_data;
 
 	if (!(hpriv->flags & AHCI_HFLAG_NO_MSI))
diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 021ce46e2e57..bc37a34fa043 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -1817,7 +1817,13 @@ static int ahci_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
 		/* legacy intx interrupts */
 		pci_intx(pdev, 1);
 	}
-	hpriv->irq = pci_irq_vector(pdev, 0);
+
+	hpriv->irqs = devm_kzalloc(dev, sizeof(*hpriv->irqs) * n_ports,
+				   GFP_KERNEL);
+	if (!hpriv->irqs)
+		return -ENOMEM;
+
+	hpriv->irqs[0] = pci_irq_vector(pdev, 0);
 
 	if (!(hpriv->cap & HOST_CAP_SSS) || ahci_ignore_sss)
 		host->flags |= ATA_HOST_PARALLEL_SCAN;
diff --git a/drivers/ata/ahci.h b/drivers/ata/ahci.h
index 8810475f307a..f569f6a0d9f5 100644
--- a/drivers/ata/ahci.h
+++ b/drivers/ata/ahci.h
@@ -363,7 +363,7 @@ struct ahci_host_priv {
 	struct phy		**phys;
 	unsigned		nports;		/* Number of ports */
 	void			*plat_data;	/* Other platform data */
-	unsigned int		irq;		/* interrupt line */
+	unsigned int		*irqs;		/* interrupt line(s) */
 	/*
 	 * Optional ahci_start_engine override, if not set this gets set to the
 	 * default ahci_start_engine during ahci_save_initial_config, this can
@@ -434,6 +434,7 @@ void ahci_print_info(struct ata_host *host, const char *scc_s);
 int ahci_host_activate(struct ata_host *host, struct scsi_host_template *sht);
 void ahci_error_handler(struct ata_port *ap);
 u32 ahci_handle_port_intr(struct ata_host *host, u32 irq_masked);
+int ahci_get_per_port_irq_vector(struct ata_host *host, int port);
 
 static inline void __iomem *__ahci_port_base(struct ata_host *host,
 					     unsigned int port_no)
diff --git a/drivers/ata/libahci.c b/drivers/ata/libahci.c
index 9db6f488db59..9d275ad4e14c 100644
--- a/drivers/ata/libahci.c
+++ b/drivers/ata/libahci.c
@@ -2600,7 +2600,7 @@ static int ahci_host_activate_multi_irqs(struct ata_host *host,
 int ahci_host_activate(struct ata_host *host, struct scsi_host_template *sht)
 {
 	struct ahci_host_priv *hpriv = host->private_data;
-	int irq = hpriv->irq;
+	int irq = hpriv->irqs[0];
 	int rc;
 
 	if (hpriv->flags & AHCI_HFLAG_MULTI_MSI) {
diff --git a/drivers/ata/libahci_platform.c b/drivers/ata/libahci_platform.c
index 81b1a3332ed6..347ff14aedd2 100644
--- a/drivers/ata/libahci_platform.c
+++ b/drivers/ata/libahci_platform.c
@@ -24,6 +24,7 @@
 #include <linux/ahci_platform.h>
 #include <linux/phy/phy.h>
 #include <linux/pm_runtime.h>
+#include <linux/of_irq.h>
 #include <linux/of_platform.h>
 #include <linux/reset.h>
 #include "ahci.h"
@@ -95,6 +96,14 @@ static void ahci_platform_disable_phys(struct ahci_host_priv *hpriv)
 	}
 }
 
+int ahci_get_per_port_irq_vector(struct ata_host *host, int port)
+{
+	struct ahci_host_priv *hpriv = host->private_data;
+
+	return hpriv->irqs[port];
+}
+EXPORT_SYMBOL_GPL(ahci_get_per_port_irq_vector);
+
 /**
  * ahci_platform_enable_clks - Enable platform clocks
  * @hpriv: host private area to store config values
@@ -385,6 +394,7 @@ static int ahci_platform_get_regulator(struct ahci_host_priv *hpriv, u32 port,
  *    or for non devicetree enabled platforms a single clock
  * 4) resets, if flags has AHCI_PLATFORM_GET_RESETS (optional)
  * 5) phys (optional)
+ * 6) interrupt(s)
  *
  * RETURNS:
  * The allocated ahci_host_priv on success, otherwise an ERR_PTR value
@@ -396,7 +406,7 @@ struct ahci_host_priv *ahci_platform_get_resources(struct platform_device *pdev,
 	struct ahci_host_priv *hpriv;
 	struct clk *clk;
 	struct device_node *child;
-	int i, enabled_ports = 0, rc = -ENOMEM, child_nodes;
+	int i, enabled_ports = 0, rc = -ENOMEM, child_nodes, ctrl_irq;
 	u32 mask_port_map = 0;
 
 	if (!devres_open_group(dev, NULL, GFP_KERNEL))
@@ -489,10 +499,30 @@ struct ahci_host_priv *ahci_platform_get_resources(struct platform_device *pdev,
 		goto err_out;
 	}
 
+	hpriv->irqs = devm_kzalloc(dev, sizeof(*hpriv->irqs) * hpriv->nports,
+				   GFP_KERNEL);
+	if (!hpriv->irqs) {
+		rc = -ENOMEM;
+		goto err_out;
+	}
+
+	ctrl_irq = platform_get_irq(pdev, 0);
+	if (ctrl_irq < 0) {
+		if (ctrl_irq == -EPROBE_DEFER) {
+			rc = ctrl_irq;
+			goto err_out;
+		}
+		ctrl_irq = 0;
+	}
+
+	if (ctrl_irq > 0)
+		hpriv->irqs[0] = ctrl_irq;
+
 	if (child_nodes) {
 		for_each_child_of_node(dev->of_node, child) {
 			u32 port;
 			struct platform_device *port_dev __maybe_unused;
+			int port_irq;
 
 			if (!of_device_is_available(child))
 				continue;
@@ -521,6 +551,18 @@ struct ahci_host_priv *ahci_platform_get_resources(struct platform_device *pdev,
 			}
 #endif
 
+			if (!ctrl_irq) {
+				port_irq = of_irq_get(child, 0);
+				if (!port_irq)
+					port_irq = -EINVAL;
+				if (port_irq < 0) {
+					rc = port_irq;
+					goto err_out;
+				}
+
+				hpriv->irqs[port] = port_irq;
+			}
+
 			rc = ahci_platform_get_phy(hpriv, port, dev, child);
 			if (rc)
 				goto err_out;
@@ -548,6 +590,18 @@ struct ahci_host_priv *ahci_platform_get_resources(struct platform_device *pdev,
 		if (rc == -EPROBE_DEFER)
 			goto err_out;
 	}
+
+	if (!ctrl_irq && !enabled_ports) {
+		dev_err(&pdev->dev, "No IRQ defined\n");
+		rc = -ENODEV;
+		goto err_out;
+	}
+
+	if (!ctrl_irq && enabled_ports > 1) {
+		hpriv->flags |= AHCI_HFLAG_MULTI_MSI;
+		hpriv->get_irq_vector = ahci_get_per_port_irq_vector;
+	}
+
 	pm_runtime_enable(dev);
 	pm_runtime_get_sync(dev);
 	hpriv->got_runtime_pm = true;
@@ -584,16 +638,7 @@ int ahci_platform_init_host(struct platform_device *pdev,
 	struct ata_port_info pi = *pi_template;
 	const struct ata_port_info *ppi[] = { &pi, NULL };
 	struct ata_host *host;
-	int i, irq, n_ports, rc;
-
-	irq = platform_get_irq(pdev, 0);
-	if (irq <= 0) {
-		if (irq != -EPROBE_DEFER)
-			dev_err(dev, "no irq\n");
-		return irq;
-	}
-
-	hpriv->irq = irq;
+	int i, n_ports, rc;
 
 	/* prepare host */
 	pi.private_data = (void *)(unsigned long)hpriv->flags;
diff --git a/drivers/ata/sata_highbank.c b/drivers/ata/sata_highbank.c
index c8fc9280d6e4..dcfdab20021b 100644
--- a/drivers/ata/sata_highbank.c
+++ b/drivers/ata/sata_highbank.c
@@ -496,7 +496,7 @@ static int ahci_highbank_probe(struct platform_device *pdev)
 		return -ENOMEM;
 	}
 
-	hpriv->irq = irq;
+	hpriv->irqs[0] = irq;
 	hpriv->flags |= (unsigned long)pi.private_data;
 
 	hpriv->mmio = devm_ioremap(dev, mem->start, resource_size(mem));
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
