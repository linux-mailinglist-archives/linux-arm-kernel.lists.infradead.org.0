Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 483DB1EA644
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 16:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mNjeL1IeBRvAIX56c3SRZA+5OrYARCxNBcbhmbfU8/o=; b=K7H48UbQ5LC5nX
	M25BlxVZ9pWUxHf3AELUsdkukULg0IFSh42PXZ9b1PI7Y/fRgcENddE+A83flxxH8zsToYokCkGkq
	k6Jz4FUtuauUx1SM3vcWJXW82Wn/xxNblKbjbQgnyOQ+6Bla5EOW4ByRyvfF6MUB0nylLbXFFvp9R
	CfhZa//wmpVeHs4+YTjX5a90FRWvyGdL0Yfl4SbKyKvX5c5qxyJbjJAqX2YJ9QqxQFnBcyqJIXqOV
	xs6y91zapXlYC0LXto22IabSZzc2E8lH8JfvKtfE8SbO3W7LV9YwfHVwBgUMbWtH9991SgiXlCcYA
	bwvUe4Wrpu3iK2x4EWQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfljY-0000bX-3Y; Mon, 01 Jun 2020 14:48:12 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfliy-0000B8-8W
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 14:47:37 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 95E84B8E01852B58C409;
 Mon,  1 Jun 2020 22:47:33 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.487.0; Mon, 1 Jun 2020 22:47:23 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <catalin.marinas@arm.com>, <will@kernel.org>, <suzuki.poulose@arm.com>,
 <maz@kernel.org>, <steven.price@arm.com>, <guohanjun@huawei.com>,
 <olof@lixom.net>
Subject: [RFC PATCH v4 2/2] arm64: tlb: Use the TLBI RANGE feature in arm64
Date: Mon, 1 Jun 2020 22:47:13 +0800
Message-ID: <20200601144713.2222-3-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200601144713.2222-1-yezhenyu2@huawei.com>
References: <20200601144713.2222-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_074736_474063_67EC1D03 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
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

Add __TLBI_VADDR_RANGE macro and rewrite __flush_tlb_range().

In this patch, we only use the TLBI RANGE feature if the stride == PAGE_SIZE,
because when stride > PAGE_SIZE, usually only a small number of pages need
to be flushed and classic tlbi intructions are more effective.

We can also use 'end - start < threshold number' to decide which way
to go, however, different hardware may have different thresholds, so
I'm not sure if this is feasible.

Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
---
 arch/arm64/include/asm/tlbflush.h | 98 +++++++++++++++++++++++++++----
 1 file changed, 86 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
index bc3949064725..818f27c82024 100644
--- a/arch/arm64/include/asm/tlbflush.h
+++ b/arch/arm64/include/asm/tlbflush.h
@@ -50,6 +50,16 @@
 		__tlbi(op, (arg) | USER_ASID_FLAG);				\
 } while (0)
 
+#define __tlbi_last_level(op1, op2, arg, last_level) do {		\
+	if (last_level)	{						\
+		__tlbi(op1, arg);					\
+		__tlbi_user(op1, arg);					\
+	} else {							\
+		__tlbi(op2, arg);					\
+		__tlbi_user(op2, arg);					\
+	}								\
+} while (0)
+
 /* This macro creates a properly formatted VA operand for the TLBI */
 #define __TLBI_VADDR(addr, asid)				\
 	({							\
@@ -59,6 +69,47 @@
 		__ta;						\
 	})
 
+/*
+ * __TG defines translation granule of the system, which is decided by
+ * PAGE_SHIFT.  Used by TTL.
+ *  - 4KB	: 1
+ *  - 16KB	: 2
+ *  - 64KB	: 3
+ */
+#define __TG	((PAGE_SHIFT - 12) / 2 + 1)
+
+/*
+ * This macro creates a properly formatted VA operand for the TLBI RANGE.
+ * The value bit assignments are:
+ *
+ * +----------+------+-------+-------+-------+----------------------+
+ * |   ASID   |  TG  | SCALE |  NUM  |  TTL  |        BADDR         |
+ * +-----------------+-------+-------+-------+----------------------+
+ * |63      48|47  46|45   44|43   39|38   37|36                   0|
+ *
+ * The address range is determined by below formula:
+ * [BADDR, BADDR + (NUM + 1) * 2^(5*SCALE + 1) * PAGESIZE)
+ *
+ */
+#define __TLBI_VADDR_RANGE(addr, asid, scale, num, ttl)		\
+	({							\
+		unsigned long __ta = (addr) >> PAGE_SHIFT;	\
+		__ta &= GENMASK_ULL(36, 0);			\
+		__ta |= (unsigned long)(ttl) << 37;		\
+		__ta |= (unsigned long)(num) << 39;		\
+		__ta |= (unsigned long)(scale) << 44;		\
+		__ta |= (unsigned long)(__TG) << 46;		\
+		__ta |= (unsigned long)(asid) << 48;		\
+		__ta;						\
+	})
+
+/* This macro defines the range pages of the TLBI RANGE. */
+#define __TLBI_RANGE_SIZES(num, scale)	((num + 1) << (5 * scale + 1) << PAGE_SHIFT)
+
+#define TLB_RANGE_MASK_SHIFT 5
+#define TLB_RANGE_MASK GENMASK_ULL(TLB_RANGE_MASK_SHIFT - 1, 0)
+
+
 /*
  *	TLB Invalidation
  *	================
@@ -181,32 +232,55 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
 				     unsigned long start, unsigned long end,
 				     unsigned long stride, bool last_level)
 {
+	int num = 0;
+	int scale = 0;
 	unsigned long asid = ASID(vma->vm_mm);
 	unsigned long addr;
+	unsigned long range_pages;
 
 	start = round_down(start, stride);
 	end = round_up(end, stride);
+	range_pages = (end - start) >> PAGE_SHIFT;
 
 	if ((end - start) >= (MAX_TLBI_OPS * stride)) {
 		flush_tlb_mm(vma->vm_mm);
 		return;
 	}
 
-	/* Convert the stride into units of 4k */
-	stride >>= 12;
+	dsb(ishst);
 
-	start = __TLBI_VADDR(start, asid);
-	end = __TLBI_VADDR(end, asid);
+	/*
+	 * The minimum size of TLB RANGE is 2 pages;
+	 * Use normal TLB instruction to handle odd pages.
+	 * If the stride != PAGE_SIZE, this will never happen.
+	 */
+	if (range_pages % 2 == 1) {
+		addr = __TLBI_VADDR(start, asid);
+		__tlbi_last_level(vale1is, vae1is, addr, last_level);
+		start += 1 << PAGE_SHIFT;
+		range_pages >>= 1;
+	}
 
-	dsb(ishst);
-	for (addr = start; addr < end; addr += stride) {
-		if (last_level) {
-			__tlbi(vale1is, addr);
-			__tlbi_user(vale1is, addr);
-		} else {
-			__tlbi(vae1is, addr);
-			__tlbi_user(vae1is, addr);
+	while (range_pages > 0) {
+		if (cpus_have_const_cap(ARM64_HAS_TLBI_RANGE) &&
+		    stride == PAGE_SIZE) {
+			num = (range_pages & TLB_RANGE_MASK) - 1;
+			if (num >= 0) {
+				addr = __TLBI_VADDR_RANGE(start, asid, scale,
+							  num, 0);
+				__tlbi_last_level(rvale1is, rvae1is, addr,
+						  last_level);
+				start += __TLBI_RANGE_SIZES(num, scale);
+			}
+			scale++;
+			range_pages >>= TLB_RANGE_MASK_SHIFT;
+			continue;
 		}
+
+		addr = __TLBI_VADDR(start, asid);
+		__tlbi_last_level(vale1is, vae1is, addr, last_level);
+		start += stride;
+		range_pages -= stride >> 12;
 	}
 	dsb(ish);
 }
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
