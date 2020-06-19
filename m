Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2543F2003B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tvHS/yuE/rY2wEOsBoQA8vPpO8iQ/bwLQ7e5K6WTuQs=; b=Drxav4gqzLbAIN
	bZ7fZnfwvdXjOXagP0ranOZDapPmM7FG2T78SjHhDZDs0aUC1eTXSJLOC8RpaIL5Fzd3z/BfCdYcA
	kpb5IAxt7kzPJ6VQ/YOBw8ymJaZKaj57uTvI+qF8DBmYho5rMz33CflsYas6v8bG/yS/hi65czlCR
	GMbCaPwejjnZIZvunuPIuvTVPexc3/L4Us6i0nx072YRs5Ol0Fz/pfv/Vf7mOcBaGcGyXvmJXugFT
	fkb6v/2kOmv7PEFlzLtUQTcBGDroCJXZ2+H3v87NDJLnFsGtoujPPuHurxocYTGHCwGGjzMLaV572
	+J58cOv6K6fQjiToIsgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCJS-0004f0-HN; Fri, 19 Jun 2020 08:23:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCGc-0002hi-Ge
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 08:20:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EEF0211B3;
 Fri, 19 Jun 2020 01:20:53 -0700 (PDT)
Received: from red-moon.arm.com (unknown [10.57.58.158])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 78AC73F71F;
 Fri, 19 Jun 2020 01:20:51 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 09/12] of/irq: make of_msi_map_get_device_domain() bus
 agnostic
Date: Fri, 19 Jun 2020 09:20:10 +0100
Message-Id: <20200619082013.13661-10-lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200619082013.13661-1-lorenzo.pieralisi@arm.com>
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
 <20200619082013.13661-1-lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_012054_646106_75C9285F 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Hanjun Guo <guohanjun@huawei.com>,
 linux-pci@vger.kernel.org, Makarand Pawagi <makarand.pawagi@nxp.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 Diana Craciun <diana.craciun@oss.nxp.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Robin Murphy <robin.murphy@arm.com>, Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Diana Craciun <diana.craciun@oss.nxp.com>

of_msi_map_get_device_domain() is PCI specific but it need not be and
can be easily changed to be bus agnostic in order to be used by other
busses by adding an IRQ domain bus token as an input parameter.

Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Acked-by: Bjorn Helgaas <bhelgaas@google.com>   # pci/msi.c
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>
---
 drivers/of/irq.c       | 8 +++++---
 drivers/pci/msi.c      | 2 +-
 include/linux/of_irq.h | 5 +++--
 3 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/of/irq.c b/drivers/of/irq.c
index d632bc5b3a2d..1005e4f349ef 100644
--- a/drivers/of/irq.c
+++ b/drivers/of/irq.c
@@ -613,18 +613,20 @@ u32 of_msi_map_rid(struct device *dev, struct device_node *msi_np, u32 rid_in)
  * of_msi_map_get_device_domain - Use msi-map to find the relevant MSI domain
  * @dev: device for which the mapping is to be done.
  * @rid: Requester ID for the device.
+ * @bus_token: Bus token
  *
  * Walk up the device hierarchy looking for devices with a "msi-map"
  * property.
  *
  * Returns: the MSI domain for this device (or NULL on failure)
  */
-struct irq_domain *of_msi_map_get_device_domain(struct device *dev, u32 rid)
+struct irq_domain *of_msi_map_get_device_domain(struct device *dev, u32 id,
+						u32 bus_token)
 {
 	struct device_node *np = NULL;
 
-	__of_msi_map_rid(dev, &np, rid);
-	return irq_find_matching_host(np, DOMAIN_BUS_PCI_MSI);
+	__of_msi_map_rid(dev, &np, id);
+	return irq_find_matching_host(np, bus_token);
 }
 
 /**
diff --git a/drivers/pci/msi.c b/drivers/pci/msi.c
index 77f48b95e277..b4bfe0b03b2d 100644
--- a/drivers/pci/msi.c
+++ b/drivers/pci/msi.c
@@ -1556,7 +1556,7 @@ struct irq_domain *pci_msi_get_device_domain(struct pci_dev *pdev)
 	u32 rid = pci_dev_id(pdev);
 
 	pci_for_each_dma_alias(pdev, get_msi_id_cb, &rid);
-	dom = of_msi_map_get_device_domain(&pdev->dev, rid);
+	dom = of_msi_map_get_device_domain(&pdev->dev, rid, DOMAIN_BUS_PCI_MSI);
 	if (!dom)
 		dom = iort_get_device_domain(&pdev->dev, rid,
 					     DOMAIN_BUS_PCI_MSI);
diff --git a/include/linux/of_irq.h b/include/linux/of_irq.h
index 1214cabb2247..7142a3722758 100644
--- a/include/linux/of_irq.h
+++ b/include/linux/of_irq.h
@@ -52,7 +52,8 @@ extern struct irq_domain *of_msi_get_domain(struct device *dev,
 					    struct device_node *np,
 					    enum irq_domain_bus_token token);
 extern struct irq_domain *of_msi_map_get_device_domain(struct device *dev,
-						       u32 rid);
+							u32 id,
+							u32 bus_token);
 extern void of_msi_configure(struct device *dev, struct device_node *np);
 u32 of_msi_map_rid(struct device *dev, struct device_node *msi_np, u32 rid_in);
 #else
@@ -85,7 +86,7 @@ static inline struct irq_domain *of_msi_get_domain(struct device *dev,
 	return NULL;
 }
 static inline struct irq_domain *of_msi_map_get_device_domain(struct device *dev,
-							      u32 rid)
+						u32 id, u32 bus_token)
 {
 	return NULL;
 }
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
