Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A008BF2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:03:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VyIiBcbh9Z/YCW74Z+M+5pZVY2ZVXC+KT0D87i0CYNY=; b=cOZILJt7BC/F0753UNwlOFhooj
	c213U2QuNiMFH359/r9EL5t17lfmV5Lrj+8TDmetumWx7JkU/lhxVOmCoVQ+zVgJ8ymOKUU8w2rd/
	cHsBRL+UI5dDazlz2kXA7bvvmmCNVKY7GkodPqdQzjc4gQTi+Phea5+NpF4UavtPoi3XKNtFdTB7G
	d43SnPtWJ2EnxevHU4XML4eZwXhKa2/ee/hBir6gyBrx5DgdfltrwK/JdWmLJnubuqRrS7Kvksisz
	iusfJR2xOWO+eGo3d5QtW2RMwhIjPweMMPD4vcDgcbxOcXy4ENH/iBpYJwy2hv2WTrVbufAUHjcn/
	eXQfTOaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaCc-0000wH-LO; Tue, 13 Aug 2019 17:03:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaBK-0008NH-H8
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:02:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4AAF1337;
 Tue, 13 Aug 2019 10:01:58 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2CC343F706;
 Tue, 13 Aug 2019 10:01:57 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/8] arm64: memory: Rewrite default
 page_to_virt()/virt_to_page()
Date: Tue, 13 Aug 2019 18:01:44 +0100
Message-Id: <20190813170149.26037-4-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190813170149.26037-1-will@kernel.org>
References: <20190813170149.26037-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100158_930227_6D20F608 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Steve Capper <steve.capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Qian Cai <cai@lca.pw>,
 Andrey Konovalov <andreyknvl@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The default implementations of page_to_virt() and virt_to_page() are
fairly confusing to read and the former evaluates its 'page' parameter
twice in the macro

Rewrite them so that the computation is expressed as 'base + index' in
both cases and the parameter is always evaluated exactly once.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/memory.h | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index 47b4dc73b8bf..77074b3a1025 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -313,19 +313,18 @@ static inline void *phys_to_virt(phys_addr_t x)
 #if !defined(CONFIG_SPARSEMEM_VMEMMAP) || defined(CONFIG_DEBUG_VIRTUAL)
 #define virt_to_page(kaddr)	pfn_to_page(__pa(kaddr) >> PAGE_SHIFT)
 #else
-#define __virt_to_pgoff(kaddr)	(((u64)(kaddr) - PAGE_OFFSET) / PAGE_SIZE * sizeof(struct page))
-#define __page_to_voff(kaddr)	(((u64)(kaddr) - VMEMMAP_START) * PAGE_SIZE / sizeof(struct page))
-
-#define page_to_virt(page)	({					\
-	unsigned long __addr =						\
-		((__page_to_voff(page)) + PAGE_OFFSET);			\
-	const void *__addr_tag =					\
-		__tag_set((void *)__addr, page_kasan_tag(page));	\
-	((void *)__addr_tag);						\
+#define page_to_virt(x)	({						\
+	__typeof__(x) __page = x;					\
+	u64 __idx = ((u64)__page - VMEMMAP_START) / sizeof(struct page);\
+	u64 __addr = PAGE_OFFSET + (__idx * PAGE_SIZE);			\
+	(void *)__tag_set((const void *)__addr, page_kasan_tag(__page));\
 })
 
-#define virt_to_page(vaddr)	\
-	((struct page *)((__virt_to_pgoff(__tag_reset(vaddr))) + VMEMMAP_START))
+#define virt_to_page(x)	({						\
+	u64 __idx = (__tag_reset((u64)x) - PAGE_OFFSET) / PAGE_SIZE;	\
+	u64 __addr = VMEMMAP_START + (__idx * sizeof(struct page));	\
+	(struct page *)__addr;						\
+})
 #endif
 
 #define virt_addr_valid(addr)	({					\
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
