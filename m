Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B005A90E4A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 09:48:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQG21y4j3icMdsFSsCIgXpclo5V+pf43s+52nnHbjQ4=; b=hC9RIaudRLeXpU
	6PMP/GitMI5k7dWcfDhl9EvnB9HTI9im+j0hBRuy5YudIIw6cZfb+BcAjVQN1X62iiC08Occk340s
	6dvnMbtY2embq40VNaoUQAw4Gw/ZeHSgyqTr35E4x8qdxGOriEV6OgCAE4FHkRDV6HlY9RPrJcqXj
	7FzJJX4i+GKFkMrhhei5Sy4isdQ6T1SGT/x2k7vajSA/W2xi0q8DKTI9lpdL+Dvxeb2bNbvU1xFpr
	xv/fm/IeFQ5Tz/MitkZWicPS8HJbb8o+/DzWMbWoEBxlT6eY12ocF7G5ryHIomejUQJaHLVkCzasa
	ZMn1lRRw3Kbb3ad2DFBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hytS5-0004nD-Pp; Sat, 17 Aug 2019 07:48:43 +0000
Received: from 089144199030.atnat0008.highway.a1.net ([89.144.199.30]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hytRp-0004mg-GT; Sat, 17 Aug 2019 07:48:25 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 06/26] ia64: rename ioremap_nocache to ioremap_uc
Date: Sat, 17 Aug 2019 09:32:33 +0200
Message-Id: <20190817073253.27819-7-hch@lst.de>
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

On ia64 ioremap_nocache fails if attributs don't match.  Not other
architectures does this, and we plan to get rid of ioremap_nocache.
So get rid of the special semantics and define ioremap_nocache in
terms of ioremap as no portable driver could rely on the behavior
anyway.

However x86 implements ioremap_uc with a in a similar way as the ia64
version of ioremap_nocache, so implement that instead.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/ia64/include/asm/io.h | 6 +++---
 arch/ia64/mm/ioremap.c     | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/ia64/include/asm/io.h b/arch/ia64/include/asm/io.h
index a511d62d447a..febd2c6ea0b4 100644
--- a/arch/ia64/include/asm/io.h
+++ b/arch/ia64/include/asm/io.h
@@ -412,16 +412,16 @@ __writeq (unsigned long val, volatile void __iomem *addr)
 # ifdef __KERNEL__
 
 extern void __iomem * ioremap(unsigned long offset, unsigned long size);
-extern void __iomem * ioremap_nocache (unsigned long offset, unsigned long size);
+extern void __iomem * ioremap_uc(unsigned long offset, unsigned long size);
 extern void iounmap (volatile void __iomem *addr);
 static inline void __iomem * ioremap_cache (unsigned long phys_addr, unsigned long size)
 {
 	return ioremap(phys_addr, size);
 }
 #define ioremap ioremap
-#define ioremap_nocache ioremap_nocache
+#define ioremap_nocache ioremap
 #define ioremap_cache ioremap_cache
-#define ioremap_uc ioremap_nocache
+#define ioremap_uc ioremap_uc
 #define iounmap iounmap
 
 /*
diff --git a/arch/ia64/mm/ioremap.c b/arch/ia64/mm/ioremap.c
index 0c0de2c4ec69..a09cfa064536 100644
--- a/arch/ia64/mm/ioremap.c
+++ b/arch/ia64/mm/ioremap.c
@@ -99,14 +99,14 @@ ioremap (unsigned long phys_addr, unsigned long size)
 EXPORT_SYMBOL(ioremap);
 
 void __iomem *
-ioremap_nocache (unsigned long phys_addr, unsigned long size)
+ioremap_uc(unsigned long phys_addr, unsigned long size)
 {
 	if (kern_mem_attribute(phys_addr, size) & EFI_MEMORY_WB)
 		return NULL;
 
 	return __ioremap_uc(phys_addr);
 }
-EXPORT_SYMBOL(ioremap_nocache);
+EXPORT_SYMBOL(ioremap_uc);
 
 void
 early_iounmap (volatile void __iomem *addr, unsigned long size)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
