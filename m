Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6C1E8189
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 07:54:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPwD7VAftQLEMrw3ypWp6F1XEdcl3hxC4JTQeJsy9qk=; b=mGzJv05TxoCd13
	kfrRp7DShVJfwSasTm+li70qEnFkwpshxaSCOWdRcZeyXOBN56pmp1UuftunbK3vnfE/f8DGcwU6b
	O8DinNk0NlogmIZWXwTTmxEnIgoGteqNE4S4Xh67EtrbnJvFszQVbFyXzMBDDjF5/QpOXjRKWm8Ti
	UXis/nRJj5CLNUEeTvZqKdF2ppgDNc9f5oAGQwQdTGa9D2PoGPKttFfKPLw+vKf2DaRBv/n+hy9/x
	quS6vMoJDer3V+n4n9XJ6QqjFvBNHmcn/8kr0vTJn7JD47x1CtvBbetG6Y/fwdtyRflUv0fKSHMmZ
	q6RchZn+HAFEOzAwPJdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPLOc-0001M1-S2; Tue, 29 Oct 2019 06:54:26 +0000
Received: from [2001:4bb8:18c:c7d:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPLJT-0003p3-Ev; Tue, 29 Oct 2019 06:49:07 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 10/21] asm-generic: ioremap_uc should behave the same with and
 without MMU
Date: Tue, 29 Oct 2019 07:48:23 +0100
Message-Id: <20191029064834.23438-11-hch@lst.de>
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

Whatever reason there is for the existence of ioremap_uc, and the fact
that it returns NULL by default on architectures with an MMU applies
equally to nommu architectures, so don't provide different defaults.

In practice the difference is meaningless as the only portable driver
that uses ioremap_uc is atyfb which probably doesn't show up on nommu
devices.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/asm-generic/io.h | 36 ++++++++++++++++--------------------
 1 file changed, 16 insertions(+), 20 deletions(-)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index d02806513670..a98ed6325727 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -935,18 +935,7 @@ static inline void *phys_to_virt(unsigned long address)
  * defined your own ioremap_*() variant you must then declare your own
  * ioremap_*() variant as defined to itself to avoid the default NULL return.
  */
-
-#ifdef CONFIG_MMU
-
-#ifndef ioremap_uc
-#define ioremap_uc ioremap_uc
-static inline void __iomem *ioremap_uc(phys_addr_t offset, size_t size)
-{
-	return NULL;
-}
-#endif
-
-#else /* !CONFIG_MMU */
+#ifndef CONFIG_MMU
 
 /*
  * Change "struct page" to physical address.
@@ -980,14 +969,6 @@ static inline void __iomem *ioremap_nocache(phys_addr_t offset, size_t size)
 }
 #endif
 
-#ifndef ioremap_uc
-#define ioremap_uc ioremap_uc
-static inline void __iomem *ioremap_uc(phys_addr_t offset, size_t size)
-{
-	return ioremap_nocache(offset, size);
-}
-#endif
-
 #ifndef ioremap_wc
 #define ioremap_wc ioremap_wc
 static inline void __iomem *ioremap_wc(phys_addr_t offset, size_t size)
@@ -1004,6 +985,21 @@ static inline void __iomem *ioremap_wt(phys_addr_t offset, size_t size)
 }
 #endif
 
+/*
+ * ioremap_uc is special in that we do require an explicit architecture
+ * implementation.  In general you do now want to use this function in a
+ * driver and use plain ioremap, which is uncached by default.  Similarly
+ * architectures should not implement it unless they have a very good
+ * reason.
+ */
+#ifndef ioremap_uc
+#define ioremap_uc ioremap_uc
+static inline void __iomem *ioremap_uc(phys_addr_t offset, size_t size)
+{
+	return NULL;
+}
+#endif
+
 #ifdef CONFIG_HAS_IOPORT_MAP
 #ifndef CONFIG_GENERIC_IOMAP
 #ifndef ioport_map
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
