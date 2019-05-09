Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5EB184A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 06:47:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NIIOXE3cS8DHmNFTePywEIWPfMD6IWjA6sdzzw0UDow=; b=eymF1WhJ0yr+wU4WtbT1JKC2KK
	yXYcod9HRc6KYiQl8rIlMbb6xb+nRS+Y6AoPBHxtBCOnmS+lJ24+GCrWN7fUgZiOTRdKBswv9GfUn
	VZKkj0xz2x67B+wzYHwGml8zoCnr55jxBBwiPzN95dwAT9gC22fbue44VSpIfCU43VJhP1XRHd6mY
	paqPLKWe9/6tDV4iTTOs8vb5npsRuqJAxErc3mmzjmAoqbwwVMWPcbXgZrOgCeOD0YkBqDjVCviRT
	zd/wIjOSqvOqFFtHmwgiOjet8O/yVuXnRZIXzYLLS/iTo3TUjCwEub75q9sqAJBV8fM6EJ832rxwN
	wSvfFTuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOaxz-0005M4-Pw; Thu, 09 May 2019 04:47:35 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOaxl-0005DS-1M
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 04:47:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C10A9374;
 Wed,  8 May 2019 21:47:19 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 07BC43F575;
 Wed,  8 May 2019 21:47:14 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 2/2] arm64/mm: Change offset base address in
 [pud|pmd]_free_[pmd|pte]_page()
Date: Thu,  9 May 2019 10:16:17 +0530
Message-Id: <1557377177-20695-3-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557377177-20695-1-git-send-email-anshuman.khandual@arm.com>
References: <1557377177-20695-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_214721_416333_C835EC77 
X-CRM114-Status: GOOD (  12.52  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 James Morse <james.morse@arm.com>, Robin Murphy <robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pgtable page address can be fetched with [pmd|pte]_offset_[kernel] if input
address is PMD_SIZE or PTE_SIZE aligned. Input address is now guaranteed to
be aligned, hence fetched pgtable page address is always correct. But using
0UL as offset base address has been a standard practice across platforms.
It also makes more sense as it isolates pgtable page address computation
from input virtual address alignment. This does not change functionality.

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/mm/mmu.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index e97f018ff740..71bcb783aace 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -1005,7 +1005,7 @@ int pmd_free_pte_page(pmd_t *pmdp, unsigned long addr)
 		return 1;
 	}
 
-	table = pte_offset_kernel(pmdp, addr);
+	table = pte_offset_kernel(pmdp, 0UL);
 	pmd_clear(pmdp);
 	__flush_tlb_kernel_pgtable(addr);
 	pte_free_kernel(NULL, table);
@@ -1026,8 +1026,8 @@ int pud_free_pmd_page(pud_t *pudp, unsigned long addr)
 		return 1;
 	}
 
-	table = pmd_offset(pudp, addr);
-	pmdp = table;
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
