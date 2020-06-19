Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7FE2003A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:23:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2K64rQv7nUVaLtQAIPdvY7CJjzLQfGY8moWh6MHpt1I=; b=jcV30gpH6ePYxK
	57IbefQBjLxMvGHIk0dEw3zsaAgllw/yN9tvDm7KS49+Vr6o8GO9DUcIvyAy9NGV1/XzhpsxDK+J7
	r2hP48iJDm/p8OqUlkZukROt4iRMyeoEspJOiHRyca5VhXleYlCJ19JD3cypU+t6uo7rVvV6jiFmZ
	Ps607sL3Ifdo+auIwvju+HFLwQxTnDTClBpKZpR8VrjWHJYrpsbyA//8MMHcoHNR37Pe8bFNKoQrC
	AN4hSFjbqHdNThrkp7QEcfyrz4TjA+vJPE9B10GbQXZtVHogXOxV8araD0APjG0gpQkLfQoWyE4sB
	mYs9ffm9mUiKxO4bXqxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCIu-0004Dy-UK; Fri, 19 Jun 2020 08:23:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCGU-0002ZE-LJ
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 08:20:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C319A1435;
 Fri, 19 Jun 2020 01:20:45 -0700 (PDT)
Received: from red-moon.arm.com (unknown [10.57.58.158])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 477D03F71F;
 Fri, 19 Jun 2020 01:20:43 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 06/12] of/iommu: Make of_map_rid() PCI agnostic
Date: Fri, 19 Jun 2020 09:20:07 +0100
Message-Id: <20200619082013.13661-7-lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200619082013.13661-1-lorenzo.pieralisi@arm.com>
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
 <20200619082013.13661-1-lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_012046_897600_376F4EE7 
X-CRM114-Status: GOOD (  16.94  )
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
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Hanjun Guo <guohanjun@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Robin Murphy <robin.murphy@arm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is nothing PCI specific (other than the RID - requester ID)
in the of_map_rid() implementation, so the same function can be
reused for input/output IDs mapping for other busses just as well.

Rename the RID instances/names to a generic "id" tag.

No functionality change intended.

Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Joerg Roedel <joro@8bytes.org>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
---
 drivers/iommu/of_iommu.c |  4 ++--
 drivers/of/base.c        | 42 ++++++++++++++++++++--------------------
 drivers/of/irq.c         |  2 +-
 include/linux/of.h       |  4 ++--
 4 files changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index 20738aacac89..016316244737 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -129,7 +129,7 @@ static int of_pci_iommu_init(struct pci_dev *pdev, u16 alias, void *data)
 	struct of_phandle_args iommu_spec = { .args_count = 1 };
 	int err;
 
-	err = of_map_rid(info->np, alias, "iommu-map", "iommu-map-mask",
+	err = of_map_id(info->np, alias, "iommu-map", "iommu-map-mask",
 			 &iommu_spec.np, iommu_spec.args);
 	if (err)
 		return err == -ENODEV ? NO_IOMMU : err;
@@ -145,7 +145,7 @@ static int of_fsl_mc_iommu_init(struct fsl_mc_device *mc_dev,
 	struct of_phandle_args iommu_spec = { .args_count = 1 };
 	int err;
 
-	err = of_map_rid(master_np, mc_dev->icid, "iommu-map",
+	err = of_map_id(master_np, mc_dev->icid, "iommu-map",
 			 "iommu-map-mask", &iommu_spec.np,
 			 iommu_spec.args);
 	if (err)
diff --git a/drivers/of/base.c b/drivers/of/base.c
index ae03b1218b06..ea44fea99813 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2201,15 +2201,15 @@ int of_find_last_cache_level(unsigned int cpu)
 }
 
 /**
- * of_map_rid - Translate a requester ID through a downstream mapping.
+ * of_map_id - Translate an ID through a downstream mapping.
  * @np: root complex device node.
- * @rid: device requester ID to map.
+ * @id: device ID to map.
  * @map_name: property name of the map to use.
  * @map_mask_name: optional property name of the mask to use.
  * @target: optional pointer to a target device node.
  * @id_out: optional pointer to receive the translated ID.
  *
- * Given a device requester ID, look up the appropriate implementation-defined
+ * Given a device ID, look up the appropriate implementation-defined
  * platform ID and/or the target device which receives transactions on that
  * ID, as per the "iommu-map" and "msi-map" bindings. Either of @target or
  * @id_out may be NULL if only the other is required. If @target points to
@@ -2219,11 +2219,11 @@ int of_find_last_cache_level(unsigned int cpu)
  *
  * Return: 0 on success or a standard error code on failure.
  */
-int of_map_rid(struct device_node *np, u32 rid,
+int of_map_id(struct device_node *np, u32 id,
 	       const char *map_name, const char *map_mask_name,
 	       struct device_node **target, u32 *id_out)
 {
-	u32 map_mask, masked_rid;
+	u32 map_mask, masked_id;
 	int map_len;
 	const __be32 *map = NULL;
 
@@ -2235,7 +2235,7 @@ int of_map_rid(struct device_node *np, u32 rid,
 		if (target)
 			return -ENODEV;
 		/* Otherwise, no map implies no translation */
-		*id_out = rid;
+		*id_out = id;
 		return 0;
 	}
 
@@ -2255,22 +2255,22 @@ int of_map_rid(struct device_node *np, u32 rid,
 	if (map_mask_name)
 		of_property_read_u32(np, map_mask_name, &map_mask);
 
-	masked_rid = map_mask & rid;
+	masked_id = map_mask & id;
 	for ( ; map_len > 0; map_len -= 4 * sizeof(*map), map += 4) {
 		struct device_node *phandle_node;
-		u32 rid_base = be32_to_cpup(map + 0);
+		u32 id_base = be32_to_cpup(map + 0);
 		u32 phandle = be32_to_cpup(map + 1);
 		u32 out_base = be32_to_cpup(map + 2);
-		u32 rid_len = be32_to_cpup(map + 3);
+		u32 id_len = be32_to_cpup(map + 3);
 
-		if (rid_base & ~map_mask) {
-			pr_err("%pOF: Invalid %s translation - %s-mask (0x%x) ignores rid-base (0x%x)\n",
+		if (id_base & ~map_mask) {
+			pr_err("%pOF: Invalid %s translation - %s-mask (0x%x) ignores id-base (0x%x)\n",
 				np, map_name, map_name,
-				map_mask, rid_base);
+				map_mask, id_base);
 			return -EFAULT;
 		}
 
-		if (masked_rid < rid_base || masked_rid >= rid_base + rid_len)
+		if (masked_id < id_base || masked_id >= id_base + id_len)
 			continue;
 
 		phandle_node = of_find_node_by_phandle(phandle);
@@ -2288,20 +2288,20 @@ int of_map_rid(struct device_node *np, u32 rid,
 		}
 
 		if (id_out)
-			*id_out = masked_rid - rid_base + out_base;
+			*id_out = masked_id - id_base + out_base;
 
-		pr_debug("%pOF: %s, using mask %08x, rid-base: %08x, out-base: %08x, length: %08x, rid: %08x -> %08x\n",
-			np, map_name, map_mask, rid_base, out_base,
-			rid_len, rid, masked_rid - rid_base + out_base);
+		pr_debug("%pOF: %s, using mask %08x, id-base: %08x, out-base: %08x, length: %08x, id: %08x -> %08x\n",
+			np, map_name, map_mask, id_base, out_base,
+			id_len, id, masked_id - id_base + out_base);
 		return 0;
 	}
 
-	pr_info("%pOF: no %s translation for rid 0x%x on %pOF\n", np, map_name,
-		rid, target && *target ? *target : NULL);
+	pr_info("%pOF: no %s translation for id 0x%x on %pOF\n", np, map_name,
+		id, target && *target ? *target : NULL);
 
 	/* Bypasses translation */
 	if (id_out)
-		*id_out = rid;
+		*id_out = id;
 	return 0;
 }
-EXPORT_SYMBOL_GPL(of_map_rid);
+EXPORT_SYMBOL_GPL(of_map_id);
diff --git a/drivers/of/irq.c b/drivers/of/irq.c
index a296eaf52a5b..d632bc5b3a2d 100644
--- a/drivers/of/irq.c
+++ b/drivers/of/irq.c
@@ -587,7 +587,7 @@ static u32 __of_msi_map_rid(struct device *dev, struct device_node **np,
 	 * "msi-map" property.
 	 */
 	for (parent_dev = dev; parent_dev; parent_dev = parent_dev->parent)
-		if (!of_map_rid(parent_dev->of_node, rid_in, "msi-map",
+		if (!of_map_id(parent_dev->of_node, rid_in, "msi-map",
 				"msi-map-mask", np, &rid_out))
 			break;
 	return rid_out;
diff --git a/include/linux/of.h b/include/linux/of.h
index c669c0a4732f..60abe3f636ad 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -554,7 +554,7 @@ bool of_console_check(struct device_node *dn, char *name, int index);
 
 extern int of_cpu_node_to_id(struct device_node *np);
 
-int of_map_rid(struct device_node *np, u32 rid,
+int of_map_id(struct device_node *np, u32 id,
 	       const char *map_name, const char *map_mask_name,
 	       struct device_node **target, u32 *id_out);
 
@@ -978,7 +978,7 @@ static inline int of_cpu_node_to_id(struct device_node *np)
 	return -ENODEV;
 }
 
-static inline int of_map_rid(struct device_node *np, u32 rid,
+static inline int of_map_id(struct device_node *np, u32 id,
 			     const char *map_name, const char *map_mask_name,
 			     struct device_node **target, u32 *id_out)
 {
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
