Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BC18F3BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oAL4AXlvxcMzgIwCpuTiS5NXNLMWrANRKl4s0H+CNPY=; b=NvW4hTDaeCFxE6
	JQpxI2VTE3jQnkZaRznQ2t8jWUFNO6Fyuu3/mLetVX+jXR8Q++WnIsYoS/7fGBjvKf7VJNZJwyOEm
	rk5yr6maPcNLUenxsNGcUzfPxE9IMQQZgeKxB71PPvCoFX1ym5wM/oRrwoHU/v16QhV1U3ORSWkdl
	G6/UldF4yuOSksJfzLH3Ng0JltCvhBBTtFtv8xO7VR9Fp6GJThzIbUChKdjD3lpV6C9Z6xlH3kMKh
	YAGFkD8t0HXgu8Gegd6SFDs+bGshBV0vwTUxVdQCC3IlqCo/OR2BRpUSTY7fmvDiK7K4ET8DmIHvt
	LrZntgd+8lHbigSqyGRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKgM-0000QH-Jg; Thu, 15 Aug 2019 18:41:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKdN-00052E-KM
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:38:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 15195344;
 Thu, 15 Aug 2019 11:38:01 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B60453F694;
 Thu, 15 Aug 2019 11:37:59 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 12/17] iommu/arm-smmu: Rename arm-smmu-regs.h
Date: Thu, 15 Aug 2019 19:37:32 +0100
Message-Id: <75a8504028a60b3890997af2bf25032158e0d7a7.1565892337.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565892337.git.robin.murphy@arm.com>
References: <cover.1565892337.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_113801_851756_04EEE79B 
X-CRM114-Status: GOOD (  13.65  )
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

We're about to start using it for more than just register definitions,
so generalise the name.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu.c                      | 2 +-
 drivers/iommu/{arm-smmu-regs.h => arm-smmu.h} | 6 +++---
 drivers/iommu/qcom_iommu.c                    | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)
 rename drivers/iommu/{arm-smmu-regs.h => arm-smmu.h} (98%)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index e9fd9117109e..f3b8301a3059 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -46,7 +46,7 @@
 #include <linux/amba/bus.h>
 #include <linux/fsl/mc.h>
 
-#include "arm-smmu-regs.h"
+#include "arm-smmu.h"
 
 /*
  * Apparently, some Qualcomm arm64 platforms which appear to expose their SMMU
diff --git a/drivers/iommu/arm-smmu-regs.h b/drivers/iommu/arm-smmu.h
similarity index 98%
rename from drivers/iommu/arm-smmu-regs.h
rename to drivers/iommu/arm-smmu.h
index a8e288192285..ccc3097a4247 100644
--- a/drivers/iommu/arm-smmu-regs.h
+++ b/drivers/iommu/arm-smmu.h
@@ -7,8 +7,8 @@
  * Author: Will Deacon <will.deacon@arm.com>
  */
 
-#ifndef _ARM_SMMU_REGS_H
-#define _ARM_SMMU_REGS_H
+#ifndef _ARM_SMMU_H
+#define _ARM_SMMU_H
 
 #include <linux/bits.h>
 
@@ -194,4 +194,4 @@ enum arm_smmu_cbar_type {
 #define ARM_SMMU_CB_ATSR		0x8f0
 #define ATSR_ACTIVE			BIT(0)
 
-#endif /* _ARM_SMMU_REGS_H */
+#endif /* _ARM_SMMU_H */
diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
index 60a125dd7300..a2062d13584f 100644
--- a/drivers/iommu/qcom_iommu.c
+++ b/drivers/iommu/qcom_iommu.c
@@ -33,7 +33,7 @@
 #include <linux/slab.h>
 #include <linux/spinlock.h>
 
-#include "arm-smmu-regs.h"
+#include "arm-smmu.h"
 
 #define SMMU_INTR_SEL_NS     0x2000
 
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
