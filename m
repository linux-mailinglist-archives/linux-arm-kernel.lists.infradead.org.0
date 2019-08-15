Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EC58F3BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:41:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R70CPebUOXfc+gFRovS9CjZMehuo58czuJ6BJAxEmCs=; b=Y3EpIZi8dU9eAT
	2jXrv3Rhg0LppEAp0gDtAm7p7KhaoP0exkE3zL85jFx0C5mQyLdw8by/ncfNYFNMYNXMEncoZDT6B
	iYaJl6zi/xnsU4F/t1tYWpPJml3oMZZ77GUlvcCYh6CU+xhu0PzJvn1jzxTMpJ6PFGl9KUpnXnSUt
	LZPLSMo/pcFjgHwvERg1i/eQrORzH9mJLF4zV/Q1lDrdaWmCDqsP8NWFSAyFkPpO5ElzQsszHInoz
	w5ilc7pYrJID/YXKtJYRD4FEEopXMSpvZwBK4k0Y1KP8cMAm5u+5Q4um8u9lz4R+wkaZuf4aNOYNd
	WTH/+Q9DibUVpxiSgl2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKgo-0000wX-BB; Thu, 15 Aug 2019 18:41:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKdQ-0004nO-EC
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:38:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 330A9360;
 Thu, 15 Aug 2019 11:38:04 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D2D693F694;
 Thu, 15 Aug 2019 11:38:02 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 14/17] iommu/arm-smmu: Move Secure access quirk to
 implementation
Date: Thu, 15 Aug 2019 19:37:34 +0100
Message-Id: <f6e27b0e598034d24cc8374152aaaaecfcec0179.1565892337.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565892337.git.robin.murphy@arm.com>
References: <cover.1565892337.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_113804_704614_E71B7845 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: robdclark@gmail.com, joro@8bytes.org, bjorn.andersson@linaro.org,
 iommu@lists.linux-foundation.org, vivek.gautam@codeaurora.org,
 jcrouse@codeaurora.org, gregory.clement@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move detection of the Secure access quirk to its new home, trimming it
down in the process - time has proven that boolean DT flags are neither
ideal nor necessarily sufficient, so it's highly unlikely we'll ever add
more, let alone enough to justify the frankly overengineered parsing
machinery.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu-impl.c | 44 ++++++++++++++++
 drivers/iommu/arm-smmu.c      | 97 -----------------------------------
 drivers/iommu/arm-smmu.h      | 72 +++++++++++++++++++++++++-
 3 files changed, 114 insertions(+), 99 deletions(-)

diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
index efeb6d78da17..0657c85580cb 100644
--- a/drivers/iommu/arm-smmu-impl.c
+++ b/drivers/iommu/arm-smmu-impl.c
@@ -4,10 +4,54 @@
 
 #define pr_fmt(fmt) "arm-smmu: " fmt
 
+#include <linux/of.h>
+
 #include "arm-smmu.h"
 
 
+static int arm_smmu_gr0_ns(int offset)
+{
+	switch(offset) {
+	case ARM_SMMU_GR0_sCR0:
+	case ARM_SMMU_GR0_sACR:
+	case ARM_SMMU_GR0_sGFSR:
+	case ARM_SMMU_GR0_sGFSYNR0:
+	case ARM_SMMU_GR0_sGFSYNR1:
+	case ARM_SMMU_GR0_sGFSYNR2:
+		return offset + 0x400;
+	default:
+		return offset;
+	}
+}
+
+static u32 arm_smmu_read_ns(struct arm_smmu_device *smmu, int page,
+			    int offset)
+{
+	if (page == ARM_SMMU_GR0)
+		offset = arm_smmu_gr0_ns(offset);
+	return readl_relaxed(arm_smmu_page(smmu, page) + offset);
+}
+
+static void arm_smmu_write_ns(struct arm_smmu_device *smmu, int page,
+			      int offset, u32 val)
+{
+	if (page == ARM_SMMU_GR0)
+		offset = arm_smmu_gr0_ns(offset);
+	writel_relaxed(val, arm_smmu_page(smmu, page) + offset);
+}
+
+/* Since we don't care for sGFAR, we can do without 64-bit accessors */
+const struct arm_smmu_impl calxeda_impl = {
+	.read_reg = arm_smmu_read_ns,
+	.write_reg = arm_smmu_write_ns,
+};
+
+
 struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
 {
+	if (of_property_read_bool(smmu->dev->of_node,
+				  "calxeda,smmu-secure-config-access"))
+		smmu->impl = &calxeda_impl;
+
 	return smmu;
 }
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 1e8153182830..432d781f05f3 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -155,91 +155,10 @@ struct arm_smmu_domain {
 	struct iommu_domain		domain;
 };
 
-static int arm_smmu_gr0_ns(int offset)
-{
-	switch(offset) {
-	case ARM_SMMU_GR0_sCR0:
-	case ARM_SMMU_GR0_sACR:
-	case ARM_SMMU_GR0_sGFSR:
-	case ARM_SMMU_GR0_sGFSYNR0:
-	case ARM_SMMU_GR0_sGFSYNR1:
-	case ARM_SMMU_GR0_sGFSYNR2:
-		return offset + 0x400;
-	default:
-		return offset;
-	}
-}
-
-static void __iomem *arm_smmu_page(struct arm_smmu_device *smmu, int n)
-{
-	return smmu->base + (n << smmu->pgshift);
-}
-
-static u32 arm_smmu_readl(struct arm_smmu_device *smmu, int page, int offset)
-{
-	if ((smmu->options & ARM_SMMU_OPT_SECURE_CFG_ACCESS) && page == 0)
-		offset = arm_smmu_gr0_ns(offset);
-
-	return readl_relaxed(arm_smmu_page(smmu, page) + offset);
-}
-
-static void arm_smmu_writel(struct arm_smmu_device *smmu, int page, int offset,
-			    u32 val)
-{
-	if ((smmu->options & ARM_SMMU_OPT_SECURE_CFG_ACCESS) && page == 0)
-		offset = arm_smmu_gr0_ns(offset);
-
-	writel_relaxed(val, arm_smmu_page(smmu, page) + offset);
-}
-
-static u64 arm_smmu_readq(struct arm_smmu_device *smmu, int page, int offset)
-{
-	return readq_relaxed(arm_smmu_page(smmu, page) + offset);
-}
-
-static void arm_smmu_writeq(struct arm_smmu_device *smmu, int page, int offset,
-			    u64 val)
-{
-	writeq_relaxed(val, arm_smmu_page(smmu, page) + offset);
-}
-
-#define ARM_SMMU_GR0		0
-#define ARM_SMMU_GR1		1
-#define ARM_SMMU_CB(s, n)	((s)->numpage + (n))
-
-#define arm_smmu_gr0_read(s, o)		\
-	arm_smmu_readl((s), ARM_SMMU_GR0, (o))
-#define arm_smmu_gr0_write(s, o, v)	\
-	arm_smmu_writel((s), ARM_SMMU_GR0, (o), (v))
-
-#define arm_smmu_gr1_read(s, o)		\
-	arm_smmu_readl((s), ARM_SMMU_GR1, (o))
-#define arm_smmu_gr1_write(s, o, v)	\
-	arm_smmu_writel((s), ARM_SMMU_GR1, (o), (v))
-
-#define arm_smmu_cb_read(s, n, o)	\
-	arm_smmu_readl((s), ARM_SMMU_CB((s), (n)), (o))
-#define arm_smmu_cb_write(s, n, o, v)	\
-	arm_smmu_writel((s), ARM_SMMU_CB((s), (n)), (o), (v))
-#define arm_smmu_cb_readq(s, n, o)	\
-	arm_smmu_readq((s), ARM_SMMU_CB((s), (n)), (o))
-#define arm_smmu_cb_writeq(s, n, o, v)	\
-	arm_smmu_writeq((s), ARM_SMMU_CB((s), (n)), (o), (v))
-
-struct arm_smmu_option_prop {
-	u32 opt;
-	const char *prop;
-};
-
 static atomic_t cavium_smmu_context_count = ATOMIC_INIT(0);
 
 static bool using_legacy_binding, using_generic_binding;
 
-static struct arm_smmu_option_prop arm_smmu_options[] = {
-	{ ARM_SMMU_OPT_SECURE_CFG_ACCESS, "calxeda,smmu-secure-config-access" },
-	{ 0, NULL},
-};
-
 static inline int arm_smmu_rpm_get(struct arm_smmu_device *smmu)
 {
 	if (pm_runtime_enabled(smmu->dev))
@@ -259,20 +178,6 @@ static struct arm_smmu_domain *to_smmu_domain(struct iommu_domain *dom)
 	return container_of(dom, struct arm_smmu_domain, domain);
 }
 
-static void parse_driver_options(struct arm_smmu_device *smmu)
-{
-	int i = 0;
-
-	do {
-		if (of_property_read_bool(smmu->dev->of_node,
-						arm_smmu_options[i].prop)) {
-			smmu->options |= arm_smmu_options[i].opt;
-			dev_notice(smmu->dev, "option %s\n",
-				arm_smmu_options[i].prop);
-		}
-	} while (arm_smmu_options[++i].opt);
-}
-
 static struct device_node *dev_get_dev_node(struct device *dev)
 {
 	if (dev_is_pci(dev)) {
@@ -2091,8 +1996,6 @@ static int arm_smmu_device_dt_probe(struct platform_device *pdev,
 	smmu->version = data->version;
 	smmu->model = data->model;
 
-	parse_driver_options(smmu);
-
 	legacy_binding = of_find_property(dev->of_node, "mmu-masters", NULL);
 	if (legacy_binding && !using_generic_binding) {
 		if (!using_legacy_binding)
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index 6fea0b0b7e51..d4fd29d70705 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -242,10 +242,9 @@ struct arm_smmu_device {
 #define ARM_SMMU_FEAT_EXIDS		(1 << 12)
 	u32				features;
 
-#define ARM_SMMU_OPT_SECURE_CFG_ACCESS (1 << 0)
-	u32				options;
 	enum arm_smmu_arch_version	version;
 	enum arm_smmu_implementation	model;
+	const struct arm_smmu_impl	*impl;
 
 	u32				num_context_banks;
 	u32				num_s2_context_banks;
@@ -281,6 +280,75 @@ struct arm_smmu_device {
 
 
 /* Implementation details, yay! */
+struct arm_smmu_impl {
+	u32 (*read_reg)(struct arm_smmu_device *smmu, int page, int offset);
+	void (*write_reg)(struct arm_smmu_device *smmu, int page, int offset,
+			  u32 val);
+	u64 (*read_reg64)(struct arm_smmu_device *smmu, int page, int offset);
+	void (*write_reg64)(struct arm_smmu_device *smmu, int page, int offset,
+			    u64 val);
+};
+
+static inline void __iomem *arm_smmu_page(struct arm_smmu_device *smmu, int n)
+{
+	return smmu->base + (n << smmu->pgshift);
+}
+
+static inline u32 arm_smmu_readl(struct arm_smmu_device *smmu, int page, int offset)
+{
+	if (smmu->impl && unlikely(smmu->impl->read_reg))
+		return smmu->impl->read_reg(smmu, page, offset);
+	return readl_relaxed(arm_smmu_page(smmu, page) + offset);
+}
+
+static inline void arm_smmu_writel(struct arm_smmu_device *smmu, int page,
+				   int offset, u32 val)
+{
+	if (smmu->impl && unlikely(smmu->impl->write_reg))
+		smmu->impl->write_reg(smmu, page, offset, val);
+	else
+		writel_relaxed(val, arm_smmu_page(smmu, page) + offset);
+}
+
+static inline u64 arm_smmu_readq(struct arm_smmu_device *smmu, int page, int offset)
+{
+	if (smmu->impl && unlikely(smmu->impl->read_reg64))
+		return smmu->impl->read_reg64(smmu, page, offset);
+	return readq_relaxed(arm_smmu_page(smmu, page) + offset);
+}
+
+static inline void arm_smmu_writeq(struct arm_smmu_device *smmu, int page,
+				   int offset, u64 val)
+{
+	if (smmu->impl && unlikely(smmu->impl->write_reg64))
+		smmu->impl->write_reg64(smmu, page, offset, val);
+	else
+		writeq_relaxed(val, arm_smmu_page(smmu, page) + offset);
+}
+
+#define ARM_SMMU_GR0		0
+#define ARM_SMMU_GR1		1
+#define ARM_SMMU_CB(s, n)	((s)->numpage + (n))
+
+#define arm_smmu_gr0_read(s, o)		\
+	arm_smmu_readl((s), ARM_SMMU_GR0, (o))
+#define arm_smmu_gr0_write(s, o, v)	\
+	arm_smmu_writel((s), ARM_SMMU_GR0, (o), (v))
+
+#define arm_smmu_gr1_read(s, o)		\
+	arm_smmu_readl((s), ARM_SMMU_GR1, (o))
+#define arm_smmu_gr1_write(s, o, v)	\
+	arm_smmu_writel((s), ARM_SMMU_GR1, (o), (v))
+
+#define arm_smmu_cb_read(s, n, o)	\
+	arm_smmu_readl((s), ARM_SMMU_CB((s), (n)), (o))
+#define arm_smmu_cb_write(s, n, o, v)	\
+	arm_smmu_writel((s), ARM_SMMU_CB((s), (n)), (o), (v))
+#define arm_smmu_cb_readq(s, n, o)	\
+	arm_smmu_readq((s), ARM_SMMU_CB((s), (n)), (o))
+#define arm_smmu_cb_writeq(s, n, o, v)	\
+	arm_smmu_writeq((s), ARM_SMMU_CB((s), (n)), (o), (v))
+
 struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu);
 
 #endif /* _ARM_SMMU_H */
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
