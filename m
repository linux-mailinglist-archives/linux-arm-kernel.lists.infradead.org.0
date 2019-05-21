Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836B02465B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 05:35:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5fhtFG9y6rIse/2zMF2MKuCDW18s4FKFRPcKf3eBzdU=; b=DrX
	FhlC5Sh9+MN4m2aDSIQrs8076x7684YGc/DFZ8UX0JUaiefbdMl8Nq/odOEYmv7iRi9cuI5gKLuJO
	NIwfCTmUldtZZ/a5u14tPoe8eW+/YmaUW7zCTPNmzm5lhyW5F688sxrh0A/fuPluXvoCPnzx3oHvc
	HcwN8J4sr8yf1VgRqnBgXXlD5Vmm8jesj5c6HlJgcPH+DxcsEmnk8+bCgXGkEvQdXJd9RZOdGU96E
	qqFkf+WAigXvW9v6NOhnH2ikJAR1zXoULPMe5JxhbMaevMD8oSnSqTpB8eefooRCnhHM1oVf8kwpM
	KS2LHZmu8MGp1ESZ5/6sB5HE+2MBuWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSvYr-0005VA-Mh; Tue, 21 May 2019 03:35:33 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSvYk-0005Um-9l
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 03:35:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5A671341;
 Mon, 20 May 2019 20:35:25 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.42.136])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 10D603F718;
 Mon, 20 May 2019 20:35:22 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/hugetlb: Use macros for contiguous huge page sizes
Date: Tue, 21 May 2019 09:05:03 +0530
Message-Id: <1558409703-31894-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_203526_347102_E6AF9772 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Catalin Marinas <catalin.marinas@arm.com>, Steve Capper <steve.capper@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace all open encoded contiguous huge page size computations with
available macro encodings CONT_PTE_SIZE and CONT_PMD_SIZE. There are other
instances where these macros are used in the file and this change makes it
consistently use the same mnemonic.

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Steve Capper <steve.capper@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/mm/hugetlbpage.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/mm/hugetlbpage.c b/arch/arm64/mm/hugetlbpage.c
index 6b4a47b..05b5dda 100644
--- a/arch/arm64/mm/hugetlbpage.c
+++ b/arch/arm64/mm/hugetlbpage.c
@@ -236,7 +236,7 @@ pte_t *huge_pte_alloc(struct mm_struct *mm,
 
 	if (sz == PUD_SIZE) {
 		ptep = (pte_t *)pudp;
-	} else if (sz == (PAGE_SIZE * CONT_PTES)) {
+	} else if (sz == (CONT_PTE_SIZE)) {
 		pmdp = pmd_alloc(mm, pudp, addr);
 
 		WARN_ON(addr & (sz - 1));
@@ -254,7 +254,7 @@ pte_t *huge_pte_alloc(struct mm_struct *mm,
 			ptep = huge_pmd_share(mm, addr, pudp);
 		else
 			ptep = (pte_t *)pmd_alloc(mm, pudp, addr);
-	} else if (sz == (PMD_SIZE * CONT_PMDS)) {
+	} else if (sz == (CONT_PMD_SIZE)) {
 		pmdp = pmd_alloc(mm, pudp, addr);
 		WARN_ON(addr & (sz - 1));
 		return (pte_t *)pmdp;
@@ -462,9 +462,9 @@ static int __init hugetlbpage_init(void)
 #ifdef CONFIG_ARM64_4K_PAGES
 	add_huge_page_size(PUD_SIZE);
 #endif
-	add_huge_page_size(PMD_SIZE * CONT_PMDS);
+	add_huge_page_size(CONT_PMD_SIZE);
 	add_huge_page_size(PMD_SIZE);
-	add_huge_page_size(PAGE_SIZE * CONT_PTES);
+	add_huge_page_size(CONT_PTE_SIZE);
 
 	return 0;
 }
@@ -478,9 +478,9 @@ static __init int setup_hugepagesz(char *opt)
 #ifdef CONFIG_ARM64_4K_PAGES
 	case PUD_SIZE:
 #endif
-	case PMD_SIZE * CONT_PMDS:
+	case CONT_PMD_SIZE:
 	case PMD_SIZE:
-	case PAGE_SIZE * CONT_PTES:
+	case CONT_PTE_SIZE:
 		add_huge_page_size(ps);
 		return 1;
 	}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
