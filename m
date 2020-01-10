Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D879A137102
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:22:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TXrHKUCSZ1kpm2UITCBZeRQY3k2773rZCqIC5ewbkZ4=; b=iK64rnzUvDGbic
	JIn79IBjXsWmg5fwtO+xZuouAr4l9IiMJQPxm/PV/jKGFMatC0qRjYZrKvUKLYUL1s53/9zOWwFmq
	HJ+PAL748R0V/JCjNGWF9BkUZuzwVdB/XjtxnLksUR1nyL39tL1TWjJKbJbA8XagMLn88h4AXCF7d
	a6k3tK3bRE91dv8bzx6/f72+lYBQSF++0XUQ5GQGk7qdJGoUtlcZI17thZYzYtD5/M7ciH+X1jYrf
	Hy14pid5lTkE115Ktdrq6bBsFZ3vcQnF82qYXc5z182YhANPkCSV8M6Qky4S9QkR7ggyu11/R+6hM
	Q+D/tV9eIt0x01z2pq9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipw6v-0005At-Bh; Fri, 10 Jan 2020 15:22:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipw6n-0005AK-Nf
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:21:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E7F830E;
 Fri, 10 Jan 2020 07:21:55 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C9EFF3F6C4;
 Fri, 10 Jan 2020 07:21:54 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH] iommu/io-pgtable-arm: Improve attribute handling
Date: Fri, 10 Jan 2020 15:21:51 +0000
Message-Id: <dee4fff7765629ca5d215af1105b5f98b32f073a.1578669544.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_072157_816393_09C58F78 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

By VMSA rules, using Normal Non-Cacheable type with a shareability
attribute of anything other than Outer Shareable is liable to lead into
unpredictable territory. Although the SMMU architectures seem to give
some slightly stronger guarantees of Non-Cacheable output types becoming
implicitly Outer Shareable in most cases, we may as well be explicit and
not take any chances. It's also weird that LPAE attribute handling is
currently split between prot_to_pte() and init_pte() given that it can
all be statically determined up-front. Thus, collect *all* the LPAE
attributes into prot_to_pte() in order to logically pick the
shareability based on the incoming IOMMU API prot value, and tweak the
short-descriptor code to stop setting TTBR0.NOS for Non-Cacheable walks.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/io-pgtable-arm-v7s.c |  7 +++----
 drivers/iommu/io-pgtable-arm.c     | 17 +++++++++++------
 2 files changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
index 7c3bd2c3cdca..7d6a8622f2e6 100644
--- a/drivers/iommu/io-pgtable-arm-v7s.c
+++ b/drivers/iommu/io-pgtable-arm-v7s.c
@@ -823,10 +823,9 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
 	wmb();
 
 	/* TTBRs */
-	cfg->arm_v7s_cfg.ttbr[0] = virt_to_phys(data->pgd) |
-				   ARM_V7S_TTBR_S | ARM_V7S_TTBR_NOS |
-				   (cfg->coherent_walk ?
-				   (ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_WBWA) |
+	cfg->arm_v7s_cfg.ttbr[0] = virt_to_phys(data->pgd) | ARM_V7S_TTBR_S |
+				   (cfg->coherent_walk ? (ARM_V7S_TTBR_NOS |
+				    ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_WBWA) |
 				    ARM_V7S_TTBR_ORGN_ATTR(ARM_V7S_RGN_WBWA)) :
 				   (ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_NC) |
 				    ARM_V7S_TTBR_ORGN_ATTR(ARM_V7S_RGN_NC)));
diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index bdf47f745268..b5025d732f5e 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -293,17 +293,11 @@ static void __arm_lpae_init_pte(struct arm_lpae_io_pgtable *data,
 {
 	arm_lpae_iopte pte = prot;
 
-	if (data->iop.cfg.quirks & IO_PGTABLE_QUIRK_ARM_NS)
-		pte |= ARM_LPAE_PTE_NS;
-
 	if (data->iop.fmt != ARM_MALI_LPAE && lvl == ARM_LPAE_MAX_LEVELS - 1)
 		pte |= ARM_LPAE_PTE_TYPE_PAGE;
 	else
 		pte |= ARM_LPAE_PTE_TYPE_BLOCK;
 
-	if (data->iop.fmt != ARM_MALI_LPAE)
-		pte |= ARM_LPAE_PTE_AF;
-	pte |= ARM_LPAE_PTE_SH_IS;
 	pte |= paddr_to_iopte(paddr, data);
 
 	__arm_lpae_set_pte(ptep, pte, &data->iop.cfg);
@@ -460,9 +454,20 @@ static arm_lpae_iopte arm_lpae_prot_to_pte(struct arm_lpae_io_pgtable *data,
 				<< ARM_LPAE_PTE_ATTRINDX_SHIFT);
 	}
 
+	if (prot & IOMMU_CACHE)
+		pte |= ARM_LPAE_PTE_SH_IS;
+	else
+		pte |= ARM_LPAE_PTE_SH_OS;
+
 	if (prot & IOMMU_NOEXEC)
 		pte |= ARM_LPAE_PTE_XN;
 
+	if (data->iop.cfg.quirks & IO_PGTABLE_QUIRK_ARM_NS)
+		pte |= ARM_LPAE_PTE_NS;
+
+	if (data->iop.fmt != ARM_MALI_LPAE)
+		pte |= ARM_LPAE_PTE_AF;
+
 	return pte;
 }
 
-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
