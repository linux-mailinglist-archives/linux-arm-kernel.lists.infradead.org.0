Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 681348BF2D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:04:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LJ6QhD6AnDQQyuzvOzhkjxmfQ3/sXJXz1GK77j9+kgw=; b=vAaXky8cObw0/Ri+Uomvex/fwZ
	eVNq/j81e8IYA0XVz0P1suGlAon4JyJ3MhgZ7Pg0LSgxf9T5XGwjkwEnrMsR+jxHyORYyf7LreD67
	5TZunJFGFL25+p0MbBRlP4Sq+8MgBBSqTtq+8+TUA9dNGXgNtxOhishXiDGASvKfysvRS29UdbHZv
	XYnriL3hsHzoiQjj8H/FdLeM+wbVDjJbSHzIdi+Q4GQ/wuIlu6ilw7nzbp0oOVenLxuEGEivZdgmb
	HRjFfMe9OG7dtz/g9LcUOFtZdgPO797Obj6voXoadb+r3HRWmsSwpSYWcxZn7kJAuIvMwm30mCOqa
	5eZB9Jgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaDK-0001d5-Pw; Tue, 13 Aug 2019 17:04:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaBP-0008Pm-ST
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:02:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6C4115A2;
 Tue, 13 Aug 2019 10:02:03 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 989463F706;
 Tue, 13 Aug 2019 10:02:02 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 7/8] arm64: memory: Add comments to end of non-trivial #ifdef
 blocks
Date: Tue, 13 Aug 2019 18:01:48 +0100
Message-Id: <20190813170149.26037-8-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190813170149.26037-1-will@kernel.org>
References: <20190813170149.26037-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100204_040478_F723B6E6 
X-CRM114-Status: GOOD (  11.09  )
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

Commenting the #endif of a multi-statement #ifdef block with the
condition which guards it is useful and can save having to scroll back
through the file to figure out which set of Kconfig options apply to
a particular piece of code.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/memory.h | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index e902132b808c..d31e4b6e349f 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -57,11 +57,13 @@
 #define PCI_IO_END		(VMEMMAP_START - SZ_2M)
 #define PCI_IO_START		(PCI_IO_END - PCI_IO_SIZE)
 #define FIXADDR_TOP		(PCI_IO_START - SZ_2M)
+
 #if VA_BITS > 48
 #define VA_BITS_MIN		(48)
 #else
 #define VA_BITS_MIN		(VA_BITS)
 #endif
+
 #define _VA_START(va)		(-(UL(1) << ((va) - 1)))
 
 #define KERNEL_START      _text
@@ -86,7 +88,7 @@
 #else
 #define KASAN_THREAD_SHIFT	0
 #define KASAN_SHADOW_END	(_VA_START(VA_BITS_MIN))
-#endif
+#endif /* CONFIG_KASAN */
 
 #define MIN_THREAD_SHIFT	(14 + KASAN_THREAD_SHIFT)
 
@@ -224,7 +226,7 @@ static inline unsigned long kaslr_offset(void)
 #define __tag_shifted(tag)	0UL
 #define __tag_reset(addr)	(addr)
 #define __tag_get(addr)		0
-#endif
+#endif /* CONFIG_KASAN_SW_TAGS */
 
 static inline const void *__tag_set(const void *addr, u8 tag)
 {
@@ -263,7 +265,7 @@ extern phys_addr_t __phys_addr_symbol(unsigned long x);
 #else
 #define __virt_to_phys(x)	__virt_to_phys_nodebug(x)
 #define __phys_addr_symbol(x)	__pa_symbol_nodebug(x)
-#endif
+#endif /* CONFIG_DEBUG_VIRTUAL */
 
 #define __phys_to_virt(x)	((unsigned long)((x) - physvirt_offset))
 #define __phys_to_kimg(x)	((unsigned long)((x) + kimage_voffset))
@@ -323,14 +325,14 @@ static inline void *phys_to_virt(phys_addr_t x)
 	u64 __addr = VMEMMAP_START + (__idx * sizeof(struct page));	\
 	(struct page *)__addr;						\
 })
-#endif
+#endif /* !CONFIG_SPARSEMEM_VMEMMAP || CONFIG_DEBUG_VIRTUAL */
 
 #define virt_addr_valid(addr)	({					\
 	__typeof__(addr) __addr = addr;					\
 	__is_lm_address(__addr) && pfn_valid(virt_to_pfn(__addr));	\
 })
 
-#endif
+#endif /* !ASSEMBLY */
 
 /*
  * Given that the GIC architecture permits ITS implementations that can only be
@@ -345,4 +347,4 @@ static inline void *phys_to_virt(phys_addr_t x)
 
 #include <asm-generic/memory_model.h>
 
-#endif
+#endif /* __ASM_MEMORY_H */
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
