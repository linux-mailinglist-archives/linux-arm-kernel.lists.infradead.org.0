Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C40AF12033
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 18:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EmV1fUVjrkx9dGtkb5qf8i1tWgsVc6L0o7ydJGGv/8M=; b=j5Hjr1BVoSE7+uCxprvxdaYHZq
	z3/0i/1FIeGFg219pA8fD+xfUinAOyn+Eh/GB7GPmuhtsnGwV6IAtLtqEmkvBdIGiLdk4LT65XQDe
	9E8SsMbroaa9GhE43xnnaliAvODxa4cNTTqCn7QoIc3fFSFTsZZQq+cBQSV0nN00npVbtqWn9I0Ji
	V6fxuMBazzjw6xjOeW90SBJkLtV/yzltIw9WEY7qwpxGBG56AcGrSAwEUz8x87tDinP2wIhSiJ4wo
	rtCymqfgcek1forxU+dBJRoUOFhYkc33Dvyk13ZZFShbEon6eFG9NdjkF9Mi6NaRInQa1sxSKLTvw
	Uq9nfKKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEbx-0002QO-KF; Thu, 02 May 2019 16:31:05 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEbs-0002PU-HR
 for linux-arm-kernel@bombadil.infradead.org; Thu, 02 May 2019 16:31:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Message-Id:References:In-Reply-To:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bKEkXuUB0aT6OqT4IPvc1dAm0vfoKxIg4G5OqzwkthI=; b=RUEKjiu+MJYuBHZAvtK8lzP8R
 rldnT66slpaox5tXXetsmrYYFwyitBL3Vjk+lklsThJaz6e4c500aYvOrTzyNXAc4d4K2ZiubEDxy
 3FUfMgBAZyPfyx08sLCtVMsxaDG0r7VvhkfDGXSR6q0xYscTMCg5bn9cAnXJ7z+dw1ZetwgvFVa4N
 vfvzlFFueaQpgGb2CGIyVIvpvA9s62lU2nnHWRdnF4lkE+5pXYIHtdNJsP+tIituI2+GU5aUnkvCf
 u8GjnWkN8qCiyaCH0XNbg4HKTbDw5PKO4tjKPqmMbCbipsES947O8ztShjFruhdXpELR1HIqBKo0W
 g3B4m30hw==;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMDfJ-0000Iv-MI
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 15:30:30 +0000
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x42FTKsV053898
 for <linux-arm-kernel@lists.infradead.org>; Thu, 2 May 2019 11:30:28 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2s81jgvxt5-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 02 May 2019 11:30:28 -0400
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Thu, 2 May 2019 16:30:24 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 2 May 2019 16:30:15 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x42FUEvu28835860
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 2 May 2019 15:30:14 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 56FB84C058;
 Thu,  2 May 2019 15:30:14 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E40C54C052;
 Thu,  2 May 2019 15:30:09 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.205.209])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu,  2 May 2019 15:30:09 +0000 (GMT)
Received: by rapoport-lnx (sSMTP sendmail emulation);
 Thu, 02 May 2019 18:30:08 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 15/15] unicore32: switch to generic version of pte allocation
Date: Thu,  2 May 2019 18:28:42 +0300
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
References: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
X-TM-AS-GCONF: 00
x-cbid: 19050215-0020-0000-0000-00000338993E
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050215-0021-0000-0000-0000218B21F5
Message-Id: <1556810922-20248-16-git-send-email-rppt@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-02_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=764 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905020103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_113029_974064_3632A0B4 
X-CRM114-Status: GOOD (  26.64  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.7 KHOP_DYNAMIC           Relay looks like a dynamic address
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
Cc: Michal Hocko <mhocko@suse.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-mips@vger.kernel.org,
 Guo Ren <guoren@kernel.org>, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-arch@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Arnd Bergmann <arnd@arndb.de>,
 linux-um@lists.infradead.org, Richard Weinberger <richard@nod.at>,
 linux-m68k@lists.linux-m68k.org, Greentime Hu <green.hu@gmail.com>,
 nios2-dev@lists.rocketboards.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Richard Kuo <rkuo@codeaurora.org>,
 Paul Burton <paul.burton@mips.com>, linux-alpha@vger.kernel.org,
 Ley Foon Tan <lftan@altera.com>, linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace __get_free_page() and alloc_pages() calls with the generic
__pte_alloc_one_kernel() and __pte_alloc_one().

There is no functional change for the kernel PTE allocation.

The difference for the user PTEs, is that the clear_pte_table() is now
called after pgtable_page_ctor() and the addition of __GFP_ACCOUNT to the
GFP flags.

The pte_free() and pte_free_kernel() versions are identical to the generic
ones and can be simply dropped.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/unicore32/include/asm/pgalloc.h | 36 ++++++++----------------------------
 1 file changed, 8 insertions(+), 28 deletions(-)

diff --git a/arch/unicore32/include/asm/pgalloc.h b/arch/unicore32/include/asm/pgalloc.h
index 7cceabe..dd09af6 100644
--- a/arch/unicore32/include/asm/pgalloc.h
+++ b/arch/unicore32/include/asm/pgalloc.h
@@ -17,6 +17,10 @@
 #include <asm/cacheflush.h>
 #include <asm/tlbflush.h>
 
+#define __HAVE_ARCH_PTE_ALLOC_ONE_KERNEL
+#define __HAVE_ARCH_PTE_ALLOC_ONE
+#include <asm-generic/pgalloc.h>
+
 #define check_pgt_cache()		do { } while (0)
 
 #define _PAGE_USER_TABLE	(PMD_TYPE_TABLE | PMD_PRESENT)
@@ -28,17 +32,14 @@ extern void free_pgd_slow(struct mm_struct *mm, pgd_t *pgd);
 #define pgd_alloc(mm)			get_pgd_slow(mm)
 #define pgd_free(mm, pgd)		free_pgd_slow(mm, pgd)
 
-#define PGALLOC_GFP	(GFP_KERNEL | __GFP_ZERO)
-
 /*
  * Allocate one PTE table.
  */
 static inline pte_t *
 pte_alloc_one_kernel(struct mm_struct *mm)
 {
-	pte_t *pte;
+	pte_t *pte = __pte_alloc_one_kernel(mm);
 
-	pte = (pte_t *)__get_free_page(PGALLOC_GFP);
 	if (pte)
 		clean_dcache_area(pte, PTRS_PER_PTE * sizeof(pte_t));
 
@@ -50,35 +51,14 @@ pte_alloc_one(struct mm_struct *mm)
 {
 	struct page *pte;
 
-	pte = alloc_pages(PGALLOC_GFP, 0);
+	pte = __pte_alloc_one(mm, GFP_PGTABLE_USER);
 	if (!pte)
 		return NULL;
-	if (!PageHighMem(pte)) {
-		void *page = page_address(pte);
-		clean_dcache_area(page, PTRS_PER_PTE * sizeof(pte_t));
-	}
-	if (!pgtable_page_ctor(pte)) {
-		__free_page(pte);
-	}
-
+	if (!PageHighMem(pte))
+		clean_pte_table(page_address(pte));
 	return pte;
 }
 
-/*
- * Free one PTE table.
- */
-static inline void pte_free_kernel(struct mm_struct *mm, pte_t *pte)
-{
-	if (pte)
-		free_page((unsigned long)pte);
-}
-
-static inline void pte_free(struct mm_struct *mm, pgtable_t pte)
-{
-	pgtable_page_dtor(pte);
-	__free_page(pte);
-}
-
 static inline void __pmd_populate(pmd_t *pmdp, unsigned long pmdval)
 {
 	set_pmd(pmdp, __pmd(pmdval));
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
