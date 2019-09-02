Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1A6A50DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:06:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wWoI0WHG/FCurSAgGR5O1vxM6TxPXioUy4lAuARjuu8=; b=ieNAHJImsT7mMm
	J6IusslvaBXAcnSlOWzplJZSUzVCioGtLJm+tmuy1S1rJwVqbfT/cl52LqqGsfSMeUxosf4tx758m
	R9IqrGENe8c5/z7qtNElVgt31upEi29CS4NUReLC/67BvxjZYF3q+sV+OJJiAutq7+q3S1Cnz7txV
	A9RGRBz2w1dGfiuzBJaIJUzGNN7wVPzQOL934hSq0iQdF40wnx4R7bCJLyWQ5N/J0TMkrSm1Js2rM
	jWt+cdt5sDjTkkX5TEdPMGHPwN7t78HZ6DEKOq3qzNngT+vPd2Kdn997TlY3pmDEsu46dg7Q03vAJ
	7tjSKYIBK1CK5OiROAtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hMF-0007OZ-2u; Mon, 02 Sep 2019 08:06:39 +0000
Received: from [2001:4bb8:18c:1755:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hM1-0007ON-8z; Mon, 02 Sep 2019 08:06:25 +0000
From: Christoph Hellwig <hch@lst.de>
To: will@kernel.org
Subject: [PATCH] arm64: remove __iounmap
Date: Mon,  2 Sep 2019 10:06:23 +0200
Message-Id: <20190902080623.28446-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No need to indirect iounmap for arm64.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/io.h | 3 +--
 arch/arm64/mm/ioremap.c     | 4 ++--
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/io.h b/arch/arm64/include/asm/io.h
index 7ed92626949d..2b3ebf23e9ef 100644
--- a/arch/arm64/include/asm/io.h
+++ b/arch/arm64/include/asm/io.h
@@ -165,14 +165,13 @@ extern void __memset_io(volatile void __iomem *, int, size_t);
  * I/O memory mapping functions.
  */
 extern void __iomem *__ioremap(phys_addr_t phys_addr, size_t size, pgprot_t prot);
-extern void __iounmap(volatile void __iomem *addr);
+extern void iounmap(volatile void __iomem *addr);
 extern void __iomem *ioremap_cache(phys_addr_t phys_addr, size_t size);
 
 #define ioremap(addr, size)		__ioremap((addr), (size), __pgprot(PROT_DEVICE_nGnRE))
 #define ioremap_nocache(addr, size)	__ioremap((addr), (size), __pgprot(PROT_DEVICE_nGnRE))
 #define ioremap_wc(addr, size)		__ioremap((addr), (size), __pgprot(PROT_NORMAL_NC))
 #define ioremap_wt(addr, size)		__ioremap((addr), (size), __pgprot(PROT_DEVICE_nGnRE))
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
