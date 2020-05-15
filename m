Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 443DE1D50E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:38:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wVwenj3kA4itmLhwxXdVIqrOow5G0rR+MB7OKIwvLYs=; b=LZI7LPxnxc55qY
	GO9daj6/PRctDwgg5xWtR4/v9RQL19Bsw7nKgNb58dqmM6LlEuVr8F2itUIY+RHvygLN6WpwkFa8Y
	hlpHXegc5ANRiTmXb8GhP+HOpLvhDKlpj011EkJ+T5LKe1a20M4n7dT/+1vdkwODL5Q1Tqjil1K/7
	E5Byje/RLy0iDqhyxRWSV/U1BkApN8w7NcphpF5Uj0wTKkprweK79SHMbhsMjGkh1MEn2ahjvel5H
	agfeJJwL9+SWZfWf5qgMJBGBMeqeK3uBkCr3tmyGtDcgPvnv28MRIowc+cb9wb4GXJGNgWzjxupbK
	14fJAas/RTqdHqhWxyrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbTg-00053f-Og; Fri, 15 May 2020 14:38:20 +0000
Received: from [2001:4bb8:188:1506:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbSI-0003nx-7L; Fri, 15 May 2020 14:36:54 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 02/29] nds32: unexport flush_icache_page
Date: Fri, 15 May 2020 16:36:19 +0200
Message-Id: <20200515143646.3857579-3-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515143646.3857579-1-hch@lst.de>
References: <20200515143646.3857579-1-hch@lst.de>
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

flush_icache_page is only used by mm/memory.c.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/nds32/mm/cacheflush.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/nds32/mm/cacheflush.c b/arch/nds32/mm/cacheflush.c
index 254703653b6f5..8f168b33065fa 100644
--- a/arch/nds32/mm/cacheflush.c
+++ b/arch/nds32/mm/cacheflush.c
@@ -35,7 +35,6 @@ void flush_icache_page(struct vm_area_struct *vma, struct page *page)
 	kunmap_atomic((void *)kaddr);
 	local_irq_restore(flags);
 }
-EXPORT_SYMBOL(flush_icache_page);
 
 void flush_icache_user_range(struct vm_area_struct *vma, struct page *page,
 	                     unsigned long addr, int len)
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
