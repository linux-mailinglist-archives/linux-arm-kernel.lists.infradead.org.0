Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 864C990DFF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 09:42:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDVRWSM57c4IPYQkLHC3QUcqMoxVJZN6gKiFtZEqtfE=; b=dHTC5V0A87pv4J
	6Z0fkkF1fv4Yzwd+PBsIpJChQV8phpsbP9kITBKHf7fcdOVvOsoK670r6gAD4PBOyiMp0uDXZpjW+
	CqgUvdf+tTya3ZIJMuAaIda+qPGv5nXyCkvgCc+S868xwgphid1F259QHd2JzBGxX0fVlfZuIxGof
	WlocPIpz0iys1MzcKjDOVaXB/RlzEyoIHLBro4U9O8nKnAlorR3MWJJYg4qggCX0XvtyGUY+FU0JL
	cB6FcC3FADumQm2+Vi2jL3czGbRE4pfERmRY4iEZFFG/QHGDQoeNrpuKdaiy5TCBcCLvpos8ZYjRH
	47Uq81HkMgN2rXTZCFKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hytLc-00017f-T5; Sat, 17 Aug 2019 07:42:01 +0000
Received: from 089144199030.atnat0008.highway.a1.net ([89.144.199.30]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hytLO-000175-Cc; Sat, 17 Aug 2019 07:41:46 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 03/26] m68k, microblaze: remove ioremap_fullcache
Date: Sat, 17 Aug 2019 09:32:30 +0200
Message-Id: <20190817073253.27819-4-hch@lst.de>
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

No callers of this function.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/m68k/include/asm/kmap.h     | 7 -------
 arch/microblaze/include/asm/io.h | 1 -
 2 files changed, 8 deletions(-)

diff --git a/arch/m68k/include/asm/kmap.h b/arch/m68k/include/asm/kmap.h
index aac7f045f7f0..03d904fe6087 100644
--- a/arch/m68k/include/asm/kmap.h
+++ b/arch/m68k/include/asm/kmap.h
@@ -43,13 +43,6 @@ static inline void __iomem *ioremap_wt(unsigned long physaddr,
 	return __ioremap(physaddr, size, IOMAP_WRITETHROUGH);
 }
 
-#define ioremap_fullcache ioremap_fullcache
-static inline void __iomem *ioremap_fullcache(unsigned long physaddr,
-					      unsigned long size)
-{
-	return __ioremap(physaddr, size, IOMAP_FULL_CACHING);
-}
-
 #define memset_io memset_io
 static inline void memset_io(volatile void __iomem *addr, unsigned char val,
 			     int count)
diff --git a/arch/microblaze/include/asm/io.h b/arch/microblaze/include/asm/io.h
index c7968139486f..86c95b2a1ce1 100644
--- a/arch/microblaze/include/asm/io.h
+++ b/arch/microblaze/include/asm/io.h
@@ -40,7 +40,6 @@ extern void iounmap(volatile void __iomem *addr);
 
 extern void __iomem *ioremap(phys_addr_t address, unsigned long size);
 #define ioremap_nocache(addr, size)		ioremap((addr), (size))
-#define ioremap_fullcache(addr, size)		ioremap((addr), (size))
 #define ioremap_wc(addr, size)			ioremap((addr), (size))
 #define ioremap_wt(addr, size)			ioremap((addr), (size))
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
