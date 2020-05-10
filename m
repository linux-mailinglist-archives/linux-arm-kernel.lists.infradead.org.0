Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCD11CC903
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 09:59:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+s+uL5z+e5hLCyeQ6T4jz5HAxzpeMjArp2I4dALOSjc=; b=YJ8QGpCbxcdv5e
	Ndsda4evVlGxhSzLvvrjufIythWHMc0JGM+uRUj8RKeas4of5Jaf9JKs3e0Oi+EN9YcTEAYDYSEGj
	oDZ4wxptSt7jWCavmM/8V73fktJtQQRa50IE5aLCvfn/vv/nf/AhHoKSDaU5mGdv7R7TEav35zrro
	DLYoGernpnOpkFc7MWzjU0pyl89Chq16uWtp5ap2D/wOxW2t9TCdghB7WG3zdkY5zo+wDh7AOUIwG
	XoGnd8ADQ8AiLLfiNEkGOYm/Qa0Y1viIihjihqhx4/HH8DjmCspFE7JkF84qrEzTV8QDoApa6Vgfn
	q5HFfd/iV3Wz7AanXdDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXgsG-0004ea-51; Sun, 10 May 2020 07:59:48 +0000
Received: from [2001:4bb8:180:9d3f:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXgoP-0008QV-Vf; Sun, 10 May 2020 07:55:50 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 12/31] c6x: use asm-generic/cacheflush.h
Date: Sun, 10 May 2020 09:54:51 +0200
Message-Id: <20200510075510.987823-13-hch@lst.de>
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

C6x needs almost no cache flushing routines of its own.  Rely on
asm-generic/cacheflush.h for the defaults.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/c6x/include/asm/cacheflush.h | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

diff --git a/arch/c6x/include/asm/cacheflush.h b/arch/c6x/include/asm/cacheflush.h
index 4540b40475e6c..10922d528de6d 100644
--- a/arch/c6x/include/asm/cacheflush.h
+++ b/arch/c6x/include/asm/cacheflush.h
@@ -16,21 +16,6 @@
 #include <asm/page.h>
 #include <asm/string.h>
 
-/*
- * virtually-indexed cache management (our cache is physically indexed)
- */
-#define flush_cache_all()			do {} while (0)
-#define flush_cache_mm(mm)			do {} while (0)
-#define flush_cache_dup_mm(mm)			do {} while (0)
-#define flush_cache_range(mm, start, end)	do {} while (0)
-#define flush_cache_page(vma, vmaddr, pfn)	do {} while (0)
-#define flush_cache_vmap(start, end)		do {} while (0)
-#define flush_cache_vunmap(start, end)		do {} while (0)
-#define ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE 0
-#define flush_dcache_page(page)			do {} while (0)
-#define flush_dcache_mmap_lock(mapping)		do {} while (0)
-#define flush_dcache_mmap_unlock(mapping)	do {} while (0)
-
 /*
  * physically-indexed cache management
  */
@@ -49,14 +34,12 @@ do {								  \
 			(unsigned long) page_address(page) + PAGE_SIZE)); \
 } while (0)
 
-
 #define copy_to_user_page(vma, page, vaddr, dst, src, len) \
 do {						     \
 	memcpy(dst, src, len);			     \
 	flush_icache_range((unsigned) (dst), (unsigned) (dst) + (len)); \
 } while (0)
 
-#define copy_from_user_page(vma, page, vaddr, dst, src, len) \
-	memcpy(dst, src, len)
+#include <asm-generic/cacheflush.h>
 
 #endif /* _ASM_C6X_CACHEFLUSH_H */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
