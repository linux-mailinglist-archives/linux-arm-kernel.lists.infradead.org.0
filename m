Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81041E535D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OC7bzp9MnS6zcmAot4VQIl6uguQF7QurbSeI4td+E2g=; b=PAUcXpylxJfCE1
	Ua6gtKRiNALBsg+LRoeasQU0fnCJ5PRjez3ToeS2qc73C6Lupkd+BxlS2vcrS+Db7lW1jYa11qf2H
	BGi7vcf/fUCR4/F3+yl6Hw/yDuqSfUNMtKyfvAb8I6WqfXxCum/kUf0mcW4UNs3lnEcCpaENq24RA
	4uoz5ALJTqSN8RdRhB8f3l1A+WzCwuYo8/DP7deJ4P6wJy46xHg8molbZCWFy3L1lI/Sfb6Uu+2wI
	3Iqlkac/qFndOl+fmxCWkP7D9x0nGN0jMK4ZxVXMoKsi8P8mucpTyY0hU0XQuWymwDpdrjpOLWF3J
	7ruHVbOLZ2nKkpUW2yBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO41b-0004DN-Ce; Fri, 25 Oct 2019 18:09:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO410-0003tX-8h
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 18:08:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2F46D337;
 Fri, 25 Oct 2019 11:08:44 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7DF453F6C4;
 Fri, 25 Oct 2019 11:08:43 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 01/10] iommu/io-pgtable: Make selftest gubbins consistently
 __init
Date: Fri, 25 Oct 2019 19:08:30 +0100
Message-Id: <2924fef301cd302135fa0e37e3523f1b465a5456.1572024120.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1572024119.git.robin.murphy@arm.com>
References: <cover.1572024119.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_110846_390890_B817E103 
X-CRM114-Status: GOOD (  13.49  )
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
Cc: iommu@lists.linux-foundation.org, jcrouse@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The selftests run as an initcall, but the annotation of the various
callbacks and data seems to be somewhat arbitrary. Add it consistently
for everything related to the selftests.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/io-pgtable-arm-v7s.c | 15 ++++++++-------
 drivers/iommu/io-pgtable-arm.c     | 13 +++++++------
 2 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
index 4cb394937700..7c3bd2c3cdca 100644
--- a/drivers/iommu/io-pgtable-arm-v7s.c
+++ b/drivers/iommu/io-pgtable-arm-v7s.c
@@ -846,27 +846,28 @@ struct io_pgtable_init_fns io_pgtable_arm_v7s_init_fns = {
 
 #ifdef CONFIG_IOMMU_IO_PGTABLE_ARMV7S_SELFTEST
 
-static struct io_pgtable_cfg *cfg_cookie;
+static struct io_pgtable_cfg *cfg_cookie __initdata;
 
-static void dummy_tlb_flush_all(void *cookie)
+static void __init dummy_tlb_flush_all(void *cookie)
 {
 	WARN_ON(cookie != cfg_cookie);
 }
 
-static void dummy_tlb_flush(unsigned long iova, size_t size, size_t granule,
-			    void *cookie)
+static void __init dummy_tlb_flush(unsigned long iova, size_t size,
+				   size_t granule, void *cookie)
 {
 	WARN_ON(cookie != cfg_cookie);
 	WARN_ON(!(size & cfg_cookie->pgsize_bitmap));
 }
 
-static void dummy_tlb_add_page(struct iommu_iotlb_gather *gather,
-			       unsigned long iova, size_t granule, void *cookie)
+static void __init dummy_tlb_add_page(struct iommu_iotlb_gather *gather,
+				      unsigned long iova, size_t granule,
+				      void *cookie)
 {
 	dummy_tlb_flush(iova, granule, granule, cookie);
 }
 
-static const struct iommu_flush_ops dummy_tlb_ops = {
+static const struct iommu_flush_ops dummy_tlb_ops __initconst = {
 	.tlb_flush_all	= dummy_tlb_flush_all,
 	.tlb_flush_walk	= dummy_tlb_flush,
 	.tlb_flush_leaf	= dummy_tlb_flush,
diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index fdc1a8308a1c..afa61b32b052 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -1100,22 +1100,23 @@ struct io_pgtable_init_fns io_pgtable_arm_mali_lpae_init_fns = {
 
 #ifdef CONFIG_IOMMU_IO_PGTABLE_LPAE_SELFTEST
 
-static struct io_pgtable_cfg *cfg_cookie;
+static struct io_pgtable_cfg *cfg_cookie __initdata;
 
-static void dummy_tlb_flush_all(void *cookie)
+static void __init dummy_tlb_flush_all(void *cookie)
 {
 	WARN_ON(cookie != cfg_cookie);
 }
 
-static void dummy_tlb_flush(unsigned long iova, size_t size, size_t granule,
-			    void *cookie)
+static void __init dummy_tlb_flush(unsigned long iova, size_t size,
+				   size_t granule, void *cookie)
 {
 	WARN_ON(cookie != cfg_cookie);
 	WARN_ON(!(size & cfg_cookie->pgsize_bitmap));
 }
 
-static void dummy_tlb_add_page(struct iommu_iotlb_gather *gather,
-			       unsigned long iova, size_t granule, void *cookie)
+static void __init dummy_tlb_add_page(struct iommu_iotlb_gather *gather,
+				      unsigned long iova, size_t granule,
+				      void *cookie)
 {
 	dummy_tlb_flush(iova, granule, granule, cookie);
 }
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
