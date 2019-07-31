Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B38B77C70E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VCy4Qe3ic5wrZFnYFd/ChvstHVWFJCqp0DPITgU8rOY=; b=cYozm6HlPvZV6l
	lDsUBB0hoEgtviBn0Rl+aBorn/TWci9wqTmWFDIt8sB6nknQCGJytffV9Iy97YBmT0soFBK9XLO+x
	+O8wY1l+eKpZTbac25ZiSy6gH/3LfK82kiJGXErcbazrBuam9Dxvp2ajXMF7VUMFN15UwITwYlkBS
	WSaAtKTeJGdA0TLE5XMsN9WGu5VO5mxow2g7Ch+MZg/AQr0579Y1FASzhofQPoNmDdJlygsR2Xvtw
	7fGBWwFG4Z4LVXLTPdDB+FUhR1nEv5ln1u4Zshuk+AUcaZp109WRkRxeaLA+h4jFpO4lXXCjbqMkQ
	MNwcGSXwjvNcAnp60tCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqiN-0001rt-2o; Wed, 31 Jul 2019 15:40:31 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqgy-0007jn-L3
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 15:39:07 +0000
Received: by mail-qt1-x843.google.com with SMTP id h21so66968340qtn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 08:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=HM9ffM3Ct5ZgrBhxNWuGZauxxnBjbr17mWM+iliA67E=;
 b=jtW03mPTNpMTc670V7njVtxY3k9/5re7CPdcDVcjT8bs93LHBR/EwAoPKSM5CO66+g
 hTBBAMk+lFoO1JPuUr6B+jUdyWPMVaL0zSsMzPkWRADDsQOYmuH4TCC+wxAXpjLFKD4w
 KGJrc5XS1hZQ3yzE5VgSldS4frMGJhch9ftzdFTDTY//0Z0prz68KOF1kf17GnObnsBu
 4rAXeRV/85tm0sMjdFmdQL956iLpCT7InnhzG94VJg1cFFlHbBUDU9I6CKN6tqiLxiYO
 emrZCUupb67hUf2bQ9Va80hRqLAoxfkruZCoyBWZaUtifur9fVAe5BR4zf3V2oTEM6WR
 Bw7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HM9ffM3Ct5ZgrBhxNWuGZauxxnBjbr17mWM+iliA67E=;
 b=sCrAKnddtPNcIGIXiVl/DofYt2ffbfWaiYttVoLdmmbQAvgBxZiqWfvHR5oAEFHCJM
 viIJbfXmyGPi2OJH5tCKTHYJQhDD4FGbFz8p7R/qR5+1/K9M2KwzlfyjUyuDoso40mB7
 EMYo5ubDHSdyWPtLcFdc5ala3FAFp+fzW2kMjakwanXYcV9UQUUW4nfd2rgKGIIjP7i6
 XWgXDmLVvr3exIp8txWp2B/HNL0262gNnMsJYkKTgYrPBtbNydLwAlkmbgFiNHxHl3md
 8njWy3nM0MV6dd5f2NGkQBghCAQNhLPgBxl2LcRFaYkP62hnOCEi6sd4xsmtLH6VvDiu
 jQiA==
X-Gm-Message-State: APjAAAUIpUhdUVITbHBEOE53Lcqf5XTDFhozCGlZN35V8i9/jWvn5C3K
 MmW+zpfarKZTERmLe0jOJXE=
X-Google-Smtp-Source: APXvYqyfqk/oPFVHamoZx5msXhvQjnnSt2fmBBceeU/q9amOUBgwudcPBaoce1lVzuJHnUhWj0XvRA==
X-Received: by 2002:a0c:a8d2:: with SMTP id h18mr88972679qvc.16.1564587543515; 
 Wed, 31 Jul 2019 08:39:03 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f25sm35116803qta.81.2019.07.31.08.39.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 08:39:02 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marc.zyngier@arm.com,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com
Subject: [RFC v2 3/8] arm64: hibernate: switch to transtional page tables.
Date: Wed, 31 Jul 2019 11:38:52 -0400
Message-Id: <20190731153857.4045-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731153857.4045-1-pasha.tatashin@soleen.com>
References: <20190731153857.4045-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_083904_711910_2EDDD469 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Transitional page tables  provide the needed functionality to setup
temporary page tables needed for hibernate resume.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/hibernate.c | 261 ++++++++--------------------------
 1 file changed, 60 insertions(+), 201 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 9341fcc6e809..4120b03a02fd 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -16,7 +16,6 @@
 #define pr_fmt(x) "hibernate: " x
 #include <linux/cpu.h>
 #include <linux/kvm_host.h>
-#include <linux/mm.h>
 #include <linux/pm.h>
 #include <linux/sched.h>
 #include <linux/suspend.h>
@@ -31,14 +30,12 @@
 #include <asm/kexec.h>
 #include <asm/memory.h>
 #include <asm/mmu_context.h>
-#include <asm/pgalloc.h>
-#include <asm/pgtable.h>
-#include <asm/pgtable-hwdef.h>
 #include <asm/sections.h>
 #include <asm/smp.h>
 #include <asm/smp_plat.h>
 #include <asm/suspend.h>
 #include <asm/sysreg.h>
+#include <asm/trans_table.h>
 #include <asm/virt.h>
 
 /*
@@ -182,6 +179,12 @@ int arch_hibernation_header_restore(void *addr)
 }
 EXPORT_SYMBOL(arch_hibernation_header_restore);
 
+static void *
+hibernate_page_alloc(void *arg)
+{
+	return (void *)get_safe_page((gfp_t)(unsigned long)arg);
+}
+
 /*
  * Copies length bytes, starting at src_start into an new page,
  * perform cache maintentance, then maps it at the specified address low
@@ -196,57 +199,31 @@ EXPORT_SYMBOL(arch_hibernation_header_restore);
  */
 static int create_safe_exec_page(void *src_start, size_t length,
 				 unsigned long dst_addr,
-				 phys_addr_t *phys_dst_addr,
-				 void *(*allocator)(gfp_t mask),
-				 gfp_t mask)
+				 phys_addr_t *phys_dst_addr)
 {
-	int rc = 0;
-	pgd_t *pgdp;
-	pud_t *pudp;
-	pmd_t *pmdp;
-	pte_t *ptep;
-	unsigned long dst = (unsigned long)allocator(mask);
-
-	if (!dst) {
-		rc = -ENOMEM;
-		goto out;
-	}
-
-	memcpy((void *)dst, src_start, length);
-	__flush_icache_range(dst, dst + length);
+	struct trans_table_info trans_info = {
+		.trans_alloc_page	= hibernate_page_alloc,
+		.trans_alloc_arg	= (void *)GFP_ATOMIC,
+		.trans_flags		= 0,
+	};
+	void *page = (void *)get_safe_page(GFP_ATOMIC);
+	pgd_t *trans_table;
+	int rc;
+
+	if (!page)
+		return -ENOMEM;
 
-	pgdp = pgd_offset_raw(allocator(mask), dst_addr);
-	if (pgd_none(READ_ONCE(*pgdp))) {
-		pudp = allocator(mask);
-		if (!pudp) {
-			rc = -ENOMEM;
-			goto out;
-		}
-		pgd_populate(&init_mm, pgdp, pudp);
-	}
+	memcpy(page, src_start, length);
+	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
 
-	pudp = pud_offset(pgdp, dst_addr);
-	if (pud_none(READ_ONCE(*pudp))) {
-		pmdp = allocator(mask);
-		if (!pmdp) {
-			rc = -ENOMEM;
-			goto out;
-		}
-		pud_populate(&init_mm, pudp, pmdp);
-	}
-
-	pmdp = pmd_offset(pudp, dst_addr);
-	if (pmd_none(READ_ONCE(*pmdp))) {
-		ptep = allocator(mask);
-		if (!ptep) {
-			rc = -ENOMEM;
-			goto out;
-		}
-		pmd_populate_kernel(&init_mm, pmdp, ptep);
-	}
+	rc = trans_table_create_empty(&trans_info, &trans_table);
+	if (rc)
+		return rc;
 
-	ptep = pte_offset_kernel(pmdp, dst_addr);
-	set_pte(ptep, pfn_pte(virt_to_pfn(dst), PAGE_KERNEL_EXEC));
+	rc = trans_table_map_page(&trans_info, trans_table, page, dst_addr,
+				  PAGE_KERNEL_EXEC);
+	if (rc)
+		return rc;
 
 	/*
 	 * Load our new page tables. A strict BBM approach requires that we
@@ -262,13 +239,12 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	 */
 	cpu_set_reserved_ttbr0();
 	local_flush_tlb_all();
-	write_sysreg(phys_to_ttbr(virt_to_phys(pgdp)), ttbr0_el1);
+	write_sysreg(phys_to_ttbr(virt_to_phys(trans_table)), ttbr0_el1);
 	isb();
 
-	*phys_dst_addr = virt_to_phys((void *)dst);
+	*phys_dst_addr = virt_to_phys(page);
 
-out:
-	return rc;
+	return 0;
 }
 
 #define dcache_clean_range(start, end)	__flush_dcache_area(start, (end - start))
@@ -332,143 +308,6 @@ int swsusp_arch_suspend(void)
 	return ret;
 }
 
-static void _copy_pte(pte_t *dst_ptep, pte_t *src_ptep, unsigned long addr)
-{
-	pte_t pte = READ_ONCE(*src_ptep);
-
-	if (pte_valid(pte)) {
-		/*
-		 * Resume will overwrite areas that may be marked
-		 * read only (code, rodata). Clear the RDONLY bit from
-		 * the temporary mappings we use during restore.
-		 */
-		set_pte(dst_ptep, pte_mkwrite(pte));
-	} else if (debug_pagealloc_enabled() && !pte_none(pte)) {
-		/*
-		 * debug_pagealloc will removed the PTE_VALID bit if
-		 * the page isn't in use by the resume kernel. It may have
-		 * been in use by the original kernel, in which case we need
-		 * to put it back in our copy to do the restore.
-		 *
-		 * Before marking this entry valid, check the pfn should
-		 * be mapped.
-		 */
-		BUG_ON(!pfn_valid(pte_pfn(pte)));
-
-		set_pte(dst_ptep, pte_mkpresent(pte_mkwrite(pte)));
-	}
-}
-
-static int copy_pte(pmd_t *dst_pmdp, pmd_t *src_pmdp, unsigned long start,
-		    unsigned long end)
-{
-	pte_t *src_ptep;
-	pte_t *dst_ptep;
-	unsigned long addr = start;
-
-	dst_ptep = (pte_t *)get_safe_page(GFP_ATOMIC);
-	if (!dst_ptep)
-		return -ENOMEM;
-	pmd_populate_kernel(&init_mm, dst_pmdp, dst_ptep);
-	dst_ptep = pte_offset_kernel(dst_pmdp, start);
-
-	src_ptep = pte_offset_kernel(src_pmdp, start);
-	do {
-		_copy_pte(dst_ptep, src_ptep, addr);
-	} while (dst_ptep++, src_ptep++, addr += PAGE_SIZE, addr != end);
-
-	return 0;
-}
-
-static int copy_pmd(pud_t *dst_pudp, pud_t *src_pudp, unsigned long start,
-		    unsigned long end)
-{
-	pmd_t *src_pmdp;
-	pmd_t *dst_pmdp;
-	unsigned long next;
-	unsigned long addr = start;
-
-	if (pud_none(READ_ONCE(*dst_pudp))) {
-		dst_pmdp = (pmd_t *)get_safe_page(GFP_ATOMIC);
-		if (!dst_pmdp)
-			return -ENOMEM;
-		pud_populate(&init_mm, dst_pudp, dst_pmdp);
-	}
-	dst_pmdp = pmd_offset(dst_pudp, start);
-
-	src_pmdp = pmd_offset(src_pudp, start);
-	do {
-		pmd_t pmd = READ_ONCE(*src_pmdp);
-
-		next = pmd_addr_end(addr, end);
-		if (pmd_none(pmd))
-			continue;
-		if (pmd_table(pmd)) {
-			if (copy_pte(dst_pmdp, src_pmdp, addr, next))
-				return -ENOMEM;
-		} else {
-			set_pmd(dst_pmdp,
-				__pmd(pmd_val(pmd) & ~PMD_SECT_RDONLY));
-		}
-	} while (dst_pmdp++, src_pmdp++, addr = next, addr != end);
-
-	return 0;
-}
-
-static int copy_pud(pgd_t *dst_pgdp, pgd_t *src_pgdp, unsigned long start,
-		    unsigned long end)
-{
-	pud_t *dst_pudp;
-	pud_t *src_pudp;
-	unsigned long next;
-	unsigned long addr = start;
-
-	if (pgd_none(READ_ONCE(*dst_pgdp))) {
-		dst_pudp = (pud_t *)get_safe_page(GFP_ATOMIC);
-		if (!dst_pudp)
-			return -ENOMEM;
-		pgd_populate(&init_mm, dst_pgdp, dst_pudp);
-	}
-	dst_pudp = pud_offset(dst_pgdp, start);
-
-	src_pudp = pud_offset(src_pgdp, start);
-	do {
-		pud_t pud = READ_ONCE(*src_pudp);
-
-		next = pud_addr_end(addr, end);
-		if (pud_none(pud))
-			continue;
-		if (pud_table(pud)) {
-			if (copy_pmd(dst_pudp, src_pudp, addr, next))
-				return -ENOMEM;
-		} else {
-			set_pud(dst_pudp,
-				__pud(pud_val(pud) & ~PMD_SECT_RDONLY));
-		}
-	} while (dst_pudp++, src_pudp++, addr = next, addr != end);
-
-	return 0;
-}
-
-static int copy_page_tables(pgd_t *dst_pgdp, unsigned long start,
-			    unsigned long end)
-{
-	unsigned long next;
-	unsigned long addr = start;
-	pgd_t *src_pgdp = pgd_offset_k(start);
-
-	dst_pgdp = pgd_offset_raw(dst_pgdp, start);
-	do {
-		next = pgd_addr_end(addr, end);
-		if (pgd_none(READ_ONCE(*src_pgdp)))
-			continue;
-		if (copy_pud(dst_pgdp, src_pgdp, addr, next))
-			return -ENOMEM;
-	} while (dst_pgdp++, src_pgdp++, addr = next, addr != end);
-
-	return 0;
-}
-
 /*
  * Setup then Resume from the hibernate image using swsusp_arch_suspend_exit().
  *
@@ -484,21 +323,42 @@ int swsusp_arch_resume(void)
 	phys_addr_t phys_hibernate_exit;
 	void __noreturn (*hibernate_exit)(phys_addr_t, phys_addr_t, void *,
 					  void *, phys_addr_t, phys_addr_t);
+	struct trans_table_info trans_info = {
+		.trans_alloc_page	= hibernate_page_alloc,
+		.trans_alloc_arg	= (void *)GFP_ATOMIC,
+		/*
+		 * Resume will overwrite areas that may be marked read only
+		 * (code, rodata). Clear the RDONLY bit from the temporary
+		 * mappings we use during restore.
+		 */
+		.trans_flags		= TRANS_MKWRITE,
+	};
+
+	/*
+	 * debug_pagealloc will removed the PTE_VALID bit if the page isn't in
+	 * use by the resume kernel. It may have been in use by the original
+	 * kernel, in which case we need to put it back in our copy to do the
+	 * restore.
+	 *
+	 * Before marking this entry valid, check the pfn should be mapped.
+	 */
+	if (debug_pagealloc_enabled())
+		trans_info.trans_flags |= (TRANS_MKVALID | TRANS_CHECKPFN);
 
 	/*
 	 * Restoring the memory image will overwrite the ttbr1 page tables.
 	 * Create a second copy of just the linear map, and use this when
 	 * restoring.
 	 */
-	tmp_pg_dir = (pgd_t *)get_safe_page(GFP_ATOMIC);
-	if (!tmp_pg_dir) {
-		pr_err("Failed to allocate memory for temporary page tables.\n");
-		rc = -ENOMEM;
+	rc = trans_table_create_copy(&trans_info, &tmp_pg_dir,
+				     pgd_offset_k(PAGE_OFFSET), PAGE_OFFSET, 0);
+	if (rc) {
+		if (rc == -ENOMEM)
+			pr_err("Failed to allocate memory for temporary page tables.\n");
+		else if (rc == -ENXIO)
+			pr_err("Tried to set PTE for PFN that does not exist\n");
 		goto out;
 	}
-	rc = copy_page_tables(tmp_pg_dir, PAGE_OFFSET, 0);
-	if (rc)
-		goto out;
 
 	/*
 	 * We need a zero page that is zero before & after resume in order to
@@ -523,8 +383,7 @@ int swsusp_arch_resume(void)
 	 */
 	rc = create_safe_exec_page(__hibernate_exit_text_start, exit_size,
 				   (unsigned long)hibernate_exit,
-				   &phys_hibernate_exit,
-				   (void *)get_safe_page, GFP_ATOMIC);
+				   &phys_hibernate_exit);
 	if (rc) {
 		pr_err("Failed to create safe executable page for hibernate_exit code.\n");
 		goto out;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
