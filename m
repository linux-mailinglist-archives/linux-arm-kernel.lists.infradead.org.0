Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FB6DADE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 05:52:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=g5tMmFXLi7ya4bS87kSvypnLaAtwhq16pSLAvmim8Fc=; b=UZ+
	O69BQg5Sl8T2MEyvng5iBiia89hfwK30ZAYnt8WqM1OmVs0yhE2A56yksgzLRdaveM+9Y5172Z9nd
	4TbaLGI5Vc14NgQs/D/4CSBNBzfxjtXk5mkPDyNKkKgq41AdDtn1g8jR6I37TKkT1DxjivYTrX6vm
	8f3aOwijdARcBSV7QkGMlvl08qc/ByCLc0S6YlFpvC0JPzHzUiJcKfHj73oceJtM5ruF2/yHnnJHw
	dVaR3YCqSoKyz1gruvchRBj7puE2XiRHU0BfEcA7ACm6CUOzEF3J0m7+5nTEMd/5sQxqGOTJ5ki/A
	UFhsFkAoagbaMMp02J3QgvWQpxCSk4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKxKs-0004Q5-Ou; Mon, 29 Apr 2019 03:52:10 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKxKl-0004Pm-N0
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 03:52:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C600680D;
 Sun, 28 Apr 2019 20:52:00 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.85])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 126BB3F557;
 Sun, 28 Apr 2019 20:51:57 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/mm: Fix pgtable page offset address in
 [pud|pmd]_free_[pmd|pte]_page
Date: Mon, 29 Apr 2019 09:21:54 +0530
Message-Id: <1556509914-21138-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_205203_757712_2CB6CAC6 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pgtable page address can be fetched with [pmd|pte]_offset_[kernel] if
the input address is either PMD_SIZE or PTE_SIZE aligned. Though incoming
input addresses tend to be aligned to the required size (PMD_SIZE|PTE_SIZE)
which is the reason why there were no reported problems earlier. But it is
not correct. However 0UL as input address will guarantee that the fetched
pgtable page address is always correct without any possible skid. While at
this just warn once when the addresses are not aligned.

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/mm/mmu.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index e97f018ff740..17af49585fb2 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -1005,7 +1005,8 @@ int pmd_free_pte_page(pmd_t *pmdp, unsigned long addr)
 		return 1;
 	}
 
-	table = pte_offset_kernel(pmdp, addr);
+	WARN_ON_ONCE(!IS_ALIGNED(addr, PMD_SIZE));
+	table = pte_offset_kernel(pmdp, 0UL);
 	pmd_clear(pmdp);
 	__flush_tlb_kernel_pgtable(addr);
 	pte_free_kernel(NULL, table);
@@ -1026,8 +1027,9 @@ int pud_free_pmd_page(pud_t *pudp, unsigned long addr)
 		return 1;
 	}
 
-	table = pmd_offset(pudp, addr);
-	pmdp = table;
+	WARN_ON_ONCE(!IS_ALIGNED(addr, PUD_SIZE));
+	table = pmd_offset(pudp, 0UL);
+	pmdp = pmd_offset(pudp, addr);
 	next = addr;
 	end = addr + PUD_SIZE;
 	do {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
