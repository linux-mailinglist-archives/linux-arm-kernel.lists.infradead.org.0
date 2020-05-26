Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 391101CC911
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 10:01:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1B9u/JUDMUNobbOLNnCnPrEih9Oc2wFk3coUumScxw=; b=Y03vbFFO5QcqyU
	b3L4VlUlvn6MCuhCks8zLNbu83XZD2MVByRYwI88k5H0LJZ9z/T9H/zcPLMHged+QYdWYjdwFO0BO
	PcX3acJwr8e1OLk5wpCZe9S+d+MBRT3UuU1siW+K6x/yFKWPjFwfyC8NV0MAiZza2HlN/HPxmBFOk
	eS5Uu3wRGPyyiNo8DIHdx8LX5Mpm/Bdzw2yuklmUHX5cfD0Q/2sG7lT5MaAu3u3+W6thhiAMtoKHs
	fo6M+8cq9p0BoPQ1t2KfVoLWUcK+bcqjLjmoc/beu5QIQv80Um9vROfszDJ2ljMJHKtVnsZD9OA/5
	OfXtjCxJsnph68vm369A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXgtb-0008G4-Rt; Sun, 10 May 2020 08:01:11 +0000
Received: from [2001:4bb8:180:9d3f:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXgod-0000KS-GW; Sun, 10 May 2020 07:56:03 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 16/31] m68knommu: use asm-generic/cacheflush.h
Date: Sun, 10 May 2020 09:54:55 +0200
Message-Id: <20200510075510.987823-17-hch@lst.de>
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

m68knommu needs almost no cache flushing routines of its own.  Rely on
asm-generic/cacheflush.h for the defaults.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/m68k/include/asm/cacheflush_no.h | 19 ++-----------------
 1 file changed, 2 insertions(+), 17 deletions(-)

diff --git a/arch/m68k/include/asm/cacheflush_no.h b/arch/m68k/include/asm/cacheflush_no.h
index 11e9a9dcbfb24..2731f07e7be8c 100644
--- a/arch/m68k/include/asm/cacheflush_no.h
+++ b/arch/m68k/include/asm/cacheflush_no.h
@@ -9,25 +9,8 @@
 #include <asm/mcfsim.h>
 
 #define flush_cache_all()			__flush_cache_all()
-#define flush_cache_mm(mm)			do { } while (0)
-#define flush_cache_dup_mm(mm)			do { } while (0)
-#define flush_cache_range(vma, start, end)	do { } while (0)
-#define flush_cache_page(vma, vmaddr)		do { } while (0)
 #define flush_dcache_range(start, len)		__flush_dcache_all()
-#define ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE 0
-#define flush_dcache_page(page)			do { } while (0)
-#define flush_dcache_mmap_lock(mapping)		do { } while (0)
-#define flush_dcache_mmap_unlock(mapping)	do { } while (0)
 #define flush_icache_range(start, len)		__flush_icache_all()
-#define flush_icache_page(vma,pg)		do { } while (0)
-#define flush_icache_user_range(vma,pg,adr,len)	do { } while (0)
-#define flush_cache_vmap(start, end)		do { } while (0)
-#define flush_cache_vunmap(start, end)		do { } while (0)
-
-#define copy_to_user_page(vma, page, vaddr, dst, src, len) \
-	memcpy(dst, src, len)
-#define copy_from_user_page(vma, page, vaddr, dst, src, len) \
-	memcpy(dst, src, len)
 
 void mcf_cache_push(void);
 
@@ -98,4 +81,6 @@ static inline void cache_clear(unsigned long paddr, int len)
 	__clear_cache_all();
 }
 
+#include <asm-generic/cacheflush.h>
+
 #endif /* _M68KNOMMU_CACHEFLUSH_H */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
