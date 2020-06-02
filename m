Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C2A1EBD90
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 16:01:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qmy8mhdlJOTlQdA8sRDqNQZTzCIHFZgwTxexNw9Jt3o=; b=EHjg6kxOMSAcJ/
	mByQNu+zx8MKAsR2YzPUT4B3FvgYx7TMFsQj7bPCuhO4D2sCndsTwq70sETvy5Wh4KyWgIUcDWDdM
	Gb48Lsri+MdecB/PGO3+yU6SDF/ThbFlWf8POmtQY/VMwhymWCWQP6BDFpt2vXPRWBgDcO5H2Mljs
	tjBHNz1B5dwO/gKl9cJybRbY1/6ybFp2r5FtzIcMg0R/CocNIQelYB2beZv+VDsb6a/IwGSBYVgl0
	CQav3LK7s0j3xKttnYZ/XuLaKhsCBpozulW0VMcKQ0v2EOV1Nk2KJKbVDE39wi49ojXjgVJSAoKNB
	jKGJY0Sm2OSCzJ7fvI/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg7U2-0005Tb-25; Tue, 02 Jun 2020 14:01:38 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg7Rq-0007yS-Uf
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 13:59:26 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D9675F93E3E27151445A;
 Tue,  2 Jun 2020 21:59:10 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.487.0; Tue, 2 Jun 2020 21:59:04 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <catalin.marinas@arm.com>, <peterz@infradead.org>, <mark.rutland@arm.com>, 
 <will@kernel.org>, <aneesh.kumar@linux.ibm.com>,
 <akpm@linux-foundation.org>, 
 <npiggin@gmail.com>, <arnd@arndb.de>, <rostedt@goodmis.org>,
 <maz@kernel.org>, <suzuki.poulose@arm.com>, <tglx@linutronix.de>,
 <yuzhao@google.com>, <Dave.Martin@arm.com>, <steven.price@arm.com>,
 <broonie@kernel.org>, <guohanjun@huawei.com>
Subject: [PATCH v4 5/6] arm64: tlb: Set the TTL field in flush_tlb_range
Date: Tue, 2 Jun 2020 21:58:35 +0800
Message-ID: <20200602135836.1620-6-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200602135836.1620-1-yezhenyu2@huawei.com>
References: <20200602135836.1620-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_065923_954489_CFB599E5 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com,
 zhangshaokun@hisilicon.com, linux-mm@kvack.org, arm@kernel.org,
 prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch uses the cleared_* in struct mmu_gather to set the
TTL field in flush_tlb_range().

Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/tlb.h      | 29 ++++++++++++++++++++++++++++-
 arch/arm64/include/asm/tlbflush.h | 14 ++++++++------
 2 files changed, 36 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/include/asm/tlb.h b/arch/arm64/include/asm/tlb.h
index b76df828e6b7..61c97d3b58c7 100644
--- a/arch/arm64/include/asm/tlb.h
+++ b/arch/arm64/include/asm/tlb.h
@@ -21,11 +21,37 @@ static void tlb_flush(struct mmu_gather *tlb);
 
 #include <asm-generic/tlb.h>
 
+/*
+ * get the tlbi levels in arm64.  Default value is 0 if more than one
+ * of cleared_* is set or neither is set.
+ * Arm64 doesn't support p4ds now.
+ */
+static inline int tlb_get_level(struct mmu_gather *tlb)
+{
+	if (tlb->cleared_ptes && !(tlb->cleared_pmds ||
+				   tlb->cleared_puds ||
+				   tlb->cleared_p4ds))
+		return 3;
+
+	if (tlb->cleared_pmds && !(tlb->cleared_ptes ||
+				   tlb->cleared_puds ||
+				   tlb->cleared_p4ds))
+		return 2;
+
+	if (tlb->cleared_puds && !(tlb->cleared_ptes ||
+				   tlb->cleared_pmds ||
+				   tlb->cleared_p4ds))
+		return 1;
+
+	return 0;
+}
+
 static inline void tlb_flush(struct mmu_gather *tlb)
 {
 	struct vm_area_struct vma = TLB_FLUSH_VMA(tlb->mm, 0);
 	bool last_level = !tlb->freed_tables;
 	unsigned long stride = tlb_get_unmap_size(tlb);
+	int tlb_level = tlb_get_level(tlb);
 
 	/*
 	 * If we're tearing down the address space then we only care about
@@ -38,7 +64,8 @@ static inline void tlb_flush(struct mmu_gather *tlb)
 		return;
 	}
 
-	__flush_tlb_range(&vma, tlb->start, tlb->end, stride, last_level);
+	__flush_tlb_range(&vma, tlb->start, tlb->end, stride,
+			  last_level, tlb_level);
 }
 
 static inline void __pte_free_tlb(struct mmu_gather *tlb, pgtable_t pte,
diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
index bfb58e62c127..84cb98b60b7b 100644
--- a/arch/arm64/include/asm/tlbflush.h
+++ b/arch/arm64/include/asm/tlbflush.h
@@ -215,7 +215,8 @@ static inline void flush_tlb_page(struct vm_area_struct *vma,
 
 static inline void __flush_tlb_range(struct vm_area_struct *vma,
 				     unsigned long start, unsigned long end,
-				     unsigned long stride, bool last_level)
+				     unsigned long stride, bool last_level,
+				     int tlb_level)
 {
 	unsigned long asid = ASID(vma->vm_mm);
 	unsigned long addr;
@@ -237,11 +238,11 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
 	dsb(ishst);
 	for (addr = start; addr < end; addr += stride) {
 		if (last_level) {
-			__tlbi_level(vale1is, addr, 0);
-			__tlbi_user_level(vale1is, addr, 0);
+			__tlbi_level(vale1is, addr, tlb_level);
+			__tlbi_user_level(vale1is, addr, tlb_level);
 		} else {
-			__tlbi_level(vae1is, addr, 0);
-			__tlbi_user_level(vae1is, addr, 0);
+			__tlbi_level(vae1is, addr, tlb_level);
+			__tlbi_user_level(vae1is, addr, tlb_level);
 		}
 	}
 	dsb(ish);
@@ -253,8 +254,9 @@ static inline void flush_tlb_range(struct vm_area_struct *vma,
 	/*
 	 * We cannot use leaf-only invalidation here, since we may be invalidating
 	 * table entries as part of collapsing hugepages or moving page tables.
+	 * Set the tlb_level to 0 because we can not get enough information here.
 	 */
-	__flush_tlb_range(vma, start, end, PAGE_SIZE, false);
+	__flush_tlb_range(vma, start, end, PAGE_SIZE, false, 0);
 }
 
 static inline void flush_tlb_kernel_range(unsigned long start, unsigned long end)
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
