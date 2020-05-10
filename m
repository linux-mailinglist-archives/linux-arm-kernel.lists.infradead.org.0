Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C781CC931
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 10:04:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97J56Qi12b7EdzlCt5fcFjbRFu6+BlKMb9os3S3QT+s=; b=BNYGACJHSBw9DQ
	2KOC9SrSmOSdDpzd/u1ZqOJAIeT8MJcpczk2KkSggZkcSt2x550kwbV37Zq+i9qpso+ggZiC2QxNL
	bMKcAZASSPrEdY+8byGidZcSZJx9Rlrt2VhJ5zh0X1hgvA63m/hNQUevdwrs0NsLwhqg8Um7dwppe
	ov19J5lVxmvw1kUGRm5TBvn8pu/sksJYX/16NX/qXxNdM8QM6D2IWWdPy1c9w/kIcXs9BBHDvZkFO
	WNVhgGKNldKHG21F/GDUknrv6j5IhV6Nz4UrXV8fWo3H0BQQXFDMYPAnqonLAFE+DpY17bKs8q/sf
	jnZJ2d4YblRtWeuQLf+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXgwb-0003Vi-F8; Sun, 10 May 2020 08:04:17 +0000
Received: from [2001:4bb8:180:9d3f:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXgp9-0001Bf-B4; Sun, 10 May 2020 07:56:35 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 26/31] m68k: implement flush_icache_user_range
Date: Sun, 10 May 2020 09:55:05 +0200
Message-Id: <20200510075510.987823-27-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200510075510.987823-1-hch@lst.de>
References: <20200510075510.987823-1-hch@lst.de>
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
Cc: linux-arch@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, Jessica Yu <jeyu@kernel.org>,
 linux-ia64@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 linux-alpha@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename the current flush_icache_range to flush_icache_user_range as
per commit ae92ef8a4424 ("PATCH] flush icache in correct context") there
seems to be an assumption that it operates on user addresses.  Add a
flush_icache_range around it that for now is a no-op.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/m68k/include/asm/cacheflush_mm.h | 2 ++
 arch/m68k/mm/cache.c                  | 7 ++++++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/m68k/include/asm/cacheflush_mm.h b/arch/m68k/include/asm/cacheflush_mm.h
index 95376bf84faa5..1ac55e7b47f01 100644
--- a/arch/m68k/include/asm/cacheflush_mm.h
+++ b/arch/m68k/include/asm/cacheflush_mm.h
@@ -257,6 +257,8 @@ static inline void __flush_page_to_ram(void *vaddr)
 extern void flush_icache_user_page(struct vm_area_struct *vma, struct page *page,
 				    unsigned long addr, int len);
 extern void flush_icache_range(unsigned long address, unsigned long endaddr);
+extern void flush_icache_user_range(unsigned long address,
+		unsigned long endaddr);
 
 static inline void copy_to_user_page(struct vm_area_struct *vma,
 				     struct page *page, unsigned long vaddr,
diff --git a/arch/m68k/mm/cache.c b/arch/m68k/mm/cache.c
index 99057cd5ff7f1..7915be3a09712 100644
--- a/arch/m68k/mm/cache.c
+++ b/arch/m68k/mm/cache.c
@@ -73,7 +73,7 @@ static unsigned long virt_to_phys_slow(unsigned long vaddr)
 
 /* Push n pages at kernel virtual address and clear the icache */
 /* RZ: use cpush %bc instead of cpush %dc, cinv %ic */
-void flush_icache_range(unsigned long address, unsigned long endaddr)
+void flush_icache_user_range(unsigned long address, unsigned long endaddr)
 {
 	if (CPU_IS_COLDFIRE) {
 		unsigned long start, end;
@@ -104,6 +104,11 @@ void flush_icache_range(unsigned long address, unsigned long endaddr)
 			      : "di" (FLUSH_I));
 	}
 }
+
+void flush_icache_range(unsigned long address, unsigned long endaddr)
+{
+	flush_icache_user_range(address, endaddr);
+}
 EXPORT_SYMBOL(flush_icache_range);
 
 void flush_icache_user_page(struct vm_area_struct *vma, struct page *page,
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
