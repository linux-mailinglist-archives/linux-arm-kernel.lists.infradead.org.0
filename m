Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD3711D30
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 17:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y1jm698y/QekXs9CQ1gBXAFG3nCGE+v6sBiqmDRgAvU=; b=CzCHcqtprNw/dpfmfIiIzjVES1
	eojFqx8vPy2NNKa835+1sXncl1bETP7rc+lXVbdohRMe6GNalkG8uCnga2H4Lbhahz9tX5CrB2A/t
	hgX+n4MjWB8gmk79k1S0AKmEZZgmfKU86XdoQLy7vf1P09wSzgLqQWi5b0IaOALif8yXtzGuP1Jnv
	8dNUlTUbLZYpALSyO4iWPmsq58qZCgaMI7YCmdB5cDxiCIRb0BHlFwyu/dRwLJwUA5oDlU2chvJ5f
	HTAcYsrLYNxTc3zp3yGZ0VCr2vvzQ6fsmlVNfgZ5DuFXmVyjB3lwo7JUWed8u1q4u6OufeIKlwdXB
	GiwuPf0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMDfL-000503-No; Thu, 02 May 2019 15:30:31 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMDeR-0002nU-7s
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 15:30:00 +0000
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x42FSd6S130079
 for <linux-arm-kernel@lists.infradead.org>; Thu, 2 May 2019 11:29:34 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2s81j5w9xv-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 02 May 2019 11:29:34 -0400
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Thu, 2 May 2019 16:29:32 +0100
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 2 May 2019 16:29:24 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x42FTNNW48758890
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 2 May 2019 15:29:23 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6193DA4053;
 Thu,  2 May 2019 15:29:23 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DAE81A4040;
 Thu,  2 May 2019 15:29:18 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.205.209])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu,  2 May 2019 15:29:18 +0000 (GMT)
Received: by rapoport-lnx (sSMTP sendmail emulation);
 Thu, 02 May 2019 18:29:17 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 06/15] hexagon: switch to generic version of pte allocation
Date: Thu,  2 May 2019 18:28:33 +0300
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
References: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
X-TM-AS-GCONF: 00
x-cbid: 19050215-0016-0000-0000-00000277A11A
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050215-0017-0000-0000-000032D4362B
Message-Id: <1556810922-20248-7-git-send-email-rppt@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-02_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=750 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905020103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_082935_791660_3C997AC7 
X-CRM114-Status: GOOD (  22.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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

The hexagon implementation pte_alloc_one(), pte_alloc_one_kernel(),
pte_free_kernel() and pte_free() is identical to the generic except of
lack of __GFP_ACCOUNT for the user PTEs allocation.

Switch hexagon to use generic version of these functions.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/hexagon/include/asm/pgalloc.h | 34 ++--------------------------------
 1 file changed, 2 insertions(+), 32 deletions(-)

diff --git a/arch/hexagon/include/asm/pgalloc.h b/arch/hexagon/include/asm/pgalloc.h
index d361838..7661a26 100644
--- a/arch/hexagon/include/asm/pgalloc.h
+++ b/arch/hexagon/include/asm/pgalloc.h
@@ -24,6 +24,8 @@
 #include <asm/mem-layout.h>
 #include <asm/atomic.h>
 
+#include <asm-generic/pgalloc.h>	/* for pte_{alloc,free}_one */
+
 #define check_pgt_cache() do {} while (0)
 
 extern unsigned long long kmap_generation;
@@ -59,38 +61,6 @@ static inline void pgd_free(struct mm_struct *mm, pgd_t *pgd)
 	free_page((unsigned long) pgd);
 }
 
-static inline struct page *pte_alloc_one(struct mm_struct *mm)
-{
-	struct page *pte;
-
-	pte = alloc_page(GFP_KERNEL | __GFP_ZERO);
-	if (!pte)
-		return NULL;
-	if (!pgtable_page_ctor(pte)) {
-		__free_page(pte);
-		return NULL;
-	}
-	return pte;
-}
-
-/* _kernel variant gets to use a different allocator */
-static inline pte_t *pte_alloc_one_kernel(struct mm_struct *mm)
-{
-	gfp_t flags =  GFP_KERNEL | __GFP_ZERO;
-	return (pte_t *) __get_free_page(flags);
-}
-
-static inline void pte_free(struct mm_struct *mm, struct page *pte)
-{
-	pgtable_page_dtor(pte);
-	__free_page(pte);
-}
-
-static inline void pte_free_kernel(struct mm_struct *mm, pte_t *pte)
-{
-	free_page((unsigned long)pte);
-}
-
 static inline void pmd_populate(struct mm_struct *mm, pmd_t *pmd,
 				pgtable_t pte)
 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
