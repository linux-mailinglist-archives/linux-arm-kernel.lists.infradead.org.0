Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF421827A3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 05:11:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9nm88MS9BUQVtMSROClwng29AI1ucRrpf7fvsvnOqs=; b=mipkX8APId3Uv4
	iHX4BAMHH62JnEAq4WqtEcscOsmS8eoRIHSh86uYkX+VYd9y0gfhmJtt3M1sg7OhYI2G4bpeQcPJT
	tHsfToaUvBsdp5Evn9OWGXN33Pu1SS7t9mk6JRFt1bVHmCQ7NCaDLCJkwKHuZikb3cQHOeQjwLRPK
	eKm53RUNQ7Jk3ve54MpbiJKq+PGP007959csv7JzUxMCESxDGKmip6cfSglbZKImYYarTNdxGhlQK
	CMuqWKre5U3+cttvug0Cu5Lffuey/f1QJ+kKqiu9/bYWNSJu55+PMnpFEq9D1SAnF6WniYxUQ6ECl
	ZHIKAQRh6qKdq9Nzi5eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCFBj-0003IO-QO; Thu, 12 Mar 2020 04:11:15 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCFBG-00037X-0B
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 04:10:47 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 999F68A68DD6D196A9F1;
 Thu, 12 Mar 2020 12:10:36 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Thu, 12 Mar 2020 12:10:26 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <mark.rutland@arm.com>, <catalin.marinas@arm.com>, <will@kernel.org>,
 <aneesh.kumar@linux.ibm.com>, <maz@kernel.org>, <steven.price@arm.com>,
 <broonie@kernel.org>, <guohanjun@huawei.com>
Subject: [RFC PATCH v2 1/3] arm64: tlb: use __tlbi_level replace __tlbi in
 Stage-1
Date: Thu, 12 Mar 2020 12:10:16 +0800
Message-ID: <20200312041018.1927-2-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200312041018.1927-1-yezhenyu2@huawei.com>
References: <20200312041018.1927-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_211046_220149_E177C009 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 prime.zeng@hisilicon.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARMv8.4-TTL provides the TTL field in tlbi instruction to indicate
the level of translation table walk holding the leaf entry for the
address that is being invalidated.

This patch use __tlbi_level replace __tlbi and __tlbi_user in
Stage-1, and set the default value of level to 0.

Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
---
 arch/arm64/include/asm/tlbflush.h | 19 ++++++-------------
 1 file changed, 6 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
index a3f70778a325..dda693f32099 100644
--- a/arch/arm64/include/asm/tlbflush.h
+++ b/arch/arm64/include/asm/tlbflush.h
@@ -46,11 +46,6 @@
 
 #define __tlbi(op, ...)		__TLBI_N(op, ##__VA_ARGS__, 1, 0)
 
-#define __tlbi_user(op, arg) do {						\
-	if (arm64_kernel_unmapped_at_el0())					\
-		__tlbi(op, (arg) | USER_ASID_FLAG);				\
-} while (0)
-
 /* This macro creates a properly formatted VA operand for the TLBI */
 #define __TLBI_VADDR(addr, asid)				\
 	({							\
@@ -87,6 +82,8 @@
 		}							\
 									\
 		__tlbi(op,  arg);					\
+		if (arm64_kernel_unmapped_at_el0())			\
+			__tlbi(op, (arg) | USER_ASID_FLAG);		\
 	} while(0)
 
 /*
@@ -179,8 +176,7 @@ static inline void flush_tlb_mm(struct mm_struct *mm)
 	unsigned long asid = __TLBI_VADDR(0, ASID(mm));
 
 	dsb(ishst);
-	__tlbi(aside1is, asid);
-	__tlbi_user(aside1is, asid);
+	__tlbi_level(aside1is, asid, 0);
 	dsb(ish);
 }
 
@@ -190,8 +186,7 @@ static inline void flush_tlb_page_nosync(struct vm_area_struct *vma,
 	unsigned long addr = __TLBI_VADDR(uaddr, ASID(vma->vm_mm));
 
 	dsb(ishst);
-	__tlbi(vale1is, addr);
-	__tlbi_user(vale1is, addr);
+	__tlbi_level(vale1is, addr, 0);
 }
 
 static inline void flush_tlb_page(struct vm_area_struct *vma,
@@ -231,11 +226,9 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
 	dsb(ishst);
 	for (addr = start; addr < end; addr += stride) {
 		if (last_level) {
-			__tlbi(vale1is, addr);
-			__tlbi_user(vale1is, addr);
+			__tlbi_level(vale1is, addr, 0);
 		} else {
-			__tlbi(vae1is, addr);
-			__tlbi_user(vae1is, addr);
+			__tlbi_level(vae1is, addr, 0);
 		}
 	}
 	dsb(ish);
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
