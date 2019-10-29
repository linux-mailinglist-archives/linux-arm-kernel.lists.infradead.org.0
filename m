Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFECE81BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 08:02:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=21rFP4veeXUXWCTd9RNOAZOh2cbZavC05QGdFL7ExpA=; b=Rbo7QPKKd3A8OE
	Gs9U66odCMn02XuGu9vpWZXCBE4SyK9Bmq/33dediZnmon6+toLJutTZ1IaV7iynwjJ2gzBvBhH1K
	ArwBeBQUJkQraEJM9Q+mXLsmikgJBqY/La4Ci68yq6f5zRGQRDjEz0lTI+V0bpBAKuazWcUUmDpm2
	FdVjdYGKqV7R6AKvT8nqlHIsS7RX13otP1qKs/+avQEK7yc+GIP6PTW4OFoIWDOZrpUievflqwOT2
	Q+NfGoFLbyTVy3s3jT+lOW5YyvrAuXzwOUDg/oZlZw8yiL1RMK7WVF00mQiVIcN8hxVqOhn1y5NVa
	b6E3JrAp+vURtj6rhq2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPLVw-0002FP-3u; Tue, 29 Oct 2019 07:02:00 +0000
Received: from [2001:4bb8:18c:c7d:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPLK3-0004Ik-1s; Tue, 29 Oct 2019 06:49:43 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 21/21] csky: use generic ioremap
Date: Tue, 29 Oct 2019 07:48:34 +0100
Message-Id: <20191029064834.23438-22-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029064834.23438-1-hch@lst.de>
References: <20191029064834.23438-1-hch@lst.de>
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, linux-mtd@lists.infradead.org,
 linux-alpha@vger.kernel.org, sparclinux@vger.kernel.org,
 nios2-dev@lists.rocketboards.org, linux-riscv@lists.infradead.org,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the generic ioremap_prot and iounmap helpers.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/csky/Kconfig               |  1 +
 arch/csky/include/asm/io.h      |  8 +++---
 arch/csky/include/asm/pgtable.h |  4 +++
 arch/csky/mm/ioremap.c          | 45 ---------------------------------
 4 files changed, 8 insertions(+), 50 deletions(-)

diff --git a/arch/csky/Kconfig b/arch/csky/Kconfig
index 3973847b5f42..da09c884cc30 100644
--- a/arch/csky/Kconfig
+++ b/arch/csky/Kconfig
@@ -17,6 +17,7 @@ config CSKY
 	select IRQ_DOMAIN
 	select HANDLE_DOMAIN_IRQ
 	select DW_APB_TIMER_OF
+	select GENERIC_IOREMAP
 	select GENERIC_LIB_ASHLDI3
 	select GENERIC_LIB_ASHRDI3
 	select GENERIC_LIB_LSHRDI3
diff --git a/arch/csky/include/asm/io.h b/arch/csky/include/asm/io.h
index f572605d5ad5..332f51bc68fb 100644
--- a/arch/csky/include/asm/io.h
+++ b/arch/csky/include/asm/io.h
@@ -36,11 +36,9 @@
 /*
  * I/O memory mapping functions.
  */
-extern void __iomem *__ioremap(phys_addr_t addr, size_t size, pgprot_t prot);
-extern void iounmap(void *addr);
-
-#define ioremap(addr, size)		__ioremap((addr), (size), pgprot_noncached(PAGE_KERNEL))
-#define ioremap_wc(addr, size)		__ioremap((addr), (size), pgprot_writecombine(PAGE_KERNEL))
+#define ioremap_wc(addr, size) \
+	ioremap_prot((addr), (size), \
+		(_PAGE_IOREMAP & ~_CACHE_MASK) | _CACHE_UNCACHED)
 
 #include <asm-generic/io.h>
 
diff --git a/arch/csky/include/asm/pgtable.h b/arch/csky/include/asm/pgtable.h
index 7c21985c60dc..4b2a41e15f2e 100644
--- a/arch/csky/include/asm/pgtable.h
+++ b/arch/csky/include/asm/pgtable.h
@@ -86,6 +86,10 @@
 #define PAGE_USERIO	__pgprot(_PAGE_PRESENT | _PAGE_READ | _PAGE_WRITE | \
 				_CACHE_CACHED)
 
+#define _PAGE_IOREMAP \
+	(_PAGE_PRESENT | __READABLE | __WRITEABLE | _PAGE_GLOBAL | \
+	 _CACHE_UNCACHED | _PAGE_SO)
+
 #define __P000	PAGE_NONE
 #define __P001	PAGE_READONLY
 #define __P010	PAGE_COPY
diff --git a/arch/csky/mm/ioremap.c b/arch/csky/mm/ioremap.c
index ae78256a56fd..70c8268d3b2b 100644
--- a/arch/csky/mm/ioremap.c
+++ b/arch/csky/mm/ioremap.c
@@ -3,53 +3,8 @@
 
 #include <linux/export.h>
 #include <linux/mm.h>
-#include <linux/vmalloc.h>
 #include <linux/io.h>
 
-#include <asm/pgtable.h>
-
-static void __iomem *__ioremap_caller(phys_addr_t addr, size_t size,
-				      pgprot_t prot, void *caller)
-{
-	phys_addr_t last_addr;
-	unsigned long offset, vaddr;
-	struct vm_struct *area;
-
-	last_addr = addr + size - 1;
-	if (!size || last_addr < addr)
-		return NULL;
-
-	offset = addr & (~PAGE_MASK);
-	addr &= PAGE_MASK;
-	size = PAGE_ALIGN(size + offset);
-
-	area = get_vm_area_caller(size, VM_IOREMAP, caller);
-	if (!area)
-		return NULL;
-
-	vaddr = (unsigned long)area->addr;
-
-	if (ioremap_page_range(vaddr, vaddr + size, addr, prot)) {
-		free_vm_area(area);
-		return NULL;
-	}
-
-	return (void __iomem *)(vaddr + offset);
-}
-
-void __iomem *__ioremap(phys_addr_t phys_addr, size_t size, pgprot_t prot)
-{
-	return __ioremap_caller(phys_addr, size, prot,
-				__builtin_return_address(0));
-}
-EXPORT_SYMBOL(__ioremap);
-
-void iounmap(void __iomem *addr)
-{
-	vunmap((void *)((unsigned long)addr & PAGE_MASK));
-}
-EXPORT_SYMBOL(iounmap);
-
 pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
 			      unsigned long size, pgprot_t vma_prot)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
