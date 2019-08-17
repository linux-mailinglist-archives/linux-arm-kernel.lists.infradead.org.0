Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A87390F3A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 09:56:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfnkS/NIJanIVeV33T4Sy3yCt0a3Z/57Q0gQQQIKe2A=; b=EyDkJanZXKIbUP
	orrAfYWK88KcWU+eHJPURRo1GtnYLuJ5MUrgIvfFHcuRLN078EPDCIG3SQ9Yq3AP1dYubi9hSn/yq
	cz8bdT9tdEhdW+GcABUJMarE5gezu8A0yDngDSsx6CyNRxclqAlP0+ADw6LZOXZoNpy/zEAGgZryD
	dU04Eidd3/KvW2hvdU87r93XqT+8S9HNB7cb1shIeKZLUGNs0AvjyPjnCHbMswhhbTbFDBNc9KjwH
	KbXmEgF7jAC84EEaB3VtPdd6M8ijYXfCOBrE4g0NAEZ1VOYBWJ/lbJix2wVogPmJBicSBrDlcuM+a
	RqqqJihfuCoJ7X3QE9qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hytZW-000653-Hc; Sat, 17 Aug 2019 07:56:22 +0000
Received: from [2001:4bb8:18c:28b5:44f9:d544:957f:32cb] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hytSX-0005RI-L0; Sat, 17 Aug 2019 07:49:10 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 19/26] arm64: remove __iounmap
Date: Sat, 17 Aug 2019 09:32:46 +0200
Message-Id: <20190817073253.27819-20-hch@lst.de>
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

No need to indirect iounmap for arm64.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm64/include/asm/io.h | 3 +--
 arch/arm64/mm/ioremap.c     | 4 ++--
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/io.h b/arch/arm64/include/asm/io.h
index a61b1469f7d9..1bf5631671c3 100644
--- a/arch/arm64/include/asm/io.h
+++ b/arch/arm64/include/asm/io.h
@@ -165,12 +165,11 @@ extern void __memset_io(volatile void __iomem *, int, size_t);
  * I/O memory mapping functions.
  */
 extern void __iomem *__ioremap(phys_addr_t phys_addr, size_t size, pgprot_t prot);
-extern void __iounmap(volatile void __iomem *addr);
+extern void iounmap(volatile void __iomem *addr);
 extern void __iomem *ioremap_cache(phys_addr_t phys_addr, size_t size);
 
 #define ioremap(addr, size)		__ioremap((addr), (size), __pgprot(PROT_DEVICE_nGnRE))
 #define ioremap_wc(addr, size)		__ioremap((addr), (size), __pgprot(PROT_NORMAL_NC))
-#define iounmap				__iounmap
 
 /*
  * PCI configuration space mapping function.
diff --git a/arch/arm64/mm/ioremap.c b/arch/arm64/mm/ioremap.c
index fdb595a5d65f..9be71bee902c 100644
--- a/arch/arm64/mm/ioremap.c
+++ b/arch/arm64/mm/ioremap.c
@@ -69,7 +69,7 @@ void __iomem *__ioremap(phys_addr_t phys_addr, size_t size, pgprot_t prot)
 }
 EXPORT_SYMBOL(__ioremap);
 
-void __iounmap(volatile void __iomem *io_addr)
+void iounmap(volatile void __iomem *io_addr)
 {
 	unsigned long addr = (unsigned long)io_addr & PAGE_MASK;
 
@@ -80,7 +80,7 @@ void __iounmap(volatile void __iomem *io_addr)
 	if (is_vmalloc_addr((void *)addr))
 		vunmap((void *)addr);
 }
-EXPORT_SYMBOL(__iounmap);
+EXPORT_SYMBOL(iounmap);
 
 void __iomem *ioremap_cache(phys_addr_t phys_addr, size_t size)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
