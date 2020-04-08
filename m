Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BAF1A2125
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 14:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sz+uUU72vkvqhCgzzN7dck/RuHwAR+VNMRzzvHQ7Sik=; b=R7KvAtZbHY9MAE
	Aybk4fRwMyuQ0HTdfqAq4tpiAeuw0ffKGIsjpyh4229bBmxy8YeXfFTr4G9NRIsYxN/nHNOEXKEpP
	Bk8i9Zm8VDoOnIbo2UCKAYGRrCBy3KQfluPbhlulY80eXI8/39t2p+usKWwK6+7klF+V5zjzgpBPa
	Ddls1MAbcRmaFgLQ+G9jshxdvafAm7exRPEs4XaxN54dYMcJHRMEbw1Eku9IzTL73xCJxZhVFIOEm
	7Mw2NW1nkaA8uMLswpsKGeKj+FgVzasXEyOrP+Rhww2dArNL2892VLuh3bOlKtXPq3IfIGXCeqX6Z
	sRRCOq07uirtt2Fm1Krg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9P2-0006hE-Tq; Wed, 08 Apr 2020 12:01:56 +0000
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9N2-00021M-Ag; Wed, 08 Apr 2020 11:59:53 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 x86@kernel.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Minchan Kim <minchan@kernel.org>, Nitin Gupta <ngupta@vflare.org>
Subject: [PATCH 07/28] mm: remove __get_vm_area
Date: Wed,  8 Apr 2020 13:59:05 +0200
Message-Id: <20200408115926.1467567-8-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408115926.1467567-1-hch@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linux-arch@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-s390@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, bpf@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch the two remaining callers to use __get_vm_area_caller instead.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/powerpc/kernel/pci_64.c | 3 ++-
 arch/sh/kernel/cpu/sh4/sq.c  | 3 ++-
 include/linux/vmalloc.h      | 2 --
 mm/vmalloc.c                 | 8 --------
 4 files changed, 4 insertions(+), 12 deletions(-)

diff --git a/arch/powerpc/kernel/pci_64.c b/arch/powerpc/kernel/pci_64.c
index 8e86bd9c1eca..155e2ef60053 100644
--- a/arch/powerpc/kernel/pci_64.c
+++ b/arch/powerpc/kernel/pci_64.c
@@ -132,7 +132,8 @@ void __iomem *ioremap_pbh(phys_addr_t paddr, unsigned long size)
 	 * address decoding but I'd rather not deal with those outside of the
 	 * reserved 64K legacy region.
 	 */
-	area = __get_vm_area(size, 0, PHB_IO_BASE, PHB_IO_END);
+	area = __get_vm_area_caller(size, 0, PHB_IO_BASE, PHB_IO_END,
+				    __builtin_return_address(0));
 	if (!area)
 		return NULL;
 
diff --git a/arch/sh/kernel/cpu/sh4/sq.c b/arch/sh/kernel/cpu/sh4/sq.c
index 934ff84844fa..d432164b23b7 100644
--- a/arch/sh/kernel/cpu/sh4/sq.c
+++ b/arch/sh/kernel/cpu/sh4/sq.c
@@ -103,7 +103,8 @@ static int __sq_remap(struct sq_mapping *map, pgprot_t prot)
 #if defined(CONFIG_MMU)
 	struct vm_struct *vma;
 
-	vma = __get_vm_area(map->size, VM_ALLOC, map->sq_addr, SQ_ADDRMAX);
+	vma = __get_vm_area_caller(map->size, VM_ALLOC, map->sq_addr,
+			SQ_ADDRMAX, __builtin_return_address(0));
 	if (!vma)
 		return -ENOMEM;
 
diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
index 0507a162ccd0..3070b4dbc2d9 100644
--- a/include/linux/vmalloc.h
+++ b/include/linux/vmalloc.h
@@ -161,8 +161,6 @@ static inline size_t get_vm_area_size(const struct vm_struct *area)
 extern struct vm_struct *get_vm_area(unsigned long size, unsigned long flags);
 extern struct vm_struct *get_vm_area_caller(unsigned long size,
 					unsigned long flags, const void *caller);
-extern struct vm_struct *__get_vm_area(unsigned long size, unsigned long flags,
-					unsigned long start, unsigned long end);
 extern struct vm_struct *__get_vm_area_caller(unsigned long size,
 					unsigned long flags,
 					unsigned long start, unsigned long end,
diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index 399f219544f7..d1534d610b48 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -2127,14 +2127,6 @@ static struct vm_struct *__get_vm_area_node(unsigned long size,
 	return area;
 }
 
-struct vm_struct *__get_vm_area(unsigned long size, unsigned long flags,
-				unsigned long start, unsigned long end)
-{
-	return __get_vm_area_node(size, 1, flags, start, end, NUMA_NO_NODE,
-				  GFP_KERNEL, __builtin_return_address(0));
-}
-EXPORT_SYMBOL_GPL(__get_vm_area);
-
 struct vm_struct *__get_vm_area_caller(unsigned long size, unsigned long flags,
 				       unsigned long start, unsigned long end,
 				       const void *caller)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
