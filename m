Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7183013C622
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:34:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qM6aHN90XTb0TBRKpzo40/sNVimTevIWjtIRmx20068=; b=X26LfBlBiP6llT
	6MBE9Pi7KL/sE2DfsI+433/3PVcKWq2npkGd3TeoIRZqqMysdR9qNOZYV6ntGp3sfk9nG+6eByYKp
	/wo/ueKtSlvDcM6rwdj33QR8h7qDhfelbLfF8GLqxUmUgzY5qcebKjw4DAMvF3vHzo6zCr0qtG1ZY
	y3oGMJR7azeuI/HfvcwuOqsNsituCTeLyomwGjLz8S+t8TjDS1JzIYK/cNz502D8f1Gz9nBX3ZbMS
	uoMIoiv9r7ZUvTAqm31fAF6vFRCmEM4j3gbI91vVpChz5Mwvnv87jDGI31nMKXX3fXOzOKnEE9Wpx
	7As5KwtnbLR3xxf5qJ3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjkX-00025v-Jq; Wed, 15 Jan 2020 14:34:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjji-0001Sw-Sw
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:33:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8283912FC;
 Wed, 15 Jan 2020 06:33:34 -0800 (PST)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1303A3F68E;
 Wed, 15 Jan 2020 06:33:33 -0800 (PST)
From: James Morse <james.morse@arm.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: [RFC PATCH 2/3] arm64: hibernate: Split create_safe_exec_page() and
 its mapping code
Date: Wed, 15 Jan 2020 14:33:21 +0000
Message-Id: <20200115143322.214247-3-james.morse@arm.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115143322.214247-1-james.morse@arm.com>
References: <20200115143322.214247-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_063335_016650_9FA7D2AE 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kexec wants to share hibernate's page table setup code, but needs its
memory-copy buffer idmapped as it also has to turn the MMU off.

Split the copy of this buffer from the code that maps it.

Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/hibernate.c | 57 +++++++++++++++++++++--------------
 1 file changed, 34 insertions(+), 23 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index a96b2921d22c..7f8cb7596f9e 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -183,19 +183,9 @@ int arch_hibernation_header_restore(void *addr)
 EXPORT_SYMBOL(arch_hibernation_header_restore);
 
 /*
- * Copies length bytes, starting at src_start into an new page,
- * perform cache maintentance, then maps it at the specified address low
- * address as executable.
- *
- * This is used by hibernate to copy the code it needs to execute when
- * overwriting the kernel text. This function generates a new set of page
- * tables, which it loads into ttbr0.
- *
- * Length is provided as we probably only want 4K of data, even on a 64K
- * page system.
+ * Create a set of page tables that map page to dst_addr.
  */
-static int create_safe_exec_page(void *src_start, size_t length,
-				 unsigned long dst_addr,
+static int create_single_mapping(unsigned long page, unsigned long dst_addr,
 				 phys_addr_t *phys_dst_addr,
 				 void *(*allocator)(gfp_t mask),
 				 gfp_t mask)
@@ -206,15 +196,6 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
-	unsigned long dst = (unsigned long)allocator(mask);
-
-	if (!dst) {
-		rc = -ENOMEM;
-		goto out;
-	}
-
-	memcpy((void *)dst, src_start, length);
-	__flush_icache_range(dst, dst + length);
 
 	trans_pgd = allocator(mask);
 	if (!trans_pgd) {
@@ -253,7 +234,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	}
 
 	ptep = pte_offset_kernel(pmdp, dst_addr);
-	set_pte(ptep, pfn_pte(virt_to_pfn(dst), PAGE_KERNEL_EXEC));
+	set_pte(ptep, pfn_pte(virt_to_pfn(page), PAGE_KERNEL_EXEC));
 
 	/*
 	 * Load our new page tables. A strict BBM approach requires that we
@@ -272,12 +253,42 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	write_sysreg(phys_to_ttbr(virt_to_phys(pgdp)), ttbr0_el1);
 	isb();
 
-	*phys_dst_addr = virt_to_phys((void *)dst);
+	*phys_dst_addr = virt_to_phys((void *)page);
 
 out:
 	return rc;
 }
 
+/*
+ * Copies length bytes, starting at src_start into an new page,
+ * perform cache maintentance, then maps it at the specified address low
+ * address as executable.
+ *
+ * This is used by hibernate to copy the code it needs to execute when
+ * overwriting the kernel text. This function generates a new set of page
+ * tables, which it loads into ttbr0.
+ *
+ * Length is provided as we probably only want 4K of data, even on a 64K
+ * page system.
+ */
+static int create_safe_exec_page(void *src_start, size_t length,
+				 unsigned long dst_addr,
+				 phys_addr_t *phys_dst_addr,
+				 void *(*allocator)(gfp_t mask),
+				 gfp_t mask)
+{
+	unsigned long page = (unsigned long)allocator(mask);
+
+	if (!page)
+		return -ENOMEM;
+
+	memcpy((void *)page, src_start, length);
+	__flush_icache_range(page, page + length);
+
+	return create_single_mapping(page, dst_addr, phys_dst_addr,
+				     allocator, gfp_t mask)
+}
+
 #define dcache_clean_range(start, end)	__flush_dcache_area(start, (end - start))
 
 int swsusp_arch_suspend(void)
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
