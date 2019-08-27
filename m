Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 475589EF81
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:57:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rhxbQSncVqu43P9J8SUzFNFvKwZFLNHwP7TtS8WoeP8=; b=r+e
	Zd28xL3ZezuAoAPqI2YUN2pbmmQsXVasvBHboPUc0Rq189ZEv7h37qlYRGVP2Ufn2ctDXtkYIaYs5
	G7lUo+4QTYkq3LKQJcpxvMGzb7p9f9QIRbi5o3CrC21dA+mjdA6HN5AUkJJrDru/qztnW7Tb9cJ7r
	T3IBgLAjt1lyle9ZSBj0QKvAKYes3KrjL0tpXKazuVkpNp/GTCqzK2HjgRi6Js8Yevvs2/AWDOpM9
	TDyqhOq3BDf8u7M5mSgjHgNyif/9ROx225Y6ECdgJ3HbZrex9CyYnqJ1juHYvJOQprEa/ac7LVO8e
	RxzccBqcWX2n1ZWh9MdMJdlMzDYn8EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dqY-0005kS-Cw; Tue, 27 Aug 2019 15:57:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dqN-0005k9-Oh
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:57:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 48090337;
 Tue, 27 Aug 2019 08:57:15 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 28F563F59C;
 Tue, 27 Aug 2019 08:57:14 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: fix fixmap copy for 16K pages and 48-bit VA
Date: Tue, 27 Aug 2019 16:57:08 +0100
Message-Id: <20190827155708.34699-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_085715_841665_E6E071B9 
X-CRM114-Status: GOOD (  15.28  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Steve Capper <Steve.Capper@arm.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With 16K pages and 48-bit VAs, the PGD level of table has two entries,
and so the fixmap shares a PGD with the kernel image. Since commit:

  f9040773b7bbbd9e ("arm64: move kernel image to base of vmalloc area")

... we copy the existing fixmap to the new fine-grained page tables at
the PUD level in this case. When walking to the new PUD, we forgot to
offset the PGD entry and always used the PGD entry at index 0, but this
worked as the kernel image and fixmap were in the low half of the TTBR1
address space.

As of commit:

  14c127c957c1c607 ("arm64: mm: Flip kernel VA space")

... the kernel image and fixmap are in the high half of the TTBR1
address space, and hence use the PGD at index 1, but we didn't update
the fixmap copying code to account for this.

Thus, we'll erroneously try to copy the fixmap slots into a PUD under
the PGD entry at index 0. At the point we do so this PGD entry has not
been initialised, and thus we'll try to write a value to a small offset
from physical address 0, causing a number of potential problems.

Fix this be correctly offsetting the PGD. This is split over a few steps
for legibility.

Fixes: 14c127c957c1c607 ("arm64: mm: Flip kernel VA space")
Reported-by: Anshuman Khandual <anshuman.khandual@arm.com>
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Steve Capper <Steve.Capper@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/mm/mmu.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 1d4247f9a496..4197f27f86e5 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -646,6 +646,8 @@ static void __init map_kernel(pgd_t *pgdp)
 		set_pgd(pgd_offset_raw(pgdp, FIXADDR_START),
 			READ_ONCE(*pgd_offset_k(FIXADDR_START)));
 	} else if (CONFIG_PGTABLE_LEVELS > 3) {
+		pgd_t *bm_pgdp;
+		pud_t *bm_pudp;
 		/*
 		 * The fixmap shares its top level pgd entry with the kernel
 		 * mapping. This can really only occur when we are running
@@ -653,9 +655,9 @@ static void __init map_kernel(pgd_t *pgdp)
 		 * entry instead.
 		 */
 		BUG_ON(!IS_ENABLED(CONFIG_ARM64_16K_PAGES));
-		pud_populate(&init_mm,
-			     pud_set_fixmap_offset(pgdp, FIXADDR_START),
-			     lm_alias(bm_pmd));
+		bm_pgdp = pgd_offset_raw(pgdp, FIXADDR_START);
+		bm_pudp = pud_set_fixmap_offset(bm_pgdp, FIXADDR_START);
+		pud_populate(&init_mm, bm_pudp, lm_alias(bm_pmd));
 		pud_clear_fixmap();
 	} else {
 		BUG();
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
