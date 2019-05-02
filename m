Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EE711D36
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 17:30:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GEFREoqN7ztGi/H4oSs71uAdUlJpPQC+Aym09upDHAg=; b=bCi1m9XuOjK5el4numr4mgb1Cf
	ZWfYolFKqOkMawbWmSy4u8micrEn+ool9OsZDWdb4ZW1oHvU1W1LB7iQgQdUWlczJxVoXEPo1LXGI
	M4HMHU70ZExlv2dlQYFLiH2zHULIKzwjMXNkNyChOy9AuGVzsabhqlKnH8StMj1EjKrsEAmgW78sq
	Fz97do0actbrFCtS1LuwWFcUIRatC9bu0NdZTZ0fKnWOETdFYnrV453G8xmeWkI90/pH2A6YdGsTL
	t4hZt4abTCUG6pxEYwAse86V99iMV1HEK0rgQ0Hl5+EiOOj665fdMjU7IpDTsWkU7RHeWujGiVQ7t
	uguxgESA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMDff-0005Rr-4s; Thu, 02 May 2019 15:30:51 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMDfC-0004zH-Ku
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 15:30:43 +0000
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x42FSLO0046283
 for <linux-arm-kernel@lists.infradead.org>; Thu, 2 May 2019 11:30:21 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2s81yqbm13-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 02 May 2019 11:30:21 -0400
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Thu, 2 May 2019 16:30:18 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 2 May 2019 16:30:09 +0100
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x42FU8jp55836830
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 2 May 2019 15:30:08 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id CA539A405C;
 Thu,  2 May 2019 15:30:08 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 56A14A405B;
 Thu,  2 May 2019 15:30:04 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.205.209])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu,  2 May 2019 15:30:04 +0000 (GMT)
Received: by rapoport-lnx (sSMTP sendmail emulation);
 Thu, 02 May 2019 18:30:03 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 14/15] um: switch to generic version of pte allocation
Date: Thu,  2 May 2019 18:28:41 +0300
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
References: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
X-TM-AS-GCONF: 00
x-cbid: 19050215-0016-0000-0000-00000277A131
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050215-0017-0000-0000-000032D43641
Message-Id: <1556810922-20248-15-git-send-email-rppt@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-02_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=802 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905020103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_083023_765395_EC4B17C8 
X-CRM114-Status: GOOD (  22.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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

um allocates PTE pages with __get_free_page() and uses
GFP_KERNEL | __GFP_ZERO for the allocations.

Switch it to the generic version that does exactly the same thing for the
kernel page tables and adds __GFP_ACCOUNT for the user PTEs.

The pte_free() and pte_free_kernel() versions are identical to the generic
ones and can be simply dropped.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/um/include/asm/pgalloc.h | 16 ++--------------
 arch/um/kernel/mem.c          | 22 ----------------------
 2 files changed, 2 insertions(+), 36 deletions(-)

diff --git a/arch/um/include/asm/pgalloc.h b/arch/um/include/asm/pgalloc.h
index 99eb568..d7b282e 100644
--- a/arch/um/include/asm/pgalloc.h
+++ b/arch/um/include/asm/pgalloc.h
@@ -10,6 +10,8 @@
 
 #include <linux/mm.h>
 
+#include <asm-generic/pgalloc.h>	/* for pte_{alloc,free}_one */
+
 #define pmd_populate_kernel(mm, pmd, pte) \
 	set_pmd(pmd, __pmd(_PAGE_TABLE + (unsigned long) __pa(pte)))
 
@@ -25,20 +27,6 @@
 extern pgd_t *pgd_alloc(struct mm_struct *);
 extern void pgd_free(struct mm_struct *mm, pgd_t *pgd);
 
-extern pte_t *pte_alloc_one_kernel(struct mm_struct *);
-extern pgtable_t pte_alloc_one(struct mm_struct *);
-
-static inline void pte_free_kernel(struct mm_struct *mm, pte_t *pte)
-{
-	free_page((unsigned long) pte);
-}
-
-static inline void pte_free(struct mm_struct *mm, pgtable_t pte)
-{
-	pgtable_page_dtor(pte);
-	__free_page(pte);
-}
-
 #define __pte_free_tlb(tlb,pte, address)		\
 do {							\
 	pgtable_page_dtor(pte);				\
diff --git a/arch/um/kernel/mem.c b/arch/um/kernel/mem.c
index 99aa11b..2280374 100644
--- a/arch/um/kernel/mem.c
+++ b/arch/um/kernel/mem.c
@@ -215,28 +215,6 @@ void pgd_free(struct mm_struct *mm, pgd_t *pgd)
 	free_page((unsigned long) pgd);
 }
 
-pte_t *pte_alloc_one_kernel(struct mm_struct *mm)
-{
-	pte_t *pte;
-
-	pte = (pte_t *)__get_free_page(GFP_KERNEL|__GFP_ZERO);
-	return pte;
-}
-
-pgtable_t pte_alloc_one(struct mm_struct *mm)
-{
-	struct page *pte;
-
-	pte = alloc_page(GFP_KERNEL|__GFP_ZERO);
-	if (!pte)
-		return NULL;
-	if (!pgtable_page_ctor(pte)) {
-		__free_page(pte);
-		return NULL;
-	}
-	return pte;
-}
-
 #ifdef CONFIG_3_LEVEL_PGTABLES
 pmd_t *pmd_alloc_one(struct mm_struct *mm, unsigned long address)
 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
