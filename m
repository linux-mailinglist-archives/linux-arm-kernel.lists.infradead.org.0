Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0398B6445
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 15:20:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dMZNXJ9tZt2SW1VqNv+XLQHkJT97unwg60YcBWf1LkI=; b=ld8xCWokPu9EDz1qD61nZXk3mE
	YALogA3R4Cp9jw8nvJdrDI9ORhc/gtDK0JqGa5gyznhK2NtJsME52OGa5PMfIIpupC3uC/4sJ/ldQ
	BLxlb6eg3AqbdoVi6RltLIeVgrovZTBI7PxZ9ePbqgMY5sifZHxfa7ZctuCSGyCYOViArHIFcpd9k
	Jh+ZstwZTBsnR2wz1tXPql9wfRTirVJYjFUSvgTpZqqRECQZvqabJaZbJaiRdmwjuoWOWUuG2RzQu
	tjeH51lNHE8WshLB+aeKuENAgvA/Y/2ythEtxlbn/mp2HqOZkN7dPGr872QN2KzFUL3XuYF/yRwt8
	TeQEcEDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZsu-0006hh-S0; Wed, 18 Sep 2019 13:20:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZs2-0004su-RN
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 13:19:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 34E841576;
 Wed, 18 Sep 2019 06:19:46 -0700 (PDT)
Received: from localhost.localdomain (entos-thunderx2-02.shanghai.arm.com
 [10.169.40.54])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DA9F83F575;
 Wed, 18 Sep 2019 06:19:40 -0700 (PDT)
From: Jia He <justin.he@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>,
 Marc Zyngier <maz@kernel.org>, Matthew Wilcox <willy@infradead.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Suzuki Poulose <Suzuki.Poulose@arm.com>
Subject: [PATCH v4 3/3] mm: fix double page fault on arm64 if PTE_AF is cleared
Date: Wed, 18 Sep 2019 21:19:14 +0800
Message-Id: <20190918131914.38081-4-justin.he@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190918131914.38081-1-justin.he@arm.com>
References: <20190918131914.38081-1-justin.he@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_061947_119875_B9F44A7E 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Ralph Campbell <rcampbell@nvidia.com>, Jia He <justin.he@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Jun Yao <yaojun8558363@gmail.com>, Kaly Xin <Kaly.Xin@arm.com>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Punit Agrawal <punitagrawal@gmail.com>, hejianet@gmail.com,
 Thomas Gleixner <tglx@linutronix.de>, Robin Murphy <robin.murphy@arm.com>,
 Alex Van Brunt <avanbrunt@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When we tested pmdk unit test [1] vmmalloc_fork TEST1 in arm64 guest, there
will be a double page fault in __copy_from_user_inatomic of cow_user_page.

Below call trace is from arm64 do_page_fault for debugging purpose
[  110.016195] Call trace:
[  110.016826]  do_page_fault+0x5a4/0x690
[  110.017812]  do_mem_abort+0x50/0xb0
[  110.018726]  el1_da+0x20/0xc4
[  110.019492]  __arch_copy_from_user+0x180/0x280
[  110.020646]  do_wp_page+0xb0/0x860
[  110.021517]  __handle_mm_fault+0x994/0x1338
[  110.022606]  handle_mm_fault+0xe8/0x180
[  110.023584]  do_page_fault+0x240/0x690
[  110.024535]  do_mem_abort+0x50/0xb0
[  110.025423]  el0_da+0x20/0x24

The pte info before __copy_from_user_inatomic is (PTE_AF is cleared):
[ffff9b007000] pgd=000000023d4f8003, pud=000000023da9b003, pmd=000000023d4b3003, pte=360000298607bd3

As told by Catalin: "On arm64 without hardware Access Flag, copying from
user will fail because the pte is old and cannot be marked young. So we
always end up with zeroed page after fork() + CoW for pfn mappings. we
don't always have a hardware-managed access flag on arm64."

This patch fix it by calling pte_mkyoung. Also, the parameter is
changed because vmf should be passed to cow_user_page()

[1] https://github.com/pmem/pmdk/tree/master/src/test/vmmalloc_fork

Reported-by: Yibo Cai <Yibo.Cai@arm.com>
Signed-off-by: Jia He <justin.he@arm.com>
---
 mm/memory.c | 35 ++++++++++++++++++++++++++++++-----
 1 file changed, 30 insertions(+), 5 deletions(-)

diff --git a/mm/memory.c b/mm/memory.c
index e2bb51b6242e..d2c130a5883b 100644
--- a/mm/memory.c
+++ b/mm/memory.c
@@ -118,6 +118,13 @@ int randomize_va_space __read_mostly =
 					2;
 #endif
 
+#ifndef arch_faults_on_old_pte
+static inline bool arch_faults_on_old_pte(void)
+{
+	return false;
+}
+#endif
+
 static int __init disable_randmaps(char *s)
 {
 	randomize_va_space = 0;
@@ -2140,8 +2147,12 @@ static inline int pte_unmap_same(struct mm_struct *mm, pmd_t *pmd,
 	return same;
 }
 
-static inline void cow_user_page(struct page *dst, struct page *src, unsigned long va, struct vm_area_struct *vma)
+static inline void cow_user_page(struct page *dst, struct page *src,
+				 struct vm_fault *vmf)
 {
+	struct vm_area_struct *vma = vmf->vma;
+	unsigned long addr = vmf->address;
+
 	debug_dma_assert_idle(src);
 
 	/*
@@ -2152,20 +2163,34 @@ static inline void cow_user_page(struct page *dst, struct page *src, unsigned lo
 	 */
 	if (unlikely(!src)) {
 		void *kaddr = kmap_atomic(dst);
-		void __user *uaddr = (void __user *)(va & PAGE_MASK);
+		void __user *uaddr = (void __user *)(addr & PAGE_MASK);
+		pte_t entry;
 
 		/*
 		 * This really shouldn't fail, because the page is there
 		 * in the page tables. But it might just be unreadable,
 		 * in which case we just give up and fill the result with
-		 * zeroes.
+		 * zeroes. On architectures with software "accessed" bits,
+		 * we would take a double page fault here, so mark it
+		 * accessed here.
 		 */
+		if (arch_faults_on_old_pte() && !pte_young(vmf->orig_pte)) {
+			spin_lock(vmf->ptl);
+			if (likely(pte_same(*vmf->pte, vmf->orig_pte))) {
+				entry = pte_mkyoung(vmf->orig_pte);
+				if (ptep_set_access_flags(vma, addr,
+							  vmf->pte, entry, 0))
+					update_mmu_cache(vma, addr, vmf->pte);
+			}
+			spin_unlock(vmf->ptl);
+		}
+
 		if (__copy_from_user_inatomic(kaddr, uaddr, PAGE_SIZE))
 			clear_page(kaddr);
 		kunmap_atomic(kaddr);
 		flush_dcache_page(dst);
 	} else
-		copy_user_highpage(dst, src, va, vma);
+		copy_user_highpage(dst, src, addr, vma);
 }
 
 static gfp_t __get_fault_gfp_mask(struct vm_area_struct *vma)
@@ -2318,7 +2343,7 @@ static vm_fault_t wp_page_copy(struct vm_fault *vmf)
 				vmf->address);
 		if (!new_page)
 			goto oom;
-		cow_user_page(new_page, old_page, vmf->address, vma);
+		cow_user_page(new_page, old_page, vmf);
 	}
 
 	if (mem_cgroup_try_charge_delay(new_page, mm, GFP_KERNEL, &memcg, false))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
