Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BEE90EEB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 09:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZdHYjw+RCcotG6YAryUYKIOCLgTfTK1IeC0j460YEI=; b=Sgj8iBH733Sfjl
	4+88HfhLI9MTYwkYOFjp0AKv4TFKdjuBlF4wHkyCNP27Mqh8ZJiEdIh+o2wl4OleeA6Ik064t86bo
	8VSwOdFYOVnxB4FIx3tG0eTzcCfzWqxgWYFK0Xps6cDUJc9AQevhX7Gy1sFd+WmBnACE2MJSIXv+Q
	3hj1F916cnvh0Kz1E4tBkdfk85utddlMmmpqSneEzIXqSakqJIxSqwsZduFYXNKhXL5dJQwhv6cTH
	/xtJbBQezYGADxZFD5F09Q7kLmtisyqIRQJetvXrwJAOZQgFf8DAzDiEOvIS+kusTzoYNEwTM0nLd
	XW15nBhPvG/uGARpsUKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hytTa-00066G-Az; Sat, 17 Aug 2019 07:50:14 +0000
Received: from [2001:4bb8:18c:28b5:44f9:d544:957f:32cb] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hytRw-0004oo-JJ; Sat, 17 Aug 2019 07:48:33 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 08/26] m68k: simplify ioremap_nocache
Date: Sat, 17 Aug 2019 09:32:35 +0200
Message-Id: <20190817073253.27819-9-hch@lst.de>
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

Just define ioremap_nocache to ioremap instead of duplicating the
inline.  Also defined ioremap_uc in terms of ioremap instead of
the using a double indirection.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/m68k/include/asm/kmap.h | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/arch/m68k/include/asm/kmap.h b/arch/m68k/include/asm/kmap.h
index 03d904fe6087..421b6c9c769d 100644
--- a/arch/m68k/include/asm/kmap.h
+++ b/arch/m68k/include/asm/kmap.h
@@ -28,14 +28,8 @@ static inline void __iomem *ioremap(unsigned long physaddr, unsigned long size)
 	return __ioremap(physaddr, size, IOMAP_NOCACHE_SER);
 }
 
-#define ioremap_nocache ioremap_nocache
-static inline void __iomem *ioremap_nocache(unsigned long physaddr,
-					    unsigned long size)
-{
-	return __ioremap(physaddr, size, IOMAP_NOCACHE_SER);
-}
-
-#define ioremap_uc ioremap_nocache
+#define ioremap_nocache ioremap
+#define ioremap_uc ioremap
 #define ioremap_wt ioremap_wt
 static inline void __iomem *ioremap_wt(unsigned long physaddr,
 				       unsigned long size)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
