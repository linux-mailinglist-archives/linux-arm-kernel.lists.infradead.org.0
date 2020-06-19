Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBD2200389
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:22:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ySiy/k8WRRvj2Qfa9hsxwJUXlIDwiry2skcpPLDCH8Q=; b=GD3T0Ld76MSR3p
	3qxr83rTYzTgNpKEQ/F3mbSxR5VlCJB4gpqCJT2N2XLUbUdzlUXZBueTjOptTuJ8EbbTSpMPS1wYA
	HiXRfg4J47/QomSI4CGBIer+WDhQnkLXDuFHkWgM9Z+VrERgMt1w1UzpA+ty44MamUIdkacWRo3Hc
	SpBF87XYjwvjHmwuNz1SSUzbCdTe+nwzddSxhanm/s8ubbLWS+IOXtu5EBkyhkWb9hPVnRb23RHCh
	9RpSVryRWY2damS8NNaETIU8d63WkFneuQ2eHACOrkEI1jgyhNTpQl5hT5/YGevT+xDIHbXcMjGOo
	5hpPdO4iRCLW5OOSscsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCHW-0003Ax-CA; Fri, 19 Jun 2020 08:21:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCGN-0002SK-9u
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 08:20:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7EEA11396;
 Fri, 19 Jun 2020 01:20:37 -0700 (PDT)
Received: from red-moon.arm.com (unknown [10.57.58.158])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AE18A3F71F;
 Fri, 19 Jun 2020 01:20:33 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 03/12] ACPI/IORT: Make iort_msi_map_rid() PCI agnostic
Date: Fri, 19 Jun 2020 09:20:04 +0100
Message-Id: <20200619082013.13661-4-lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200619082013.13661-1-lorenzo.pieralisi@arm.com>
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
 <20200619082013.13661-1-lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_012039_449715_14C55FFA 
X-CRM114-Status: GOOD (  12.67  )
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
 Marc Zyngier <maz@kernel.org>, Makarand Pawagi <makarand.pawagi@nxp.com>,
 linux-pci@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Hanjun Guo <guohanjun@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Robin Murphy <robin.murphy@arm.com>,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Will Deacon <will@kernel.org>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is nothing PCI specific in iort_msi_map_rid().

Rename the function using a bus protocol agnostic name,
iort_msi_map_id(), and convert current callers to it.

Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Hanjun Guo <guohanjun@huawei.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
---
 drivers/acpi/arm64/iort.c | 12 ++++++------
 drivers/pci/msi.c         |  2 +-
 include/linux/acpi_iort.h |  6 +++---
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 902e2aaca946..53f9ef515089 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -568,22 +568,22 @@ static struct acpi_iort_node *iort_find_dev_node(struct device *dev)
 }
 
 /**
- * iort_msi_map_rid() - Map a MSI requester ID for a device
+ * iort_msi_map_id() - Map a MSI input ID for a device
  * @dev: The device for which the mapping is to be done.
- * @req_id: The device requester ID.
+ * @input_id: The device input ID.
  *
- * Returns: mapped MSI RID on success, input requester ID otherwise
+ * Returns: mapped MSI ID on success, input ID otherwise
  */
-u32 iort_msi_map_rid(struct device *dev, u32 req_id)
+u32 iort_msi_map_id(struct device *dev, u32 input_id)
 {
 	struct acpi_iort_node *node;
 	u32 dev_id;
 
 	node = iort_find_dev_node(dev);
 	if (!node)
-		return req_id;
+		return input_id;
 
-	iort_node_map_id(node, req_id, &dev_id, IORT_MSI_TYPE);
+	iort_node_map_id(node, input_id, &dev_id, IORT_MSI_TYPE);
 	return dev_id;
 }
 
diff --git a/drivers/pci/msi.c b/drivers/pci/msi.c
index 74a91f52ecc0..77f48b95e277 100644
--- a/drivers/pci/msi.c
+++ b/drivers/pci/msi.c
@@ -1536,7 +1536,7 @@ u32 pci_msi_domain_get_msi_rid(struct irq_domain *domain, struct pci_dev *pdev)
 
 	of_node = irq_domain_get_of_node(domain);
 	rid = of_node ? of_msi_map_rid(&pdev->dev, of_node, rid) :
-			iort_msi_map_rid(&pdev->dev, rid);
+			iort_msi_map_id(&pdev->dev, rid);
 
 	return rid;
 }
diff --git a/include/linux/acpi_iort.h b/include/linux/acpi_iort.h
index 08ec6bd2297f..e51425e083da 100644
--- a/include/linux/acpi_iort.h
+++ b/include/linux/acpi_iort.h
@@ -28,7 +28,7 @@ void iort_deregister_domain_token(int trans_id);
 struct fwnode_handle *iort_find_domain_token(int trans_id);
 #ifdef CONFIG_ACPI_IORT
 void acpi_iort_init(void);
-u32 iort_msi_map_rid(struct device *dev, u32 req_id);
+u32 iort_msi_map_id(struct device *dev, u32 id);
 struct irq_domain *iort_get_device_domain(struct device *dev, u32 id,
 					  enum irq_domain_bus_token bus_token);
 void acpi_configure_pmsi_domain(struct device *dev);
@@ -39,8 +39,8 @@ const struct iommu_ops *iort_iommu_configure(struct device *dev);
 int iort_iommu_msi_get_resv_regions(struct device *dev, struct list_head *head);
 #else
 static inline void acpi_iort_init(void) { }
-static inline u32 iort_msi_map_rid(struct device *dev, u32 req_id)
-{ return req_id; }
+static inline u32 iort_msi_map_id(struct device *dev, u32 id)
+{ return id; }
 static inline struct irq_domain *iort_get_device_domain(
 	struct device *dev, u32 id, enum irq_domain_bus_token bus_token)
 { return NULL; }
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
