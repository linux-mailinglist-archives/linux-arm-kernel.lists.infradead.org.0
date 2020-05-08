Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1A21CA15E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 05:09:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j1xIf2uHcN1Nl849JjARrGPwDfP0iVimpIG8bETQTRM=; b=A5Yp+xfSmfqdT9FwBOCkbhUYJz
	zdwRUUE9huUgDVhpDTcveLGiIvXGdDXhJhIAtEo92hTyWhqOc6ycr1ycSVdvGqaCvSBw9XxevZWdI
	2Mm+BNIQhXy+o8HwA+tIY3wLNIyTFGbfvk2hAcUX16+aITwNCVFiTcebDei7oAIrqLVJu6/aLba+1
	UqeKkPg23xbNfqy3aAqpJBA+d3sLr2q4L1N1Ed4g0nShyXcgA/zTCY5picfBdiNGroBuxa6Yj7ROj
	1S6jCmuh1AAHIqOz3RUExLxMpPqxbwxNg6Xlt0pRHuY+0hyFvnEioH/Km6fJpqNu1CzYtw0YZ+Kw0
	ceqDAFdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWtNw-0000qB-W1; Fri, 08 May 2020 03:09:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWtNb-0000fK-0L
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 03:08:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 95EAB31B;
 Thu,  7 May 2020 20:08:49 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.73.155])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5E0B13F305;
 Thu,  7 May 2020 20:08:47 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org,
	akpm@linux-foundation.org
Subject: [PATCH V3 1/3] arm64/mm: Drop __HAVE_ARCH_HUGE_PTEP_GET
Date: Fri,  8 May 2020 08:37:49 +0530
Message-Id: <1588907271-11920-2-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588907271-11920-1-git-send-email-anshuman.khandual@arm.com>
References: <1588907271-11920-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_200851_085293_EF4BCD95 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Anshuman Khandual <anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Platform specific huge_ptep_get() is required only when fetching the huge
PTE involves more than just dereferencing the page table pointer. This is
not the case on arm64 platform. Hence huge_ptep_pte() can be dropped along
with it's __HAVE_ARCH_HUGE_PTEP_GET subscription. Before that, it updates
the generic huge_ptep_get() with READ_ONCE() which will prevent known page
table issues with THP on arm64.

https://lore.kernel.org/r/1506527369-19535-1-git-send-email-will.deacon@arm.com/

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mm@kvack.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/include/asm/hugetlb.h | 6 ------
 include/asm-generic/hugetlb.h    | 2 +-
 2 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/arm64/include/asm/hugetlb.h b/arch/arm64/include/asm/hugetlb.h
index 2eb6c234d594..b88878ddc88b 100644
--- a/arch/arm64/include/asm/hugetlb.h
+++ b/arch/arm64/include/asm/hugetlb.h
@@ -17,12 +17,6 @@
 extern bool arch_hugetlb_migration_supported(struct hstate *h);
 #endif
 
-#define __HAVE_ARCH_HUGE_PTEP_GET
-static inline pte_t huge_ptep_get(pte_t *ptep)
-{
-	return READ_ONCE(*ptep);
-}
-
 static inline int is_hugepage_only_range(struct mm_struct *mm,
 					 unsigned long addr, unsigned long len)
 {
diff --git a/include/asm-generic/hugetlb.h b/include/asm-generic/hugetlb.h
index 822f433ac95c..40f85decc2ee 100644
--- a/include/asm-generic/hugetlb.h
+++ b/include/asm-generic/hugetlb.h
@@ -122,7 +122,7 @@ static inline int huge_ptep_set_access_flags(struct vm_area_struct *vma,
 #ifndef __HAVE_ARCH_HUGE_PTEP_GET
 static inline pte_t huge_ptep_get(pte_t *ptep)
 {
-	return *ptep;
+	return READ_ONCE(*ptep);
 }
 #endif
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
