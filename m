Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F3C180E3E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 03:57:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bxy1wFsHZJeRblcdgRKv3BesjYo8ZOzDnTBsbAFUUWA=; b=GsIcm8ne1frPEd
	UKB5MXEs9M3G65lRpDIRJJdBUVlcN8/WvCDTVO6EG+xCvMiNDh/EncQRv51elzpKFwUNggiWRL2AC
	7/n4HnTAD1oh8MgrPio4mncTCyG7ni3o5A9Ep5zvJpdtwYzu7DLX3PBwB/LCfImN9AgRmLdi8VDt/
	5mwSYVZljs7DGRkNaJ2FVlXQpyPilE6GUDdgxOd7RQYT266cKc+ywg7s11m465SUlEp9FvneGbi6A
	pc1hKTjFBaBxEg/zhXbbpzpUVGQN54+D3ps0qICRA08TcyVV0YlUxf9yrbtUMw3m8kocp5R7NiXUR
	FhLiuuSfaOIiePP4Y3aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBrYP-0003ix-Ct; Wed, 11 Mar 2020 02:57:05 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBrXu-0003Vb-Sx
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 02:56:36 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id CE3F0E0F8BC4C2687253;
 Wed, 11 Mar 2020 10:56:23 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.487.0; Wed, 11 Mar 2020 10:56:16 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <mark.rutland@arm.com>, <catalin.marinas@arm.com>, <will@kernel.org>,
 <aneesh.kumar@linux.ibm.com>, <maz@kernel.org>, <steven.price@arm.com>,
 <broonie@kernel.org>, <guohanjun@huawei.com>
Subject: [RFC PATCH v1 2/3] arm64: tlb: use mm_struct.context.flags to
 indicate TTL
Date: Wed, 11 Mar 2020 10:53:08 +0800
Message-ID: <20200311025309.1743-3-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200311025309.1743-1-yezhenyu2@huawei.com>
References: <20200311025309.1743-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_195635_503848_BC82CA9D 
X-CRM114-Status: GOOD (  10.30  )
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

Use Architecture-specific MM context to indicate the level of page
table walk. This avoids lots of changes to common-interface.

Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
---
 arch/arm64/include/asm/mmu.h      | 11 +++++++++++
 arch/arm64/include/asm/tlbflush.h |  8 +++++---
 2 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index e4d862420bb4..7410d2997c2a 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -8,6 +8,10 @@
 #include <asm/cputype.h>
 
 #define MMCF_AARCH32	0x1	/* mm context flag for AArch32 executables */
+#define TLBI_LEVEL_1	0x10	/* mm context flag for the level of ptw */
+#define TLBI_LEVEL_2	0x20
+#define TLBI_LEVEL_3	0x30
+
 #define USER_ASID_BIT	48
 #define USER_ASID_FLAG	(UL(1) << USER_ASID_BIT)
 #define TTBR_ASID_MASK	(UL(0xffff) << 48)
@@ -19,6 +23,10 @@
 typedef struct {
 	atomic64_t	id;
 	void		*vdso;
+	/*
+	 * flags[3:0]: AArch32 executables
+	 * flags[7:4]: the level of page table walk
+	 */
 	unsigned long	flags;
 } mm_context_t;
 
@@ -29,6 +37,9 @@ typedef struct {
  */
 #define ASID(mm)	((mm)->context.id.counter & 0xffff)
 
+/* This macro is only used by TLBI TTL */
+#define TLBI_LEVEL(mm)	((mm)->context.flags >> 4 & 0xf)
+
 extern bool arm64_use_ng_mappings;
 
 static inline bool arm64_kernel_unmapped_at_el0(void)
diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
index 10b12710b7cc..9f02a5383ac3 100644
--- a/arch/arm64/include/asm/tlbflush.h
+++ b/arch/arm64/include/asm/tlbflush.h
@@ -172,7 +172,8 @@ static inline void flush_tlb_mm(struct mm_struct *mm)
 static inline void flush_tlb_page_nosync(struct vm_area_struct *vma,
 					 unsigned long uaddr)
 {
-	unsigned long addr = __TLBI_VADDR(uaddr, ASID(vma->vm_mm), 0);
+	unsigned long ttl = (__TLB_TG << 2) + TLBI_LEVEL(vma->vm_mm);
+	unsigned long addr = __TLBI_VADDR(uaddr, ASID(vma->vm_mm), ttl);
 
 	dsb(ishst);
 	__tlbi(vale1is, addr);
@@ -197,6 +198,7 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
 				     unsigned long stride, bool last_level)
 {
 	unsigned long asid = ASID(vma->vm_mm);
+	unsigned long ttl = (__TLB_TG << 2) + TLBI_LEVEL(vma->vm_mm);
 	unsigned long addr;
 
 	start = round_down(start, stride);
@@ -210,8 +212,8 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
 	/* Convert the stride into units of 4k */
 	stride >>= 12;
 
-	start = __TLBI_VADDR(start, asid, 0);
-	end = __TLBI_VADDR(end, asid, 0);
+	start = __TLBI_VADDR(start, asid, ttl);
+	end = __TLBI_VADDR(end, asid, ttl);
 
 	dsb(ishst);
 	for (addr = start; addr < end; addr += stride) {
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
