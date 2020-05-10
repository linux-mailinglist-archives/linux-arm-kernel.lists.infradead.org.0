Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 141271CC93D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 10:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5Vzo1loKlBKOR9UW+thAq074bf7/kN9mJ+tDA8VNPE=; b=i2mCEgvjUM6Zwr
	Z4eDPJLOW6UAM0Ye0prdvwiDyv2a0WGMEkvyBnmODEDGh0ssP3YCHPVJHu0a9DFiY7Ja8Bc3Hqbf4
	uLj6HYgUp1IFtU9h2PcBnfms3lsPy4Oe9DjuTAVkLZnRhUkZtkiGJzVj4DT7c7XeXn8JYuNPgzqyo
	p/5co+HKJV2/uxV8KrcSQry0iLTgkI6rOIcvFofq/rTX7rFZr9UlOTZkEaGAkteaZgTQozVYa8rxP
	g8SE6C6ILb9ZMgc8o/6hd+BedwanAEVGM1ndgoSQyWifFw7/m61QBT8QgPhdmU7cnfN5aEiD+BsY6
	gMlFn3MlfzDDKMAIAlMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXgy2-0007Jy-4E; Sun, 10 May 2020 08:05:46 +0000
Received: from [2001:4bb8:180:9d3f:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXgpL-0001Mc-7G; Sun, 10 May 2020 07:56:47 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 30/31] nommu: use flush_icache_user_range in brk and mmap
Date: Sun, 10 May 2020 09:55:09 +0200
Message-Id: <20200510075510.987823-31-hch@lst.de>
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

These obviously operate on user addresses.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 mm/nommu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/mm/nommu.c b/mm/nommu.c
index 318df4e236c99..aed7acaed2383 100644
--- a/mm/nommu.c
+++ b/mm/nommu.c
@@ -443,7 +443,7 @@ SYSCALL_DEFINE1(brk, unsigned long, brk)
 	/*
 	 * Ok, looks good - let it rip.
 	 */
-	flush_icache_range(mm->brk, brk);
+	flush_icache_user_range(mm->brk, brk);
 	return mm->brk = brk;
 }
 
@@ -1287,7 +1287,7 @@ unsigned long do_mmap(struct file *file,
 	/* we flush the region from the icache only when the first executable
 	 * mapping of it is made  */
 	if (vma->vm_flags & VM_EXEC && !region->vm_icache_flushed) {
-		flush_icache_range(region->vm_start, region->vm_end);
+		flush_icache_user_range(region->vm_start, region->vm_end);
 		region->vm_icache_flushed = true;
 	}
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
