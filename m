Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A428F3B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:40:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4LzRz5+G2JQsRBESooM6cAiLbSPGVhlO5XjhAI/e2E=; b=A8jWBlWksIIr7S
	lNLptV5a+jbaniUcXlUlbe9OuoqMKESxG0BnEW1ZXNxYRv/mWNOyW5d0n6W2xsZ69OQNJeQNncVr8
	Vw0d9oLpPT+JK7Y5V8AKMy/YzzK/K592z6peUr9PYsa622Cq2DJMzyLtHORDBBaCeMschRv/WUvYb
	f5QMmBmLtbwZGHnafR7vOienECTz0l54hRfsyxGgDRaYnYm6BkPn8HSFeA9eN8qwRqI7XR1xJF+qQ
	k/iQWN1AU/KUqToLesoIBhKU6ATUEdQR8uzU75QqenLUYuEGJ9MAH3xjMaEEeqPA/D38jGhNfti6J
	OWlb5wxX3GyO/NbM4Ang==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKfK-0006d3-1s; Thu, 15 Aug 2019 18:40:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKdG-0004nO-Va
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:37:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D18D5360;
 Thu, 15 Aug 2019 11:37:54 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7E5073F694;
 Thu, 15 Aug 2019 11:37:53 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 08/17] iommu/arm-smmu: Get rid of weird "atomic" write
Date: Thu, 15 Aug 2019 19:37:28 +0100
Message-Id: <c578e786b3994bd21b174d9af44533ff082aff52.1565892337.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565892337.git.robin.murphy@arm.com>
References: <cover.1565892337.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_113755_144129_14BB5DF7 
X-CRM114-Status: GOOD (  13.95  )
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

The smmu_write_atomic_lq oddity made some sense when the context
format was effectively tied to CONFIG_64BIT, but these days it's
simpler to just pick an explicit access size based on the format
for the one-and-a-half times we actually care.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu.c | 23 +++++++----------------
 1 file changed, 7 insertions(+), 16 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 5b12e96d7878..24b4de1a4185 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -83,17 +83,6 @@
 		((smmu->options & ARM_SMMU_OPT_SECURE_CFG_ACCESS)	\
 			? 0x400 : 0))
 
-/*
- * Some 64-bit registers only make sense to write atomically, but in such
- * cases all the data relevant to AArch32 formats lies within the lower word,
- * therefore this actually makes more sense than it might first appear.
- */
-#ifdef CONFIG_64BIT
-#define smmu_write_atomic_lq		writeq_relaxed
-#else
-#define smmu_write_atomic_lq		writel_relaxed
-#endif
-
 /* Translation context bank */
 #define ARM_SMMU_CB(smmu, n)	((smmu)->base + (((smmu)->numpage + (n)) << (smmu)->pgshift))
 
@@ -533,7 +522,10 @@ static void arm_smmu_tlb_inv_range_s2(unsigned long iova, size_t size,
 	reg += leaf ? ARM_SMMU_CB_S2_TLBIIPAS2L : ARM_SMMU_CB_S2_TLBIIPAS2;
 	iova >>= 12;
 	do {
-		smmu_write_atomic_lq(iova, reg);
+		if (smmu_domain->cfg.fmt == ARM_SMMU_CTX_FMT_AARCH64)
+			writeq_relaxed(iova, reg);
+		else
+			writel_relaxed(iova, reg);
 		iova += granule >> 12;
 	} while (size -= granule);
 }
@@ -1371,11 +1363,10 @@ static phys_addr_t arm_smmu_iova_to_phys_hard(struct iommu_domain *domain,
 	cb_base = ARM_SMMU_CB(smmu, cfg->cbndx);
 
 	spin_lock_irqsave(&smmu_domain->cb_lock, flags);
-	/* ATS1 registers can only be written atomically */
 	va = iova & ~0xfffUL;
-	if (smmu->version == ARM_SMMU_V2)
-		smmu_write_atomic_lq(va, cb_base + ARM_SMMU_CB_ATS1PR);
-	else /* Register is only 32-bit in v1 */
+	if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH64)
+		writeq_relaxed(va, cb_base + ARM_SMMU_CB_ATS1PR);
+	else
 		writel_relaxed(va, cb_base + ARM_SMMU_CB_ATS1PR);
 
 	if (readl_poll_timeout_atomic(cb_base + ARM_SMMU_CB_ATSR, tmp,
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
