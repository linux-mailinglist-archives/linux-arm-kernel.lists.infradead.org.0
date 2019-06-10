Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8413B526
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TJLQrLUzkPB9v4VElzwnAnzqhlx8aWzALTH8+UkieUg=; b=H3J
	YiHgJQ4NFz4d1l0KjrmpIx8G6aoDCVPai64BuJK2yJXBBwXjjvQmIikebqYek/6Q8RRkOLpZzeQpC
	wY9aO1+azX+bwoobIg2QM+herLwu9dpT4FHubS8HtMECLerMofdLYKzCfeutlExL0QFgVA/77XvmU
	8YnAfIItHSlRY+1i23fhLBds5Bp7+Ggr3kF7haJ5vuo2vfGS7sVqoEEkk1EbUAe/zZ9tRVoWR5s9N
	WB8Fc/LbNpbgYnjlXKDAwoItGoyDtdeTuIboJIF/d0j44FspUquYQjwnaoO8syEH1Myqmf9u+MD4r
	ZXnB3608IciD6e8jLHIZdeaRZZCecjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJcB-0004yc-DK; Mon, 10 Jun 2019 12:41:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haJbx-0004yG-9K
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 12:41:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C6C50337;
 Mon, 10 Jun 2019 05:41:14 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1CF243F557;
 Mon, 10 Jun 2019 05:41:14 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: mm: avoid redundant READ_ONCE(*ptep)
Date: Mon, 10 Jun 2019 13:41:07 +0100
Message-Id: <20190610124107.16497-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_054117_374521_3A511C0C 
X-CRM114-Status: GOOD (  13.78  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In set_pte_at(), we read the old pte value so that it can be passed into
checks for racy hw updates. These checks are only performed for
CONFIG_DEBUG_VM, and the value is not used otherwise.

Since we read the pte value with READ_ONCE(), the compiler cannot elide
the redundant read for !CONFIG_DEBUG_VM kernels.

Let's ameliorate matters by moving the read and the checks into a
helper, __check_racy_pte_update(), which only performs the read when the
value will be used. This also allows us to reformat the conditions for
clarity.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
---
 arch/arm64/include/asm/pgtable.h | 47 +++++++++++++++++++++++++---------------
 1 file changed, 30 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 2c41b04708fe..352048e7897e 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -246,29 +246,42 @@ extern void __sync_icache_dcache(pte_t pteval);
  *
  *   PTE_DIRTY || (PTE_WRITE && !PTE_RDONLY)
  */
-static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
-			      pte_t *ptep, pte_t pte)
+
+static inline void __check_racy_pte_update(struct mm_struct *mm, pte_t *ptep,
+					   pte_t pte)
 {
 	pte_t old_pte;
 
-	if (pte_present(pte) && pte_user_exec(pte) && !pte_special(pte))
-		__sync_icache_dcache(pte);
+	if (!IS_ENABLED(CONFIG_DEBUG_VM))
+		return;
+
+	old_pte = READ_ONCE(*ptep);
+
+	if (!pte_valid(old_pte) || !pte_valid(pte))
+		return;
+	if (mm != current->active_mm && atomic_read(&mm->mm_users) <= 1)
+		return;
 
 	/*
-	 * If the existing pte is valid, check for potential race with
-	 * hardware updates of the pte (ptep_set_access_flags safely changes
-	 * valid ptes without going through an invalid entry).
+	 * Check for potential race with hardware updates of the pte
+	 * (ptep_set_access_flags safely changes valid ptes without going
+	 * through an invalid entry).
 	 */
-	old_pte = READ_ONCE(*ptep);
-	if (IS_ENABLED(CONFIG_DEBUG_VM) && pte_valid(old_pte) && pte_valid(pte) &&
-	   (mm == current->active_mm || atomic_read(&mm->mm_users) > 1)) {
-		VM_WARN_ONCE(!pte_young(pte),
-			     "%s: racy access flag clearing: 0x%016llx -> 0x%016llx",
-			     __func__, pte_val(old_pte), pte_val(pte));
-		VM_WARN_ONCE(pte_write(old_pte) && !pte_dirty(pte),
-			     "%s: racy dirty state clearing: 0x%016llx -> 0x%016llx",
-			     __func__, pte_val(old_pte), pte_val(pte));
-	}
+	VM_WARN_ONCE(!pte_young(pte),
+		     "%s: racy access flag clearing: 0x%016llx -> 0x%016llx",
+		     __func__, pte_val(old_pte), pte_val(pte));
+	VM_WARN_ONCE(pte_write(old_pte) && !pte_dirty(pte),
+		     "%s: racy dirty state clearing: 0x%016llx -> 0x%016llx",
+		     __func__, pte_val(old_pte), pte_val(pte));
+}
+
+static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
+			      pte_t *ptep, pte_t pte)
+{
+	if (pte_present(pte) && pte_user_exec(pte) && !pte_special(pte))
+		__sync_icache_dcache(pte);
+
+	__check_racy_pte_update(mm, ptep, pte);
 
 	set_pte(ptep, pte);
 }
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
