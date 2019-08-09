Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FF8880EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 19:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lBeMwgCOyW7eHzuypv/TYwqE22+gsUK3toC0S9qut+Q=; b=pz19qbzcphgffC
	nUv7GtR/gJlt40XXgzB/Y/kEu5+tJRV79nkVSXKWmN8rI6vbQmnIIWsSmi4CAmt9A66FH1PhIxzsb
	nnGmnUurxZg+nnxXsNC4h2r+53OlOQuU2xE9KFi1chJjvAtp4dQUTnrh8Wo24eIf2u8rJVXAvJ+Qm
	F99iKfDgSNENJON8kdiwOBSnyO0a7+8lSAjnmM1a5PTjjWOwKBX4GlYxaQVTcL6LT9if+hRRngGaZ
	tPCMMun7KSdfRIl2j8Bg0vqOVS1UbnnHgPExtv4gRfWNkuE9EUb+MNErjZdDXo4CnbDCQVWYd+3qN
	kgStRPsoJqdNc6z2ncSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw8Od-0002Z6-OK; Fri, 09 Aug 2019 17:09:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw8NK-00017f-8m
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 17:08:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B90B81684;
 Fri,  9 Aug 2019 10:08:21 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8102E3F575;
 Fri,  9 Aug 2019 10:08:20 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 06/15] iommu/arm-smmu: Get rid of weird "atomic" write
Date: Fri,  9 Aug 2019 18:07:43 +0100
Message-Id: <17cf46a983ff4009cb7251f47c62937d7f834446.1565369764.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565369764.git.robin.murphy@arm.com>
References: <cover.1565369764.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_100822_363762_F407C7C8 
X-CRM114-Status: GOOD (  13.22  )
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

The smmu_write_atomic_lq oddity made some sense when the context
format was effectively tied to CONFIG_64BIT, but these days it's
simpler to just pick an explicit access size based on the format
for the one-and-a-half times we actually care.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu.c | 23 +++++++----------------
 1 file changed, 7 insertions(+), 16 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index a681e000e704..544c992cf586 100644
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
 #define ARM_SMMU_CB(smmu, n)	((smmu)->base + (((smmu)->cb_base + (n)) << (smmu)->pgshift))
 
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
