Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E7690F1B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 09:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qQztrp0cenZQi0sFELY8/HsOQpr8C88MXGh5n47KMI=; b=DlRPN6PuBXnLMa
	qBQNeGzg4MvwjEQCQAr4PUIuBCcTfyS6ITcAHn55ycfU0xMWgt9abqDeCIkE+lAwkijtURK4pR9o1
	gzIJOnv83SfStbNa8HyHrJa01ACjwaTmyG7IO5XsS71YoY5DgEe5YEtoi+C86jvwkgwoWXRnLNpzC
	7fLmSUcHNIXR/ci8tL6QbBaQXNjGbquG7SMqKBSuD3p7VctmrlZT5dDWIkzD+gA3OPJGJleawDmVW
	WQqdQ7uBBOmbap7wQRUPVdLwzzLT1l9mzcqG72zTUzxlPU1C+QU+1YvckXt+OLmEqYkkHfLcfiWly
	57nE4uFvF+ncxjRiTeHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hytVk-000147-JC; Sat, 17 Aug 2019 07:52:28 +0000
Received: from [2001:4bb8:18c:28b5:44f9:d544:957f:32cb] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hytSA-00052o-Js; Sat, 17 Aug 2019 07:48:47 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 12/26] x86: clean up ioremap
Date: Sat, 17 Aug 2019 09:32:39 +0200
Message-Id: <20190817073253.27819-13-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190817073253.27819-1-hch@lst.de>
References: <20190817073253.27819-1-hch@lst.de>
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

Use ioremap as the main implemented function, and defined
ioremap_nocache to it as a deprecated alias.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/x86/include/asm/io.h | 8 ++------
 arch/x86/mm/ioremap.c     | 8 ++++----
 arch/x86/mm/pageattr.c    | 4 ++--
 3 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/arch/x86/include/asm/io.h b/arch/x86/include/asm/io.h
index 6bed97ff6db2..6b5cc41319a7 100644
--- a/arch/x86/include/asm/io.h
+++ b/arch/x86/include/asm/io.h
@@ -180,8 +180,6 @@ static inline unsigned int isa_virt_to_bus(volatile void *address)
  * The default ioremap() behavior is non-cached; if you need something
  * else, you probably want one of the following.
  */
-extern void __iomem *ioremap_nocache(resource_size_t offset, unsigned long size);
-#define ioremap_nocache ioremap_nocache
 extern void __iomem *ioremap_uc(resource_size_t offset, unsigned long size);
 #define ioremap_uc ioremap_uc
 extern void __iomem *ioremap_cache(resource_size_t offset, unsigned long size);
@@ -205,11 +203,9 @@ extern void __iomem *ioremap_encrypted(resource_size_t phys_addr, unsigned long
  * If the area you are trying to map is a PCI BAR you should have a
  * look at pci_iomap().
  */
-static inline void __iomem *ioremap(resource_size_t offset, unsigned long size)
-{
-	return ioremap_nocache(offset, size);
-}
+void __iomem *ioremap(resource_size_t offset, unsigned long size);
 #define ioremap ioremap
+#define ioremap_nocache ioremap
 
 extern void iounmap(volatile void __iomem *addr);
 #define iounmap iounmap
diff --git a/arch/x86/mm/ioremap.c b/arch/x86/mm/ioremap.c
index 63e99f15d7cf..c9e90211bddb 100644
--- a/arch/x86/mm/ioremap.c
+++ b/arch/x86/mm/ioremap.c
@@ -279,11 +279,11 @@ __ioremap_caller(resource_size_t phys_addr, unsigned long size,
 }
 
 /**
- * ioremap_nocache     -   map bus memory into CPU space
+ * ioremap     -   map bus memory into CPU space
  * @phys_addr:    bus address of the memory
  * @size:      size of the resource to map
  *
- * ioremap_nocache performs a platform specific sequence of operations to
+ * ioremap performs a platform specific sequence of operations to
  * make bus memory CPU accessible via the readb/readw/readl/writeb/
  * writew/writel functions and the other mmio helpers. The returned
  * address is not guaranteed to be usable directly as a virtual
@@ -299,7 +299,7 @@ __ioremap_caller(resource_size_t phys_addr, unsigned long size,
  *
  * Must be freed with iounmap.
  */
-void __iomem *ioremap_nocache(resource_size_t phys_addr, unsigned long size)
+void __iomem *ioremap(resource_size_t phys_addr, unsigned long size)
 {
 	/*
 	 * Ideally, this should be:
@@ -314,7 +314,7 @@ void __iomem *ioremap_nocache(resource_size_t phys_addr, unsigned long size)
 	return __ioremap_caller(phys_addr, size, pcm,
 				__builtin_return_address(0), false);
 }
-EXPORT_SYMBOL(ioremap_nocache);
+EXPORT_SYMBOL(ioremap);
 
 /**
  * ioremap_uc     -   map bus memory into CPU space as strongly uncachable
diff --git a/arch/x86/mm/pageattr.c b/arch/x86/mm/pageattr.c
index 6a9a77a403c9..5b7a9231b85b 100644
--- a/arch/x86/mm/pageattr.c
+++ b/arch/x86/mm/pageattr.c
@@ -1774,7 +1774,7 @@ static inline int cpa_clear_pages_array(struct page **pages, int numpages,
 int _set_memory_uc(unsigned long addr, int numpages)
 {
 	/*
-	 * for now UC MINUS. see comments in ioremap_nocache()
+	 * for now UC MINUS. see comments in ioremap()
 	 * If you really need strong UC use ioremap_uc(), but note
 	 * that you cannot override IO areas with set_memory_*() as
 	 * these helpers cannot work with IO memory.
@@ -1789,7 +1789,7 @@ int set_memory_uc(unsigned long addr, int numpages)
 	int ret;
 
 	/*
-	 * for now UC MINUS. see comments in ioremap_nocache()
+	 * for now UC MINUS. see comments in ioremap()
 	 */
 	ret = reserve_memtype(__pa(addr), __pa(addr) + numpages * PAGE_SIZE,
 			      _PAGE_CACHE_MODE_UC_MINUS, NULL);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
