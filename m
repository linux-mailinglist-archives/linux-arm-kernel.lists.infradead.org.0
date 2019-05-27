Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B74ED2AD76
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 05:58:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WF3ZODxho8HyB4aLN8fppVtn+KYX6/7H0+35KtsJUG8=; b=Az+
	kG9YS5R058tsSrYSKzYeBbqr3csl0sWtSszx/v+lBkPmHlUfED/8W+fX+Feph5Gr5kAIGib+b+1k9
	tK7yBUx/zoix5YtMTQCZ/+j3RtzoFWkzFMBB1HWPHyJbT1LeBCJi36wWr5sOwi5DzNMu1czBvQC5u
	pb/2ZD5WG5+09JSOZDwC/7N2YnDUQQwqxhhM9c3fWMEWzG/c0fX2BYHCPvl5Wpqps3N/JUbejnrtn
	0Eal50TgTAjpl6gMTx2ZR7DB5ZRKD0hgQG6HUuF6+mZadYLkEw6VeNfgfQX0bo8VqsyG5nh9a95uL
	ZXNe4ZvWjWeLWQd0uGPmfmKEC8z/exQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV6md-00042n-VJ; Mon, 27 May 2019 03:58:47 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV6mX-00041w-Ai
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 03:58:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 25AF0A78;
 Sun, 26 May 2019 20:58:38 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.40.17])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9D3373F690;
 Sun, 26 May 2019 20:58:35 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64/mm: Simplify protection flag creation for kernel huge
 mappings
Date: Mon, 27 May 2019 09:28:15 +0530
Message-Id: <1558929495-19898-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_205841_374421_AC6A058F 
X-CRM114-Status: GOOD (  12.66  )
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
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Even though they have got the same value, PMD_TYPE_SECT and PUD_TYPE_SECT
get used for kernel huge mappings. But before that first the table bit gets
cleared using leaf level PTE_TABLE_BIT. Though functionally they are same,
we should use page table level specific macros to be consistent as per the
MMU specifications. Create page table level specific wrappers for kernel
huge mapping entries and just drop mk_sect_prot() which does not have any
other user.

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/include/asm/pgtable.h | 9 +++++++--
 arch/arm64/mm/mmu.c              | 8 ++------
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 2c41b04708fe..6478dd121228 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -335,9 +335,14 @@ static inline pmd_t pte_pmd(pte_t pte)
 	return __pmd(pte_val(pte));
 }
 
-static inline pgprot_t mk_sect_prot(pgprot_t prot)
+static inline pgprot_t mk_pud_sect_prot(pgprot_t prot)
 {
-	return __pgprot(pgprot_val(prot) & ~PTE_TABLE_BIT);
+	return __pgprot((pgprot_val(prot) & ~PUD_TABLE_BIT) | PUD_TYPE_SECT);
+}
+
+static inline pgprot_t mk_pmd_sect_prot(pgprot_t prot)
+{
+	return __pgprot((pgprot_val(prot) & ~PMD_TABLE_BIT) | PMD_TYPE_SECT);
 }
 
 #ifdef CONFIG_NUMA_BALANCING
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index a1bfc4413982..22c2e4f0768f 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -971,9 +971,7 @@ int __init arch_ioremap_pmd_supported(void)
 
 int pud_set_huge(pud_t *pudp, phys_addr_t phys, pgprot_t prot)
 {
-	pgprot_t sect_prot = __pgprot(PUD_TYPE_SECT |
-					pgprot_val(mk_sect_prot(prot)));
-	pud_t new_pud = pfn_pud(__phys_to_pfn(phys), sect_prot);
+	pud_t new_pud = pfn_pud(__phys_to_pfn(phys), mk_pud_sect_prot(prot));
 
 	/* Only allow permission changes for now */
 	if (!pgattr_change_is_safe(READ_ONCE(pud_val(*pudp)),
@@ -987,9 +985,7 @@ int pud_set_huge(pud_t *pudp, phys_addr_t phys, pgprot_t prot)
 
 int pmd_set_huge(pmd_t *pmdp, phys_addr_t phys, pgprot_t prot)
 {
-	pgprot_t sect_prot = __pgprot(PMD_TYPE_SECT |
-					pgprot_val(mk_sect_prot(prot)));
-	pmd_t new_pmd = pfn_pmd(__phys_to_pfn(phys), sect_prot);
+	pmd_t new_pmd = pfn_pmd(__phys_to_pfn(phys), mk_pmd_sect_prot(prot));
 
 	/* Only allow permission changes for now */
 	if (!pgattr_change_is_safe(READ_ONCE(pmd_val(*pmdp)),
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
