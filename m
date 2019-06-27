Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A33582D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 14:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hsE/BM5GvmTLdZrY/73hP+A0F+g+uhk6gRk4mV1ezRs=; b=XMrKlkxX0RUL8H4vR2+155HRxg
	UQlogVHvIbT2gumJHnIKM9gA62aiZUF+VEnGeNicmSVLMk7xQvdbqF5MfTyZPlX9qTQvp8cS7yYo/
	H9EZ9YzjVqbh+8Nr5b04ndnSft6y5yGk0+u2uS4FBkvsgVUbt/cs2QYgl714/3rEZc+bjLB/smjb4
	kmSkJ/hcOQVPNIIs6iUU3XFgmfriJbgCnJk+MIa7WJIA0xSQWD7NhSzpMqwm1bve274UETZEfZ2py
	Pvv1fdy0zfgJyXPOw7TOIZJJdxwb45zcx7jBmUt003qLu5RaCSp6ANXNc3eqerEpmPPpAeBRSew0v
	uRcWxS/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgTq5-0001kJ-Mk; Thu, 27 Jun 2019 12:49:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgTpf-0001fq-J4
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 12:48:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BDB732B;
 Thu, 27 Jun 2019 05:48:54 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7A9973F718;
 Thu, 27 Jun 2019 05:48:51 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [RFC 1/2] arm64/mm: Change THP helpers to comply with generic MM
 semantics
Date: Thu, 27 Jun 2019 18:18:15 +0530
Message-Id: <1561639696-16361-2-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561639696-16361-1-git-send-email-anshuman.khandual@arm.com>
References: <1561639696-16361-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_054855_782559_6490E2EE 
X-CRM114-Status: GOOD (  13.91  )
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
 Suzuki Poulose <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

pmd_present() and pmd_trans_huge() are expected to behave in the following
manner during various phases of a given PMD. It is derived from a previous
detailed discussion on this topic [1] and present THP documentation [2].

pmd_present(pmd):

- Returns true if pmd refers to system RAM with a valid pmd_page(pmd)
- Returns false if pmd does not refer to system RAM - Invalid pmd_page(pmd)

pmd_trans_huge(pmd):

- Returns true if pmd refers to system RAM and is a trans huge mapping

-------------------------------------------------------------------------
|	PMD states	|	pmd_present	|	pmd_trans_huge	|
-------------------------------------------------------------------------
|	Mapped		|	Yes		|	Yes		|
-------------------------------------------------------------------------
|	Splitting	|	Yes		|	Yes		|
-------------------------------------------------------------------------
|	Migration/Swap	|	No		|	No		|
-------------------------------------------------------------------------

The problem:

PMD is first invalidated with pmdp_invalidate() before it's splitting. This
invalidation clears PMD_SECT_VALID as below.

PMD Split -> pmdp_invalidate() -> pmd_mknotpresent -> Clears PMD_SECT_VALID

Once PMD_SECT_VALID gets cleared, it results in pmd_present() return false
on the PMD entry. It will need another bit apart from PMD_SECT_VALID to re-
affirm pmd_present() as true during the THP split process. To comply with
above mentioned semantics, pmd_trans_huge() should also check pmd_present()
first before testing presence of an actual transparent huge mapping.

The solution:

Ideally PMD_TYPE_SECT should have been used here instead. But it shares the
bit position with PMD_SECT_VALID which is used for THP invalidation. Hence
it will not be there for pmd_present() check after pmdp_invalidate().

PTE_SPECIAL never gets used for PMD mapping i.e there is no pmd_special().
Hence this bit can be set on the PMD entry during invalidation which can
help in making pmd_present() return true and in recognizing the fact that
it still points to memory.

This bit is transient. During the split is process it will be overridden
by a page table page representing the normal pages in place of erstwhile
huge page. Other pmdp_invalidate() callers always write a fresh PMD value
on the entry overriding this transient PTE_SPECIAL making it safe. In the
past former pmd_[mk]splitting() functions used PTE_SPECIAL.

[1]: https://lkml.org/lkml/2018/10/17/231
[2]: https://www.kernel.org/doc/Documentation/vm/transhuge.txt

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Suzuki Poulose <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/include/asm/pgtable.h | 27 ++++++++++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 87a4b2d..90d4e24 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -368,15 +368,31 @@ static inline int pmd_protnone(pmd_t pmd)
 }
 #endif
 
+static inline int pmd_present(pmd_t pmd)
+{
+	if (pte_present(pmd_pte(pmd)))
+		return 1;
+
+	return pte_special(pmd_pte(pmd));
+}
+
 /*
  * THP definitions.
  */
 
 #ifdef CONFIG_TRANSPARENT_HUGEPAGE
-#define pmd_trans_huge(pmd)	(pmd_val(pmd) && !(pmd_val(pmd) & PMD_TABLE_BIT))
+static inline int pmd_trans_huge(pmd_t pmd)
+{
+	if (!pmd_val(pmd))
+		return 0;
+
+	if (!pmd_present(pmd))
+		return 0;
+
+	return !(pmd_val(pmd) & PMD_TABLE_BIT);
+}
 #endif /* CONFIG_TRANSPARENT_HUGEPAGE */
 
-#define pmd_present(pmd)	pte_present(pmd_pte(pmd))
 #define pmd_dirty(pmd)		pte_dirty(pmd_pte(pmd))
 #define pmd_young(pmd)		pte_young(pmd_pte(pmd))
 #define pmd_valid(pmd)		pte_valid(pmd_pte(pmd))
@@ -386,7 +402,12 @@ static inline int pmd_protnone(pmd_t pmd)
 #define pmd_mkclean(pmd)	pte_pmd(pte_mkclean(pmd_pte(pmd)))
 #define pmd_mkdirty(pmd)	pte_pmd(pte_mkdirty(pmd_pte(pmd)))
 #define pmd_mkyoung(pmd)	pte_pmd(pte_mkyoung(pmd_pte(pmd)))
-#define pmd_mknotpresent(pmd)	(__pmd(pmd_val(pmd) & ~PMD_SECT_VALID))
+
+static inline pmd_t pmd_mknotpresent(pmd_t pmd)
+{
+	pmd = pte_pmd(pte_mkspecial(pmd_pte(pmd)));
+	return __pmd(pmd_val(pmd) & ~PMD_SECT_VALID);
+}
 
 #define pmd_thp_or_huge(pmd)	(pmd_huge(pmd) || pmd_trans_huge(pmd))
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
