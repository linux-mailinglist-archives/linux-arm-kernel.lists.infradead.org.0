Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 093F0C1A0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 03:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SDuBZtcSrFjnVTC+FfXfoa8yS9KFuTu0ClSn2NEkOvc=; b=Fo7ACnjGLu3xqeaqelslJOyjxy
	ZPzy2sFYxR2bd4J3vq7lhIlIh97UFkYzw1eqza93oIEA6vz6HbPHiy5AZU807yiNxeYCbDWocwwIa
	XEygjLCPf+v74lZ2uhAU59mJdT5E0E9XTXHP3mzUAylXA0J66GatgA0qPzHyWu1H+OZicOpYpfwiR
	H9mVVWcjsnPdy0pXYak5jDrrBH7U9HidkyRVbzN47FVKQ0bo58COrEpdwupIpkG2CZsd/UuyCzqLy
	NfDCtEGuu0iI4kBEVgsh+ZNMGUL2BYPz6laS3DMmxOMYYifIMCD3ss95LV4xkh4TPvpXOMq15z7s1
	g3OarX5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEkxk-0002Ro-OC; Mon, 30 Sep 2019 01:58:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEkwx-0001pw-03
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 01:58:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF4C115A2;
 Sun, 29 Sep 2019 18:58:05 -0700 (PDT)
Received: from localhost.localdomain (entos-thunderx2-02.shanghai.arm.com
 [10.169.40.54])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1C5563F706;
 Sun, 29 Sep 2019 18:58:01 -0700 (PDT)
From: Jia He <justin.he@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>,
 Marc Zyngier <maz@kernel.org>, Matthew Wilcox <willy@infradead.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v10 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Date: Mon, 30 Sep 2019 09:57:40 +0800
Message-Id: <20190930015740.84362-4-justin.he@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190930015740.84362-1-justin.he@arm.com>
References: <20190930015740.84362-1-justin.he@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_185807_122149_F11E0389 
X-CRM114-Status: GOOD (  20.90  )
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
Cc: Jia He <justin.he@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 Punit Agrawal <punitagrawal@gmail.com>, hejianet@gmail.com,
 Thomas Gleixner <tglx@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>
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

Add a WARN_ON_ONCE when __copy_from_user_inatomic() returns error
in case there can be some obscure use-case.(by Kirill)

[1] https://github.com/pmem/pmdk/tree/master/src/test/vmmalloc_fork

Signed-off-by: Jia He <justin.he@arm.com>
Reported-by: Yibo Cai <Yibo.Cai@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Acked-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
---
 mm/memory.c | 99 +++++++++++++++++++++++++++++++++++++++++++++--------
 1 file changed, 84 insertions(+), 15 deletions(-)

diff --git a/mm/memory.c b/mm/memory.c
index b1ca51a079f2..1f56b0118ef5 100644
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
@@ -2145,32 +2152,82 @@ static inline int pte_unmap_same(struct mm_struct *mm, pmd_t *pmd,
 	return same;
 }
 
-static inline void cow_user_page(struct page *dst, struct page *src, unsigned long va, struct vm_area_struct *vma)
+static inline bool cow_user_page(struct page *dst, struct page *src,
+				 struct vm_fault *vmf)
 {
+	bool ret;
+	void *kaddr;
+	void __user *uaddr;
+	bool force_mkyoung;
+	struct vm_area_struct *vma = vmf->vma;
+	struct mm_struct *mm = vma->vm_mm;
+	unsigned long addr = vmf->address;
+
 	debug_dma_assert_idle(src);
 
+	if (likely(src)) {
+		copy_user_highpage(dst, src, addr, vma);
+		return true;
+	}
+
 	/*
 	 * If the source page was a PFN mapping, we don't have
 	 * a "struct page" for it. We do a best-effort copy by
 	 * just copying from the original user address. If that
 	 * fails, we just zero-fill it. Live with it.
 	 */
-	if (unlikely(!src)) {
-		void *kaddr = kmap_atomic(dst);
-		void __user *uaddr = (void __user *)(va & PAGE_MASK);
+	kaddr = kmap_atomic(dst);
+	uaddr = (void __user *)(addr & PAGE_MASK);
+
+	/*
+	 * On architectures with software "accessed" bits, we would
+	 * take a double page fault, so mark it accessed here.
+	 */
+	force_mkyoung = arch_faults_on_old_pte() && !pte_young(vmf->orig_pte);
+	if (force_mkyoung) {
+		pte_t entry;
+
+		vmf->pte = pte_offset_map_lock(mm, vmf->pmd, addr, &vmf->ptl);
+		if (!likely(pte_same(*vmf->pte, vmf->orig_pte))) {
+			/*
+			 * Other thread has already handled the fault
+			 * and we don't need to do anything. If it's
+			 * not the case, the fault will be triggered
+			 * again on the same address.
+			 */
+			ret = false;
+			goto pte_unlock;
+		}
+
+		entry = pte_mkyoung(vmf->orig_pte);
+		if (ptep_set_access_flags(vma, addr, vmf->pte, entry, 0))
+			update_mmu_cache(vma, addr, vmf->pte);
+	}
 
+	/*
+	 * This really shouldn't fail, because the page is there
+	 * in the page tables. But it might just be unreadable,
+	 * in which case we just give up and fill the result with
+	 * zeroes.
+	 */
+	if (__copy_from_user_inatomic(kaddr, uaddr, PAGE_SIZE)) {
 		/*
-		 * This really shouldn't fail, because the page is there
-		 * in the page tables. But it might just be unreadable,
-		 * in which case we just give up and fill the result with
-		 * zeroes.
+		 * Give a warn in case there can be some obscure
+		 * use-case
 		 */
-		if (__copy_from_user_inatomic(kaddr, uaddr, PAGE_SIZE))
-			clear_page(kaddr);
-		kunmap_atomic(kaddr);
-		flush_dcache_page(dst);
-	} else
-		copy_user_highpage(dst, src, va, vma);
+		WARN_ON_ONCE(1);
+		clear_page(kaddr);
+	}
+
+	ret = true;
+
+pte_unlock:
+	if (force_mkyoung)
+		pte_unmap_unlock(vmf->pte, vmf->ptl);
+	kunmap_atomic(kaddr);
+	flush_dcache_page(dst);
+
+	return ret;
 }
 
 static gfp_t __get_fault_gfp_mask(struct vm_area_struct *vma)
@@ -2327,7 +2384,19 @@ static vm_fault_t wp_page_copy(struct vm_fault *vmf)
 				vmf->address);
 		if (!new_page)
 			goto oom;
-		cow_user_page(new_page, old_page, vmf->address, vma);
+
+		if (!cow_user_page(new_page, old_page, vmf)) {
+			/*
+			 * COW failed, if the fault was solved by other,
+			 * it's fine. If not, userspace would re-fault on
+			 * the same address and we will handle the fault
+			 * from the second attempt.
+			 */
+			put_page(new_page);
+			if (old_page)
+				put_page(old_page);
+			return 0;
+		}
 	}
 
 	if (mem_cgroup_try_charge_delay(new_page, mm, GFP_KERNEL, &memcg, false))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
