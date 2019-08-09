Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29898880F8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 19:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=za19P0yzTiqD0ZQBrfHpIYWAvfA61J/+Deh+mDR9OMw=; b=TW5Wwc5kVqJNgU
	jaRyDuxvK5PLXM+HDfScQUfTOzrUcMczV0zywvH03qW1CYfR6Moa6IonfaF5Sdnfyq/4eR0/Wg3iV
	53UihYyTTABVOSECzYkvupCDQkyFhTYX0J+L4lwm/SsdF6CfRXD+seRO4DQs/wTPJrhd7e7SHsyZf
	eLl+d6aWhB52I5pOodgi8JY/BvrdmamgnJjuwOUhiuEcL1E6ztKo0J75TIqZBsQUh8WPq1uro+Uft
	edmhrITf+2WL5x+FmInRmw0gWniP9/5tNdpfjsNL2weJ9elfR6TvXjhIDWNA815QBuqYXZMGEYVHL
	vO4hupzwvQPolZR7tvWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw8QI-0005my-QV; Fri, 09 Aug 2019 17:11:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw8NU-0001Pe-MY
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 17:08:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 718861684;
 Fri,  9 Aug 2019 10:08:30 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3454F3F575;
 Fri,  9 Aug 2019 10:08:29 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 12/15] iommu/arm-smmu: Move Secure access quirk to
 implementation
Date: Fri,  9 Aug 2019 18:07:49 +0100
Message-Id: <6c16c65e43bf583d082c8b29d6dd7dbb3dc642bc.1565369764.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565369764.git.robin.murphy@arm.com>
References: <cover.1565369764.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_100833_082150_FC173760 
X-CRM114-Status: GOOD (  17.04  )
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
 gregory.clement@bootlin.com, linux-arm-kernel@lists.infradead.org
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
 drivers/iommu/arm-smmu-impl.c | 44 +++++++++++++++++
 drivers/iommu/arm-smmu.c      | 89 -----------------------------------
 drivers/iommu/arm-smmu.h      | 64 ++++++++++++++++++++++++-
 3 files changed, 106 insertions(+), 91 deletions(-)

diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
index efeb6d78da17..f8b8895e1bbe 100644
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
+	if (page == 0)
+		offset = arm_smmu_gr0_ns(offset);
+	return readl_relaxed(arm_smmu_page(smmu, page) + offset);
+}
+
+static void arm_smmu_write_ns(struct arm_smmu_device *smmu, int page,
+			      int offset, u32 val)
+{
+	if (page == 0)
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
index 86e11141a0bb..03159a1da4c9 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -155,83 +155,10 @@ struct arm_smmu_domain {
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
-#define arm_smmu_read_gr0(s, r)		arm_smmu_readl((s), 0, (r))
-#define arm_smmu_write_gr0(s, r, v)	arm_smmu_writel((s), 0, (r), (v))
-
-#define arm_smmu_read_gr1(s, r)		arm_smmu_readl((s), 1, (r))
-#define arm_smmu_write_gr1(s, r, v)	arm_smmu_writel((s), 1, (r), (v))
-
-#define arm_smmu_read_cb(s, n, r)				\
-	arm_smmu_readl((s), (s)->cb_base + (n), (r))
-#define arm_smmu_write_cb(s, n, r, v)				\
-	arm_smmu_writel((s), (s)->cb_base + (n), (r), (v))
-#define arm_smmu_read_cb_q(s, n, r)				\
-	arm_smmu_readq((s), (s)->cb_base + (n), (r))
-#define arm_smmu_write_cb_q(s, n, r, v)				\
-	arm_smmu_writeq((s), (s)->cb_base + (n), (r), (v))
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
@@ -251,20 +178,6 @@ static struct arm_smmu_domain *to_smmu_domain(struct iommu_domain *dom)
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
@@ -2083,8 +1996,6 @@ static int arm_smmu_device_dt_probe(struct platform_device *pdev,
 	smmu->version = data->version;
 	smmu->model = data->model;
 
-	parse_driver_options(smmu);
-
 	legacy_binding = of_find_property(dev->of_node, "mmu-masters", NULL);
 	if (legacy_binding && !using_generic_binding) {
 		if (!using_legacy_binding)
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index 460a29075bf8..0485ee7fd4c1 100644
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
@@ -281,6 +280,67 @@ struct arm_smmu_device {
 
 
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
+#define arm_smmu_read_gr0(s, r)		arm_smmu_readl((s), 0, (r))
+#define arm_smmu_write_gr0(s, r, v)	arm_smmu_writel((s), 0, (r), (v))
+
+#define arm_smmu_read_gr1(s, r)		arm_smmu_readl((s), 1, (r))
+#define arm_smmu_write_gr1(s, r, v)	arm_smmu_writel((s), 1, (r), (v))
+
+#define arm_smmu_read_cb(s, n, r)				\
+	arm_smmu_readl((s), (s)->cb_base + (n), (r))
+#define arm_smmu_write_cb(s, n, r, v)				\
+	arm_smmu_writel((s), (s)->cb_base + (n), (r), (v))
+#define arm_smmu_read_cb_q(s, n, r)				\
+	arm_smmu_readq((s), (s)->cb_base + (n), (r))
+#define arm_smmu_write_cb_q(s, n, r, v)			\
+	arm_smmu_writeq((s), (s)->cb_base + (n), (r), (v))
+
 struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu);
 
 #endif /* _ARM_SMMU_H */
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
