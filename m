Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5EEDB4FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 19:53:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90yLDLCtJQDbfrOQSmZCCQN1cUJkhZ/vi/+wgTGAXDc=; b=Q5TQVUfZglnyso
	45PDjEUChbMLWoZkqwc/PhPkBcA+w+68ePooTpYoofLl/uj7EghwTaKcqCakNFFocwGCoOLPVCyiF
	KhWcW4A6JPgs+uvjWZPGXKCns131tNf2unZOTVzepKhZ9dl1qLaPICFsWaXovWUlyHXPjBsjV3CoE
	9yaYnYaZEY2DEPU/mfzGk+lv8LRveRR80tx/U5qt4LCFfwzjhnrYYanNzccnqGsBfT2uHxatj83az
	d7t1yDuft1FvUxZe0tkJqtZd6N/jbzbdrbFZNblMMu+8+IXSXNUEYltZiV0ZkQORNdV7SpePyLpt4
	7uZDF2rOu10gEp4IkawA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9y7-0005Pp-OD; Thu, 17 Oct 2019 17:53:47 +0000
Received: from [2001:4bb8:18c:d7b:c70:4a89:bc61:3] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9r6-00066o-RZ; Thu, 17 Oct 2019 17:46:34 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 13/21] m68k: rename __iounmap and mark it static
Date: Thu, 17 Oct 2019 19:45:46 +0200
Message-Id: <20191017174554.29840-14-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191017174554.29840-1-hch@lst.de>
References: <20191017174554.29840-1-hch@lst.de>
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

m68k uses __iounmap as the name for an internal helper that is only
used for some CPU types.  Mark it static and give it a better name.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/m68k/include/asm/kmap.h | 1 -
 arch/m68k/mm/kmap.c          | 9 ++++++---
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/m68k/include/asm/kmap.h b/arch/m68k/include/asm/kmap.h
index 421b6c9c769d..559cb91bede1 100644
--- a/arch/m68k/include/asm/kmap.h
+++ b/arch/m68k/include/asm/kmap.h
@@ -20,7 +20,6 @@ extern void __iomem *__ioremap(unsigned long physaddr, unsigned long size,
 			       int cacheflag);
 #define iounmap iounmap
 extern void iounmap(void __iomem *addr);
-extern void __iounmap(void *addr, unsigned long size);
 
 #define ioremap ioremap
 static inline void __iomem *ioremap(unsigned long physaddr, unsigned long size)
diff --git a/arch/m68k/mm/kmap.c b/arch/m68k/mm/kmap.c
index 40a3b327da07..4c279cf0bcc8 100644
--- a/arch/m68k/mm/kmap.c
+++ b/arch/m68k/mm/kmap.c
@@ -52,6 +52,7 @@ static inline void free_io_area(void *addr)
 
 #define IO_SIZE		(256*1024)
 
+static void __free_io_area(void *addr, unsigned long size);
 static struct vm_struct *iolist;
 
 static struct vm_struct *get_io_area(unsigned long size)
@@ -90,7 +91,7 @@ static inline void free_io_area(void *addr)
 		if (tmp->addr == addr) {
 			*p = tmp->next;
 			/* remove gap added in get_io_area() */
-			__iounmap(tmp->addr, tmp->size - IO_SIZE);
+			__free_io_area(tmp->addr, tmp->size - IO_SIZE);
 			kfree(tmp);
 			return;
 		}
@@ -249,12 +250,13 @@ void iounmap(void __iomem *addr)
 }
 EXPORT_SYMBOL(iounmap);
 
+#ifndef CPU_M68040_OR_M68060_ONLY
 /*
- * __iounmap unmaps nearly everything, so be careful
+ * __free_io_area unmaps nearly everything, so be careful
  * Currently it doesn't free pointer/page tables anymore but this
  * wasn't used anyway and might be added later.
  */
-void __iounmap(void *addr, unsigned long size)
+static void __free_io_area(void *addr, unsigned long size)
 {
 	unsigned long virtaddr = (unsigned long)addr;
 	pgd_t *pgd_dir;
@@ -297,6 +299,7 @@ void __iounmap(void *addr, unsigned long size)
 
 	flush_tlb_all();
 }
+#endif /* CPU_M68040_OR_M68060_ONLY */
 
 /*
  * Set new cache mode for some kernel address space.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
