Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AEAF200392
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:22:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSsME4nygEyB94x0tpVkWP1eClgjmsIgPVSGnjSPne8=; b=ddNOtNr1CS2O4n
	uv3CPIFH8A+peWLvU49pWJQVhB4Dq4gEqalj/0k9Bq33sDCzTUS65cmq2o6HZ0OvexVDj5qNrk7X8
	TIcbrDKrNP+CYK8i/KzzlCqLqczKoLGCQsYqpy3aZL/CCSzx7n7tVZai0Fmpt579pIfckNmtjrOw0
	Q+obcfvmreUzS+2Yzp6Lnz71qzndG19TdRzVTfwpgLNiY5k3Tf7drVP2sae61hhOZ9GsBfEE5BXw+
	1DTREPCVdZ0xVarmFwOEETx9M4NWE1zgqKNMUTcg3WEzX2GRDyhaV7FsEi2o73+O2nYREeI29YCzg
	GFU8eYqw6vhcgwh9EUIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCIG-0003ik-8v; Fri, 19 Jun 2020 08:22:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCGS-0002Xs-EC
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 08:20:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 08EA413D5;
 Fri, 19 Jun 2020 01:20:43 -0700 (PDT)
Received: from red-moon.arm.com (unknown [10.57.58.158])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8296D3F71F;
 Fri, 19 Jun 2020 01:20:40 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 05/12] ACPI/IORT: Add an input ID to acpi_dma_configure()
Date: Fri, 19 Jun 2020 09:20:06 +0100
Message-Id: <20200619082013.13661-6-lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200619082013.13661-1-lorenzo.pieralisi@arm.com>
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
 <20200619082013.13661-1-lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_012044_617757_ECF8F103 
X-CRM114-Status: GOOD (  19.12  )
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

Some HW devices are created as child devices of proprietary busses,
that have a bus specific policy defining how the child devices
wires representing the devices ID are translated into IOMMU and
IRQ controllers device IDs.

Current IORT code provides translations for:

- PCI devices, where the device ID is well identified at bus level
  as the requester ID (RID)
- Platform devices that are endpoint devices where the device ID is
  retrieved from the ACPI object IORT mappings (Named components single
  mappings). A platform device is represented in IORT as a named
  component node

For devices that are child devices of proprietary busses the IORT
firmware represents the bus node as a named component node in IORT
and it is up to that named component node to define in/out bus
specific ID translations for the bus child devices that are
allocated and created in a bus specific manner.

In order to make IORT ID translations available for proprietary
bus child devices, the current ACPI (and IORT) code must be
augmented to provide an additional ID parameter to acpi_dma_configure()
representing the child devices input ID. This ID is bus specific
and it is retrieved in bus specific code.

By adding an ID parameter to acpi_dma_configure(), the IORT
code can map the child device ID to an IOMMU stream ID through
the IORT named component representing the bus in/out ID mappings.

Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Hanjun Guo <guohanjun@huawei.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
---
 drivers/acpi/arm64/iort.c | 59 +++++++++++++++++++++++++++++----------
 drivers/acpi/scan.c       |  8 ++++--
 include/acpi/acpi_bus.h   |  9 ++++--
 include/linux/acpi.h      |  7 +++++
 include/linux/acpi_iort.h |  7 +++--
 5 files changed, 67 insertions(+), 23 deletions(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 421c6976ab81..ec782e4a0fe4 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -978,19 +978,54 @@ static void iort_named_component_init(struct device *dev,
 					   nc->node_flags);
 }
 
+static int iort_nc_iommu_map(struct device *dev, struct acpi_iort_node *node)
+{
+	struct acpi_iort_node *parent;
+	int err = -ENODEV, i = 0;
+	u32 streamid = 0;
+
+	do {
+
+		parent = iort_node_map_platform_id(node, &streamid,
+						   IORT_IOMMU_TYPE,
+						   i++);
+
+		if (parent)
+			err = iort_iommu_xlate(dev, parent, streamid);
+	} while (parent && !err);
+
+	return err;
+}
+
+static int iort_nc_iommu_map_id(struct device *dev,
+				struct acpi_iort_node *node,
+				const u32 *in_id)
+{
+	struct acpi_iort_node *parent;
+	u32 streamid;
+
+	parent = iort_node_map_id(node, *in_id, &streamid, IORT_IOMMU_TYPE);
+	if (parent)
+		return iort_iommu_xlate(dev, parent, streamid);
+
+	return -ENODEV;
+}
+
+
 /**
- * iort_iommu_configure - Set-up IOMMU configuration for a device.
+ * iort_iommu_configure_id - Set-up IOMMU configuration for a device.
  *
  * @dev: device to configure
+ * @id_in: optional input id const value pointer
  *
  * Returns: iommu_ops pointer on configuration success
  *          NULL on configuration failure
  */
-const struct iommu_ops *iort_iommu_configure(struct device *dev)
+const struct iommu_ops *iort_iommu_configure_id(struct device *dev,
+						const u32 *id_in)
 {
-	struct acpi_iort_node *node, *parent;
+	struct acpi_iort_node *node;
 	const struct iommu_ops *ops;
-	u32 streamid = 0;
 	int err = -ENODEV;
 
 	/*
@@ -1019,21 +1054,13 @@ const struct iommu_ops *iort_iommu_configure(struct device *dev)
 		if (fwspec && iort_pci_rc_supports_ats(node))
 			fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
 	} else {
-		int i = 0;
-
 		node = iort_scan_node(ACPI_IORT_NODE_NAMED_COMPONENT,
 				      iort_match_node_callback, dev);
 		if (!node)
 			return NULL;
 
-		do {
-			parent = iort_node_map_platform_id(node, &streamid,
-							   IORT_IOMMU_TYPE,
-							   i++);
-
-			if (parent)
-				err = iort_iommu_xlate(dev, parent, streamid);
-		} while (parent && !err);
+		err = id_in ? iort_nc_iommu_map_id(dev, node, id_in) :
+			      iort_nc_iommu_map(dev, node);
 
 		if (!err)
 			iort_named_component_init(dev, node);
@@ -1058,6 +1085,7 @@ const struct iommu_ops *iort_iommu_configure(struct device *dev)
 
 	return ops;
 }
+
 #else
 static inline const struct iommu_ops *iort_fwspec_iommu_ops(struct device *dev)
 { return NULL; }
@@ -1066,7 +1094,8 @@ static inline int iort_add_device_replay(const struct iommu_ops *ops,
 { return 0; }
 int iort_iommu_msi_get_resv_regions(struct device *dev, struct list_head *head)
 { return 0; }
-const struct iommu_ops *iort_iommu_configure(struct device *dev)
+const struct iommu_ops *iort_iommu_configure_id(struct device *dev,
+						const u32 *input_id)
 { return NULL; }
 #endif
 
diff --git a/drivers/acpi/scan.c b/drivers/acpi/scan.c
index 8777faced51a..2142f1554761 100644
--- a/drivers/acpi/scan.c
+++ b/drivers/acpi/scan.c
@@ -1457,8 +1457,10 @@ int acpi_dma_get_range(struct device *dev, u64 *dma_addr, u64 *offset,
  * acpi_dma_configure - Set-up DMA configuration for the device.
  * @dev: The pointer to the device
  * @attr: device dma attributes
+ * @input_id: input device id const value pointer
  */
-int acpi_dma_configure(struct device *dev, enum dev_dma_attr attr)
+int acpi_dma_configure_id(struct device *dev, enum dev_dma_attr attr,
+			  const u32 *input_id)
 {
 	const struct iommu_ops *iommu;
 	u64 dma_addr = 0, size = 0;
@@ -1470,7 +1472,7 @@ int acpi_dma_configure(struct device *dev, enum dev_dma_attr attr)
 
 	iort_dma_setup(dev, &dma_addr, &size);
 
-	iommu = iort_iommu_configure(dev);
+	iommu = iort_iommu_configure_id(dev, input_id);
 	if (PTR_ERR(iommu) == -EPROBE_DEFER)
 		return -EPROBE_DEFER;
 
@@ -1479,7 +1481,7 @@ int acpi_dma_configure(struct device *dev, enum dev_dma_attr attr)
 
 	return 0;
 }
-EXPORT_SYMBOL_GPL(acpi_dma_configure);
+EXPORT_SYMBOL_GPL(acpi_dma_configure_id);
 
 static void acpi_init_coherency(struct acpi_device *adev)
 {
diff --git a/include/acpi/acpi_bus.h b/include/acpi/acpi_bus.h
index 5afb6ceb284f..a3abcc4b7d9f 100644
--- a/include/acpi/acpi_bus.h
+++ b/include/acpi/acpi_bus.h
@@ -588,8 +588,13 @@ bool acpi_dma_supported(struct acpi_device *adev);
 enum dev_dma_attr acpi_get_dma_attr(struct acpi_device *adev);
 int acpi_dma_get_range(struct device *dev, u64 *dma_addr, u64 *offset,
 		       u64 *size);
-int acpi_dma_configure(struct device *dev, enum dev_dma_attr attr);
-
+int acpi_dma_configure_id(struct device *dev, enum dev_dma_attr attr,
+			   const u32 *input_id);
+static inline int acpi_dma_configure(struct device *dev,
+				     enum dev_dma_attr attr)
+{
+	return acpi_dma_configure_id(dev, attr, NULL);
+}
 struct acpi_device *acpi_find_child_device(struct acpi_device *parent,
 					   u64 address, bool check_children);
 int acpi_is_root_bridge(acpi_handle);
diff --git a/include/linux/acpi.h b/include/linux/acpi.h
index d661cd0ee64d..6d2c47489d90 100644
--- a/include/linux/acpi.h
+++ b/include/linux/acpi.h
@@ -905,6 +905,13 @@ static inline int acpi_dma_configure(struct device *dev,
 	return 0;
 }
 
+static inline int acpi_dma_configure_id(struct device *dev,
+					enum dev_dma_attr attr,
+					const u32 *input_id)
+{
+	return 0;
+}
+
 #define ACPI_PTR(_ptr)	(NULL)
 
 static inline void acpi_device_set_enumerated(struct acpi_device *adev)
diff --git a/include/linux/acpi_iort.h b/include/linux/acpi_iort.h
index e51425e083da..20a32120bb88 100644
--- a/include/linux/acpi_iort.h
+++ b/include/linux/acpi_iort.h
@@ -35,7 +35,8 @@ void acpi_configure_pmsi_domain(struct device *dev);
 int iort_pmsi_get_dev_id(struct device *dev, u32 *dev_id);
 /* IOMMU interface */
 void iort_dma_setup(struct device *dev, u64 *dma_addr, u64 *size);
-const struct iommu_ops *iort_iommu_configure(struct device *dev);
+const struct iommu_ops *iort_iommu_configure_id(struct device *dev,
+						const u32 *id_in);
 int iort_iommu_msi_get_resv_regions(struct device *dev, struct list_head *head);
 #else
 static inline void acpi_iort_init(void) { }
@@ -48,8 +49,8 @@ static inline void acpi_configure_pmsi_domain(struct device *dev) { }
 /* IOMMU interface */
 static inline void iort_dma_setup(struct device *dev, u64 *dma_addr,
 				  u64 *size) { }
-static inline const struct iommu_ops *iort_iommu_configure(
-				      struct device *dev)
+static inline const struct iommu_ops *iort_iommu_configure_id(
+				      struct device *dev, const u32 *id_in)
 { return NULL; }
 static inline
 int iort_iommu_msi_get_resv_regions(struct device *dev, struct list_head *head)
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
