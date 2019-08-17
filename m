Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B59790F42
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 09:57:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8AIa35Q7NpnZpvC/A2tNKR8WpPbWoUkCxynsuhSDREQ=; b=emmDgk9wbB3oqc
	1JQzKJVSVC4UFHG7ArYdVbSYe3d1AjRxGQRgROxFodUMPXmJsfQeqhve/LzcpxSDS9wz8IEFrMx0u
	7J/2Gf0ybNdlxOLkyHHOifxSG5nbEG/XG23/RR4qxy4xq8vUXOz3HCMO7lQFTEvcZEy5OFfV2cnZX
	oMKvdZ2SvpyZIHJntvr7BCf/cTVftYTc4tWW/7jEvPv+mkNrvSLZmdEd3L0yB2GU1lQGKleLzM4lt
	8CQkfS75pW99YLUU9Y8ld0ub6mdEUJGWBAQQxdxWmEJ2mi8U2GfY723EBwJtpTLGh5PMdJn/uGT5C
	n7cnIX8ZS8IkRSDJJRGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hytac-0007P7-7A; Sat, 17 Aug 2019 07:57:30 +0000
Received: from [2001:4bb8:18c:28b5:44f9:d544:957f:32cb] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hytSe-0005Wn-N5; Sat, 17 Aug 2019 07:49:17 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 21/26] nios2: remove __iounmap
Date: Sat, 17 Aug 2019 09:32:48 +0200
Message-Id: <20190817073253.27819-22-hch@lst.de>
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

No need to indirect iounmap for nios2.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/nios2/include/asm/io.h | 7 +------
 arch/nios2/mm/ioremap.c     | 6 +++---
 2 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/nios2/include/asm/io.h b/arch/nios2/include/asm/io.h
index d108937c321e..746853ac7d8d 100644
--- a/arch/nios2/include/asm/io.h
+++ b/arch/nios2/include/asm/io.h
@@ -26,12 +26,7 @@
 #define writel_relaxed(x, addr)	writel(x, addr)
 
 void __iomem *ioremap(unsigned long physaddr, unsigned long size);
-extern void __iounmap(void __iomem *addr);
-
-static inline void iounmap(void __iomem *addr)
-{
-	__iounmap(addr);
-}
+void iounmap(void __iomem *addr);
 
 /* Pages to physical address... */
 #define page_to_phys(page)	virt_to_phys(page_to_virt(page))
diff --git a/arch/nios2/mm/ioremap.c b/arch/nios2/mm/ioremap.c
index 7a1a27f3daa3..b56af759dcdf 100644
--- a/arch/nios2/mm/ioremap.c
+++ b/arch/nios2/mm/ioremap.c
@@ -157,11 +157,11 @@ void __iomem *ioremap(unsigned long phys_addr, unsigned long size)
 EXPORT_SYMBOL(ioremap);
 
 /*
- * __iounmap unmaps nearly everything, so be careful
+ * iounmap unmaps nearly everything, so be careful
  * it doesn't free currently pointer/page tables anymore but it
  * wasn't used anyway and might be added later.
  */
-void __iounmap(void __iomem *addr)
+void iounmap(void __iomem *addr)
 {
 	struct vm_struct *p;
 
@@ -173,4 +173,4 @@ void __iounmap(void __iomem *addr)
 		pr_err("iounmap: bad address %p\n", addr);
 	kfree(p);
 }
-EXPORT_SYMBOL(__iounmap);
+EXPORT_SYMBOL(iounmap);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
