Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFD31E0EC9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 14:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mx5F20uOiNZz59aKrSnDES+ly+B8FXFh2VKzU+vXNpc=; b=edp0urChQK/YJR
	V1UHFd9a7Yj867E9qF2qXHIxM2SvrBfKKR4GEfL+PoXZUGsCfuf/HCVMbdcD0eiBZ67SXZvA5MUFR
	MQC4JrxkQiPGPKxOhIz18tkYA5vIbvwbBR1cTEO3588fKk7zKVdYEBXBMnj1EhzoSBezYabY81MZX
	XJaacyYzi+nAVnU+GsfyTxLV73a/NG5YkGf8SvlXOsHgq7iJ6yGxdvIcuNNVA+N9kwrbrKQVxLsSs
	IiQ9GiY34IPgiM522Zmd2/EPhOWvHkyYxtqFGeP7RKhlXIV30onC80h6BXvj1s2VQuRm80tLpLH4n
	mVYXtjyjCA6aPYJppj7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdCcu-0000sq-Sc; Mon, 25 May 2020 12:54:44 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdCbo-0008P8-Bx
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 12:53:39 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 3852C99BF514DEC7A57B;
 Mon, 25 May 2020 20:53:32 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Mon, 25 May 2020 20:53:23 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <catalin.marinas@arm.com>, <peterz@infradead.org>, <mark.rutland@arm.com>, 
 <will@kernel.org>, <aneesh.kumar@linux.ibm.com>,
 <akpm@linux-foundation.org>, 
 <npiggin@gmail.com>, <arnd@arndb.de>, <rostedt@goodmis.org>,
 <maz@kernel.org>, <suzuki.poulose@arm.com>, <tglx@linutronix.de>,
 <yuzhao@google.com>, <Dave.Martin@arm.com>, <steven.price@arm.com>,
 <broonie@kernel.org>, <guohanjun@huawei.com>
Subject: [PATCH v3 4/6] tlb: mmu_gather: add tlb_flush_*_range APIs
Date: Mon, 25 May 2020 20:52:58 +0800
Message-ID: <20200525125300.794-5-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200525125300.794-1-yezhenyu2@huawei.com>
References: <20200525125300.794-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_055337_082470_FEC4EF6A 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
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

From: "Peter Zijlstra (Intel)" <peterz@infradead.org>

tlb_flush_{pte|pmd|pud|p4d}_range() adjust the tlb->start and
tlb->end, then set corresponding cleared_*.

Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
---
 include/asm-generic/tlb.h | 55 ++++++++++++++++++++++++++++-----------
 1 file changed, 40 insertions(+), 15 deletions(-)

diff --git a/include/asm-generic/tlb.h b/include/asm-generic/tlb.h
index 3f1649a8cf55..ef75ec86f865 100644
--- a/include/asm-generic/tlb.h
+++ b/include/asm-generic/tlb.h
@@ -512,6 +512,38 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 }
 #endif
 
+/*
+ * tlb_flush_{pte|pmd|pud|p4d}_range() adjust the tlb->start and tlb->end,
+ * and set corresponding cleared_*.
+ */
+static inline void tlb_flush_pte_range(struct mmu_gather *tlb,
+				     unsigned long address, unsigned long size)
+{
+	__tlb_adjust_range(tlb, address, size);
+	tlb->cleared_ptes = 1;
+}
+
+static inline void tlb_flush_pmd_range(struct mmu_gather *tlb,
+				     unsigned long address, unsigned long size)
+{
+	__tlb_adjust_range(tlb, address, size);
+	tlb->cleared_pmds = 1;
+}
+
+static inline void tlb_flush_pud_range(struct mmu_gather *tlb,
+				     unsigned long address, unsigned long size)
+{
+	__tlb_adjust_range(tlb, address, size);
+	tlb->cleared_puds = 1;
+}
+
+static inline void tlb_flush_p4d_range(struct mmu_gather *tlb,
+				     unsigned long address, unsigned long size)
+{
+	__tlb_adjust_range(tlb, address, size);
+	tlb->cleared_p4ds = 1;
+}
+
 #ifndef __tlb_remove_tlb_entry
 #define __tlb_remove_tlb_entry(tlb, ptep, address) do { } while (0)
 #endif
@@ -525,19 +557,17 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
  */
 #define tlb_remove_tlb_entry(tlb, ptep, address)		\
 	do {							\
-		__tlb_adjust_range(tlb, address, PAGE_SIZE);	\
-		tlb->cleared_ptes = 1;				\
+		tlb_flush_pte_range(tlb, address, PAGE_SIZE);	\
 		__tlb_remove_tlb_entry(tlb, ptep, address);	\
 	} while (0)
 
 #define tlb_remove_huge_tlb_entry(h, tlb, ptep, address)	\
 	do {							\
 		unsigned long _sz = huge_page_size(h);		\
-		__tlb_adjust_range(tlb, address, _sz);		\
 		if (_sz == PMD_SIZE)				\
-			tlb->cleared_pmds = 1;			\
+			tlb_flush_pmd_range(tlb, address, _sz);	\
 		else if (_sz == PUD_SIZE)			\
-			tlb->cleared_puds = 1;			\
+			tlb_flush_pud_range(tlb, address, _sz);	\
 		__tlb_remove_tlb_entry(tlb, ptep, address);	\
 	} while (0)
 
@@ -551,8 +581,7 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 
 #define tlb_remove_pmd_tlb_entry(tlb, pmdp, address)			\
 	do {								\
-		__tlb_adjust_range(tlb, address, HPAGE_PMD_SIZE);	\
-		tlb->cleared_pmds = 1;					\
+		tlb_flush_pmd_range(tlb, address, HPAGE_PMD_SIZE);	\
 		__tlb_remove_pmd_tlb_entry(tlb, pmdp, address);		\
 	} while (0)
 
@@ -566,8 +595,7 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 
 #define tlb_remove_pud_tlb_entry(tlb, pudp, address)			\
 	do {								\
-		__tlb_adjust_range(tlb, address, HPAGE_PUD_SIZE);	\
-		tlb->cleared_puds = 1;					\
+		tlb_flush_pud_range(tlb, address, HPAGE_PUD_SIZE);	\
 		__tlb_remove_pud_tlb_entry(tlb, pudp, address);		\
 	} while (0)
 
@@ -592,9 +620,8 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 #ifndef pte_free_tlb
 #define pte_free_tlb(tlb, ptep, address)			\
 	do {							\
-		__tlb_adjust_range(tlb, address, PAGE_SIZE);	\
+		tlb_flush_pmd_range(tlb, address, PAGE_SIZE);	\
 		tlb->freed_tables = 1;				\
-		tlb->cleared_pmds = 1;				\
 		__pte_free_tlb(tlb, ptep, address);		\
 	} while (0)
 #endif
@@ -602,9 +629,8 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 #ifndef pmd_free_tlb
 #define pmd_free_tlb(tlb, pmdp, address)			\
 	do {							\
-		__tlb_adjust_range(tlb, address, PAGE_SIZE);	\
+		tlb_flush_pud_range(tlb, address, PAGE_SIZE);	\
 		tlb->freed_tables = 1;				\
-		tlb->cleared_puds = 1;				\
 		__pmd_free_tlb(tlb, pmdp, address);		\
 	} while (0)
 #endif
@@ -612,9 +638,8 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 #ifndef pud_free_tlb
 #define pud_free_tlb(tlb, pudp, address)			\
 	do {							\
-		__tlb_adjust_range(tlb, address, PAGE_SIZE);	\
+		tlb_flush_p4d_range(tlb, address, PAGE_SIZE);	\
 		tlb->freed_tables = 1;				\
-		tlb->cleared_p4ds = 1;				\
 		__pud_free_tlb(tlb, pudp, address);		\
 	} while (0)
 #endif
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
