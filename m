Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CEE199A68
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:54:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3EzSO8XLPURyv0kdNVCdM+Dml7ZsIwZPvdqq1IXSn/U=; b=ILTIgRHPNsL7KV
	1l3VqDUwoKQUcMwtdvVqLlckbvvvp1srvFXA/1++lEXI3BICPhlYfjm5yqE4KGKC3yQ0MnzteW5QD
	TSrKqprl7O2sDUDr6ZsX2bkqJvgksjPhq3AC59PouSmWpyK3HmIZ1OdaNI1P+IUdxg5CgRCqD0FCz
	IgPZ2/Jaomm0vIvYFtvT/QKNL/5wBUa17p7WcfjlbfI99x/KKDlpsbZDDCTKjb8AkEXzu+awuQwrQ
	oZ9iuWfjddboQgsmalwve3vg6yyC42PHq1vw0v53MUjYhYEm9rfBwVTA7Jz8EjzPrSGAd3EHsmhCK
	D5mkgZ2NTVB2gkrpB/hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJDa-0004e7-FR; Tue, 31 Mar 2020 15:54:22 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJBJ-0002sJ-C6
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 15:52:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=GQTbROvx3QyD/a0XtDeMiEVQatu+PVkAPio7Bbv4jww=; b=bmzyLg92Mx3RTlibkX/meczWJE
 qCjIs9wPZNWlkLgXHvZ1VOdU3zieuCAYR9FayGedFegtaw1MLtWjsw3hsK5awY4LMwP9wc36GOuY+
 1nQmFGFyB/qeTV0yfIXMX4R+YMlH4+MjgcfVLAOKBFAO/uOjdHtzbkOiRgzZKuFdUtj1c5L3HMWfi
 s5p9kk4Xmn+EUlgOj8inGbqPldUyRdn50z+FHTs5sg9N7qgIX28nAbghHI5jxyoa5trRMWNKN1OaV
 E416+Z/2h0g4KNPPo2cTTKyT90MuKF7fLOfKOjpAASBS3F4fuxes4XbO+Sd+5nwroA7k+k6sd0bEe
 82FIxv5Q==;
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJHuA-0003ZF-Ei
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 14:30:19 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 26B92B45686137A5CFF1;
 Tue, 31 Mar 2020 22:30:03 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Tue, 31 Mar 2020 22:29:57 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <peterz@infradead.org>, <mark.rutland@arm.com>, <will@kernel.org>,
 <catalin.marinas@arm.com>, <aneesh.kumar@linux.ibm.com>,
 <akpm@linux-foundation.org>, <npiggin@gmail.com>, <arnd@arndb.de>,
 <rostedt@goodmis.org>, <maz@kernel.org>, <suzuki.poulose@arm.com>,
 <tglx@linutronix.de>, <yuzhao@google.com>, <Dave.Martin@arm.com>,
 <steven.price@arm.com>, <broonie@kernel.org>, <guohanjun@huawei.com>,
 <corbet@lwn.net>, <vgupta@synopsys.com>, <tony.luck@intel.com>
Subject: [RFC PATCH v5 8/8] arm64: tlb: Set the TTL field in flush_tlb_range
Date: Tue, 31 Mar 2020 22:29:27 +0800
Message-ID: <20200331142927.1237-9-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200331142927.1237-1-yezhenyu2@huawei.com>
References: <20200331142927.1237-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_153014_851025_4FB7A2AE 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -4.2 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-4.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
---
 arch/arm64/include/asm/tlb.h      | 39 ++++++++++++++++++++++++++++++-
 arch/arm64/include/asm/tlbflush.h | 22 +++++------------
 2 files changed, 44 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/include/asm/tlb.h b/arch/arm64/include/asm/tlb.h
index b76df828e6b7..72b6e3763df2 100644
--- a/arch/arm64/include/asm/tlb.h
+++ b/arch/arm64/include/asm/tlb.h
@@ -21,11 +21,34 @@ static void tlb_flush(struct mmu_gather *tlb);
 
 #include <asm-generic/tlb.h>
 
+/*
+ * get the tlbi levels in arm64.  Default value is 0 if more than one
+ * of cleared_* is set or neither is set.
+ * Arm64 doesn't support p4ds now.
+ */
+static inline int tlb_get_level(struct mmu_gather *tlb)
+{
+	int sum = tlb->cleared_ptes + tlb->cleared_pmds +
+		  tlb->cleared_puds + tlb->cleared_p4ds;
+
+	if (sum != 1)
+		return 0;
+	else if (tlb->cleared_ptes)
+		return 3;
+	else if (tlb->cleared_pmds)
+		return 2;
+	else if (tlb->cleared_puds)
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
@@ -38,7 +61,21 @@ static inline void tlb_flush(struct mmu_gather *tlb)
 		return;
 	}
 
-	__flush_tlb_range(&vma, tlb->start, tlb->end, stride, last_level);
+	__flush_tlb_range(&vma, tlb->start, tlb->end, stride,
+			  last_level, tlb_level);
+}
+
+static inline void flush_tlb_range(struct mmu_gather *tlb,
+				   struct vm_area_struct *vma,
+				   unsigned long start, unsigned long end)
+{
+	/*
+	 * We cannot use leaf-only invalidation here, since we may be invalidating
+	 * table entries as part of collapsing hugepages or moving page tables.
+	 */
+	unsigned long stride = tlb_get_unmap_size(tlb);
+	int tlb_level = tlb_get_level(tlb);
+	__flush_tlb_range(vma, start, end, stride, false, tlb_level);
 }
 
 static inline void __pte_free_tlb(struct mmu_gather *tlb, pgtable_t pte,
diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
index 0b4d75a2270b..dc8e803692f8 100644
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
@@ -237,27 +238,16 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
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
 }
 
-static inline void flush_tlb_range(struct mmu_gather *tlb,
-				   struct vm_area_struct *vma,
-				   unsigned long start, unsigned long end)
-{
-	/*
-	 * We cannot use leaf-only invalidation here, since we may be invalidating
-	 * table entries as part of collapsing hugepages or moving page tables.
-	 */
-	__flush_tlb_range(vma, start, end, PAGE_SIZE, false);
-}
-
 static inline void flush_tlb_kernel_range(unsigned long start, unsigned long end)
 {
 	unsigned long addr;
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
