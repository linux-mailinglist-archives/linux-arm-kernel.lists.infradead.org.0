Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 175F9F1A36
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 16:41:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4Unr9LmI0mRFWkAJGMoSWspY2F8hF7semdWZvrHG0xc=; b=hgALQ62w/4gZeL
	mL1M4MXcBcIGx34JCoaf2qJ/cW7RhC84B3jx45RFZJlykNSjHaTHsFeVvt+vfxeEXxtHQQ9lS06u3
	EQ1eIMZ8igMHXNEaNqkN1J9n8F6GwgOhYf7rU65btJkEGyd++xvk5D/qsRDgL1JJ2RqysNGF8b7Dn
	0y0POyuuTyj088Km7OqevWjiUMe7/Xft4oXnDiqCYoAB0hsTuf99ZKV9/shwqmG8qQAOdTtejmCvm
	BJk+SBOCd0TirWz72S8fHbG+1RbCzGvtc5zjUkOy/8xmYowgIIu3m8FvUGohxtQuLOSyOXomKlhjz
	M6dqa6dllP/YCClmvyWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSNQt-0000nz-PI; Wed, 06 Nov 2019 15:41:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSNQl-0000nR-Bd
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 15:41:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD67046A;
 Wed,  6 Nov 2019 07:41:09 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1B38D3F71A;
 Wed,  6 Nov 2019 07:41:08 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Do not mask out PTE_RDONLY in pte_same()
Date: Wed,  6 Nov 2019 15:41:05 +0000
Message-Id: <20191106154105.15176-1-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_074111_440175_BD0143AD 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
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
Cc: John Stultz <john.stultz@linaro.org>, Will Deacon <will@kernel.org>,
 Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Following commit 73e86cb03cf2 ("arm64: Move PTE_RDONLY bit handling out
of set_pte_at()"), the PTE_RDONLY bit is no longer managed by
set_pte_at() but built into the PAGE_* attribute definitions.
Consequently, pte_same() must include this bit when checking two PTEs
for equality.

Remove the arm64-specific pte_same() function, practically reverting
commit 747a70e60b72 ("arm64: Fix copy-on-write referencing in HugeTLB")

Fixes: 73e86cb03cf2 ("arm64: Move PTE_RDONLY bit handling out of set_pte_at()")
Cc: <stable@vger.kernel.org> # 4.14.x-
Cc: Will Deacon <will@kernel.org>
Cc: Steve Capper <steve.capper@arm.com>
Reported-by: John Stultz <john.stultz@linaro.org>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---

Steve,

Could you please check that the original problem fixed by commit
747a70e60b72 no longer exists after reverting it in 4.14 onwards?

Thanks.

 arch/arm64/include/asm/pgtable.h | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 5716fe86e7b9..5d15b4735a0e 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -283,23 +283,6 @@ static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
 	set_pte(ptep, pte);
 }
 
-#define __HAVE_ARCH_PTE_SAME
-static inline int pte_same(pte_t pte_a, pte_t pte_b)
-{
-	pteval_t lhs, rhs;
-
-	lhs = pte_val(pte_a);
-	rhs = pte_val(pte_b);
-
-	if (pte_present(pte_a))
-		lhs &= ~PTE_RDONLY;
-
-	if (pte_present(pte_b))
-		rhs &= ~PTE_RDONLY;
-
-	return (lhs == rhs);
-}
-
 /*
  * Huge pte definitions.
  */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
