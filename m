Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F76180E3D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 03:56:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MgvAKJo/cyxssDWl0P3wCAoS9//1y5EtZYuPCAEyQHs=; b=smJ/JNagOAdefg
	1R/hAuWLovBRp8YQrivtkA81mSun/9tHzu39gEgD7L84Kv/Ol7dN5Ah9t2SmoL3Jwe/kwdcsGjdKJ
	8u+IrfVYF5KYk3qfgQP0MxPev6/dduQTVBQyPxC24uFifHa/F7ex+PVg3S09eWDQ9zxftkqoOWm28
	AScf4R+gry3GHPHz/Gk/pHrPxvKgMEoChIaFE8K4noADjSfqKoxT7gwOCWnVi/nBzQQ/ZB4uYAUMK
	4+e+AydHc4WWrFkRqWRed5BG/VKFVCsREKBTcOyW/LHpIeJDRLnT1AF6/9ZaVgClZBWHsHEgIoRPk
	7eHdkFB+Roal2zVLCHVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBrY7-0003Y7-9s; Wed, 11 Mar 2020 02:56:47 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBrXu-0003Vc-Ip
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 02:56:36 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id DE05BFE593B10E7FCD02;
 Wed, 11 Mar 2020 10:56:23 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.487.0; Wed, 11 Mar 2020 10:56:17 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <mark.rutland@arm.com>, <catalin.marinas@arm.com>, <will@kernel.org>,
 <aneesh.kumar@linux.ibm.com>, <maz@kernel.org>, <steven.price@arm.com>,
 <broonie@kernel.org>, <guohanjun@huawei.com>
Subject: [RFC PATCH v1 3/3] arm64: tlb: add support for TTL in some functions
Date: Wed, 11 Mar 2020 10:53:09 +0800
Message-ID: <20200311025309.1743-4-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200311025309.1743-1-yezhenyu2@huawei.com>
References: <20200311025309.1743-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_195634_793911_BE591362 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, yezhenyu2@huawei.com,
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com, linux-mm@kvack.org,
 arm@kernel.org, prime.zeng@hisilicon.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for TTL in some ARM64-Architecture functions. The
relevant functions are:

	__pte_free_tlb
	__pmd_free_tlb
	__pud_free_tlb
	clear_flush
	get_clear_flush

Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
---
 arch/arm64/include/asm/tlb.h | 3 +++
 arch/arm64/mm/hugetlbpage.c  | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/arch/arm64/include/asm/tlb.h b/arch/arm64/include/asm/tlb.h
index b76df828e6b7..36428ce53185 100644
--- a/arch/arm64/include/asm/tlb.h
+++ b/arch/arm64/include/asm/tlb.h
@@ -44,6 +44,7 @@ static inline void tlb_flush(struct mmu_gather *tlb)
 static inline void __pte_free_tlb(struct mmu_gather *tlb, pgtable_t pte,
 				  unsigned long addr)
 {
+	tlb->mm->context.flags = TLBI_LEVEL_3;
 	pgtable_pte_page_dtor(pte);
 	tlb_remove_table(tlb, pte);
 }
@@ -53,6 +54,7 @@ static inline void __pmd_free_tlb(struct mmu_gather *tlb, pmd_t *pmdp,
 				  unsigned long addr)
 {
 	struct page *page = virt_to_page(pmdp);
+	tlb->mm->context.flags = TLBI_LEVEL_2;
 
 	pgtable_pmd_page_dtor(page);
 	tlb_remove_table(tlb, page);
@@ -63,6 +65,7 @@ static inline void __pmd_free_tlb(struct mmu_gather *tlb, pmd_t *pmdp,
 static inline void __pud_free_tlb(struct mmu_gather *tlb, pud_t *pudp,
 				  unsigned long addr)
 {
+	tlb->mm->context.flags = TLBI_LEVEL_1;
 	tlb_remove_table(tlb, virt_to_page(pudp));
 }
 #endif
diff --git a/arch/arm64/mm/hugetlbpage.c b/arch/arm64/mm/hugetlbpage.c
index bbeb6a5a6ba6..4c2f1b802cb8 100644
--- a/arch/arm64/mm/hugetlbpage.c
+++ b/arch/arm64/mm/hugetlbpage.c
@@ -141,6 +141,7 @@ static pte_t get_clear_flush(struct mm_struct *mm,
 
 	if (valid) {
 		struct vm_area_struct vma = TLB_FLUSH_VMA(mm, 0);
+		mm->context.flags = TLBI_LEVEL_3;
 		flush_tlb_range(&vma, saddr, addr);
 	}
 	return orig_pte;
@@ -163,6 +164,7 @@ static void clear_flush(struct mm_struct *mm,
 {
 	struct vm_area_struct vma = TLB_FLUSH_VMA(mm, 0);
 	unsigned long i, saddr = addr;
+	mm->context.flags = TLBI_LEVEL_3;
 
 	for (i = 0; i < ncontig; i++, addr += pgsize, ptep++)
 		pte_clear(mm, addr, ptep);
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
