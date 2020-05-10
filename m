Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F121CC919
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 10:01:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wEHqG3ZtTQOGCIxuLnLE7vFz5NNSzT5IFmANBMJOAjI=; b=EvSSXBdakAD4lt
	zI0IMwLhahLJiOYrNyx/uAt+UyngVmIjqBz3ixbhDcwQulWeWy6EoMzRBCSw10nCiy6swuX659vzH
	iR/ZeBXAmhMcUukdm8+XmsQ21jtM70/n4aQ7w5yjsfLo2NkO72hmsJ3vujQ4W9ZJy2bOJthi9eADl
	jkt7mOUIhlXD+HGsDMQwOzPbAWrDtgY2LE3dcPqBbSjCekeaQBJL5es8oDf/w1IVK8oxnv7x860Ue
	uvWyAQV18Vru0PtcJoZ8GDqBeDxtVdWu7vBviFz5XfYssr1aB+UBV4ryZyvZIWzjQUFhiw+ZIEj41
	+q9V+ZUoZiJ5U6SWQnmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXguE-0000gl-2I; Sun, 10 May 2020 08:01:50 +0000
Received: from [2001:4bb8:180:9d3f:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXgok-0000Uy-9V; Sun, 10 May 2020 07:56:10 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 18/31] powerpc: use asm-generic/cacheflush.h
Date: Sun, 10 May 2020 09:54:57 +0200
Message-Id: <20200510075510.987823-19-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200510075510.987823-1-hch@lst.de>
References: <20200510075510.987823-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-arch@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, Jessica Yu <jeyu@kernel.org>,
 linux-ia64@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 linux-alpha@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Power needs almost no cache flushing routines of its own.  Rely on
asm-generic/cacheflush.h for the defaults.

Also remove the pointless __KERNEL__ ifdef while we're at it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/powerpc/include/asm/cacheflush.h | 42 +++++++--------------------
 1 file changed, 10 insertions(+), 32 deletions(-)

diff --git a/arch/powerpc/include/asm/cacheflush.h b/arch/powerpc/include/asm/cacheflush.h
index e92191b390f31..e682c8e10e903 100644
--- a/arch/powerpc/include/asm/cacheflush.h
+++ b/arch/powerpc/include/asm/cacheflush.h
@@ -4,23 +4,9 @@
 #ifndef _ASM_POWERPC_CACHEFLUSH_H
 #define _ASM_POWERPC_CACHEFLUSH_H
 
-#ifdef __KERNEL__
-
 #include <linux/mm.h>
 #include <asm/cputable.h>
 
-/*
- * No cache flushing is required when address mappings are changed,
- * because the caches on PowerPCs are physically addressed.
- */
-#define flush_cache_all()			do { } while (0)
-#define flush_cache_mm(mm)			do { } while (0)
-#define flush_cache_dup_mm(mm)			do { } while (0)
-#define flush_cache_range(vma, start, end)	do { } while (0)
-#define flush_cache_page(vma, vmaddr, pfn)	do { } while (0)
-#define flush_icache_page(vma, page)		do { } while (0)
-#define flush_cache_vunmap(start, end)		do { } while (0)
-
 #ifdef CONFIG_PPC_BOOK3S_64
 /*
  * Book3s has no ptesync after setting a pte, so without this ptesync it's
@@ -33,20 +19,20 @@ static inline void flush_cache_vmap(unsigned long start, unsigned long end)
 {
 	asm volatile("ptesync" ::: "memory");
 }
-#else
-static inline void flush_cache_vmap(unsigned long start, unsigned long end) { }
-#endif
+#define flush_cache_vmap flush_cache_vmap
+#endif /* CONFIG_PPC_BOOK3S_64 */
 
 #define ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE 1
 extern void flush_dcache_page(struct page *page);
-#define flush_dcache_mmap_lock(mapping)		do { } while (0)
-#define flush_dcache_mmap_unlock(mapping)	do { } while (0)
 
 void flush_icache_range(unsigned long start, unsigned long stop);
-extern void flush_icache_user_range(struct vm_area_struct *vma,
-				    struct page *page, unsigned long addr,
-				    int len);
-extern void flush_dcache_icache_page(struct page *page);
+#define flush_icache_range flush_icache_range
+
+void flush_icache_user_range(struct vm_area_struct *vma, struct page *page,
+		unsigned long addr, int len);
+#define flush_icache_user_range flush_icache_user_range
+
+void flush_dcache_icache_page(struct page *page);
 void __flush_dcache_icache(void *page);
 
 /**
@@ -111,14 +97,6 @@ static inline void invalidate_dcache_range(unsigned long start,
 	mb();	/* sync */
 }
 
-#define copy_to_user_page(vma, page, vaddr, dst, src, len) \
-	do { \
-		memcpy(dst, src, len); \
-		flush_icache_user_range(vma, page, vaddr, len); \
-	} while (0)
-#define copy_from_user_page(vma, page, vaddr, dst, src, len) \
-	memcpy(dst, src, len)
-
-#endif /* __KERNEL__ */
+#include <asm-generic/cacheflush.h>
 
 #endif /* _ASM_POWERPC_CACHEFLUSH_H */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
