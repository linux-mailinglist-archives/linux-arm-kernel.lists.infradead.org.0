Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC2595D89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c26U688VoK9AheRr76/LeBsjxKh5whIcmVXLLn7fKVY=; b=l5grjOt7oeA1nJ
	Hjtpx3/V2vncCM0gVxllTom0qpvNtvR15ypVt8xL6AsVWLP6hyUhkyaqNOGoQw0gC65z7lqmI9tpk
	yeooLAvRo1/acv0YGvMrVPkFDFv0dvwtWpRe8xAyFcvHyVaMasbqkUECIBVrb+RScK+BBi4mod/Dj
	rZURXBTSDIbmldGnYLLRNA4cF3B4zCHpTCO7FWRw3orbclzzMsfvkHonAwDv5eSPer0txIvN/zVB0
	F4+lfu7K5LVbwga7mTP/kmnSSOkChvxSaPKnqX0yWWsiXrQxlx/Pxq0qU2KfFDIetK5g/m2/UKTAk
	IM9seAQpqNcsgp7W9A1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02Tj-0007Ta-Bb; Tue, 20 Aug 2019 11:39:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i02TW-0007TA-Ad
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 11:38:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 818D8344;
 Tue, 20 Aug 2019 04:38:53 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CF3553F718;
 Tue, 20 Aug 2019 04:38:52 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH] iommu/arm-smmu: Fix build issues
Date: Tue, 20 Aug 2019 12:38:49 +0100
Message-Id: <909636ed9dfc702a7cb4806903e3e698ce9b29a6.1566301129.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_043855_206545_DA5E5E29 
X-CRM114-Status: GOOD (  14.76  )
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
Cc: joro@8bytes.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In a hurry to get things ready for merging, we missed that one more
include needs moving to arm-smmu.h along with the register accessors
to prevent 32-bit builds breaking, and some missing static specifiers
made Sparse sad.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu-impl.c | 8 ++++----
 drivers/iommu/arm-smmu.c      | 1 -
 drivers/iommu/arm-smmu.h      | 1 +
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
index e22e9004f449..3f88cd078dd5 100644
--- a/drivers/iommu/arm-smmu-impl.c
+++ b/drivers/iommu/arm-smmu-impl.c
@@ -68,7 +68,7 @@ static int cavium_cfg_probe(struct arm_smmu_device *smmu)
 	return 0;
 }
 
-int cavium_init_context(struct arm_smmu_domain *smmu_domain)
+static int cavium_init_context(struct arm_smmu_domain *smmu_domain)
 {
 	struct cavium_smmu *cs = container_of(smmu_domain->smmu,
 					      struct cavium_smmu, smmu);
@@ -81,12 +81,12 @@ int cavium_init_context(struct arm_smmu_domain *smmu_domain)
 	return 0;
 }
 
-const struct arm_smmu_impl cavium_impl = {
+static const struct arm_smmu_impl cavium_impl = {
 	.cfg_probe = cavium_cfg_probe,
 	.init_context = cavium_init_context,
 };
 
-struct arm_smmu_device *cavium_smmu_impl_init(struct arm_smmu_device *smmu)
+static struct arm_smmu_device *cavium_smmu_impl_init(struct arm_smmu_device *smmu)
 {
 	struct cavium_smmu *cs;
 
@@ -143,7 +143,7 @@ static int arm_mmu500_reset(struct arm_smmu_device *smmu)
 	return 0;
 }
 
-const struct arm_smmu_impl arm_mmu500_impl = {
+static const struct arm_smmu_impl arm_mmu500_impl = {
 	.reset = arm_mmu500_reset,
 };
 
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index b8628e2ab579..523a88842e7f 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -26,7 +26,6 @@
 #include <linux/err.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
-#include <linux/io-64-nonatomic-hi-lo.h>
 #include <linux/iopoll.h>
 #include <linux/init.h>
 #include <linux/moduleparam.h>
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index 611ed742e56f..ac9eac966cf5 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -14,6 +14,7 @@
 #include <linux/bits.h>
 #include <linux/clk.h>
 #include <linux/device.h>
+#include <linux/io-64-nonatomic-hi-lo.h>
 #include <linux/io-pgtable.h>
 #include <linux/iommu.h>
 #include <linux/mutex.h>
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
