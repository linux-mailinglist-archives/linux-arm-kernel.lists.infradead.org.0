Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 787A112037
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 18:31:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=55BItU7wXOQ9OuLpjSnERqBD+Pj+VxIrQXIxCJnptGc=; b=SL4VyVkl2bMvB03p2NW1vHBF3o
	YsjGMr3F1HdcPbl9zBdK758hPF5HDbc5dvUI+zDSGei3KR1HnyG72gl8Hi73FYbSty6SqU/r8Rwmj
	OKPpPRlXzMmhW2/8H9T6q3TrEQWH9B3V2ha/B4cNa0Sb7/BqZSNxovmUT5VzYQq8GjTC8vumtQeVe
	cjfKAHAlhroV00/oCCO2vjkRrGe5SSotYsWZ4eoyLu51I6SAeHLbokr6I64aKG7Uwqu842mEsuXky
	dM5Y5FN37NepUvrnpKqa508hx6dyPgc5PvIz6uqAv9FN1Cdy9k0bmV3IzjcoHhclPknZSP1y4TVXP
	8/sOSwdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEcK-0002oq-LM; Thu, 02 May 2019 16:31:28 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEby-0002PU-SV
 for linux-arm-kernel@bombadil.infradead.org; Thu, 02 May 2019 16:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Message-Id:References:In-Reply-To:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t7dg5T44Dd4KXE8IEpFncflshllFm9CtUz+kLIXhYgI=; b=1+S5vaSkoXEGUVTIVqbiL3GnI
 JwU9DESaToWjBOgaMVgbY6tHznmgnvtMva8sFAMRHdhdi0pYp0JSb3A327Qjt7vg0cEBM20kSFy9q
 +colvedTKl6J7KxyX7HAQdkOXh3nqn0bSsvLVqUjQfX7r44rx736OxYNTzGZ5k73SvAJ6J4L/KoTN
 OJakypNSM/QDCCTWkqbhVLvnnL4Sv2+E3zHktBZRLssyJfzvcuXbaPuR38KFIkP0h9kmh+7zgErbz
 lh8Z8lWH1E7JumO2WMm9cPnMA2YORcKKt0MVLBfsCPR6JRCVKlaH6AhsP+o7W1AIWXznjDlnNm1Pg
 ET56x6NWg==;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMDf1-0000DK-Lx
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 15:30:13 +0000
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x42FSIdP138779
 for <linux-arm-kernel@lists.infradead.org>; Thu, 2 May 2019 11:29:40 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2s81d7dk98-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 02 May 2019 11:29:40 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Thu, 2 May 2019 16:29:38 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 2 May 2019 16:29:30 +0100
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x42FTTIY59834382
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 2 May 2019 15:29:29 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 156BEA4054;
 Thu,  2 May 2019 15:29:29 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 78D30A405F;
 Thu,  2 May 2019 15:29:24 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.205.209])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu,  2 May 2019 15:29:24 +0000 (GMT)
Received: by rapoport-lnx (sSMTP sendmail emulation);
 Thu, 02 May 2019 18:29:23 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 07/15] m68k: sun3: switch to generic version of pte allocation
Date: Thu,  2 May 2019 18:28:34 +0300
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
References: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
X-TM-AS-GCONF: 00
x-cbid: 19050215-0028-0000-0000-000003699E27
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050215-0029-0000-0000-000024290A10
Message-Id: <1556810922-20248-8-git-send-email-rppt@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-02_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=772 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905020103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_113011_770911_EF9285EB 
X-CRM114-Status: GOOD (  28.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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

The sun3 MMU variant of m68k uses GFP_KERNEL to allocate a PTE page and
then memset(0) or clear_highpage() to clear it.

This is equivalent to allocating the page with GFP_KERNEL | __GFP_ZERO,
which allows replacing sun3 implementation of pte_alloc_one() and
pte_alloc_one_kernel() with the generic ones.

The pte_free() and pte_free_kernel() versions are identical to the generic
ones and can be simply dropped.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/m68k/include/asm/sun3_pgalloc.h | 41 ++----------------------------------
 1 file changed, 2 insertions(+), 39 deletions(-)

diff --git a/arch/m68k/include/asm/sun3_pgalloc.h b/arch/m68k/include/asm/sun3_pgalloc.h
index 1456c5e..1a8ddbd 100644
--- a/arch/m68k/include/asm/sun3_pgalloc.h
+++ b/arch/m68k/include/asm/sun3_pgalloc.h
@@ -13,55 +13,18 @@
 
 #include <asm/tlb.h>
 
+#include <asm-generic/pgalloc.h>	/* for pte_{alloc,free}_one */
+
 extern const char bad_pmd_string[];
 
 #define pmd_alloc_one(mm,address)       ({ BUG(); ((pmd_t *)2); })
 
-
-static inline void pte_free_kernel(struct mm_struct *mm, pte_t *pte)
-{
-        free_page((unsigned long) pte);
-}
-
-static inline void pte_free(struct mm_struct *mm, pgtable_t page)
-{
-	pgtable_page_dtor(page);
-        __free_page(page);
-}
-
 #define __pte_free_tlb(tlb,pte,addr)			\
 do {							\
 	pgtable_page_dtor(pte);				\
 	tlb_remove_page((tlb), pte);			\
 } while (0)
 
-static inline pte_t *pte_alloc_one_kernel(struct mm_struct *mm)
-{
-	unsigned long page = __get_free_page(GFP_KERNEL);
-
-	if (!page)
-		return NULL;
-
-	memset((void *)page, 0, PAGE_SIZE);
-	return (pte_t *) (page);
-}
-
-static inline pgtable_t pte_alloc_one(struct mm_struct *mm)
-{
-        struct page *page = alloc_pages(GFP_KERNEL, 0);
-
-	if (page == NULL)
-		return NULL;
-
-	clear_highpage(page);
-	if (!pgtable_page_ctor(page)) {
-		__free_page(page);
-		return NULL;
-	}
-	return page;
-
-}
-
 static inline void pmd_populate_kernel(struct mm_struct *mm, pmd_t *pmd, pte_t *pte)
 {
 	pmd_val(*pmd) = __pa((unsigned long)pte);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
