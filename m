Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0951A214F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 14:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0X2tQZR3LgtZnT9oZ1wKYuBjW9J3uigf5EMmpCo+40=; b=iK+8ufXGJzpedj
	HtEsR0gtEyYNL0Kgy7qv5bccNzVUUTlX/XL2oOyaCtebWz1I4mqhC3XKgGjIQj5vdl6PIqf/u+cCd
	/sQqAjBVtRiBdyYhL00QgvwprGlTY2Y2mX8fpkvCQI/ECwi3ja/nxg6IEkEwpB6H+0jSXGvPtkWrw
	xBcPOED6dXUgb2uky2DFlpT58HzP2id3DCaWb07rqCmDsB5rPg+ANvSag854bJQDitAVvhDB2Oiqa
	7fRbnC9hRYLmKvlM6TKYPAW7zYNCwRVvcOjVpIBw2Dm1+EPCId/BbHsrgDjWGLI6wZiN7tD0wtbqU
	fGWAD53WSifKtc5tTLwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9TP-0005G4-C8; Wed, 08 Apr 2020 12:06:27 +0000
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9O5-0005mY-W5; Wed, 08 Apr 2020 12:00:58 +0000
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
Subject: [PATCH 25/28] mm: remove vmalloc_user_node_flags
Date: Wed,  8 Apr 2020 13:59:23 +0200
Message-Id: <20200408115926.1467567-26-hch@lst.de>
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

Open code it in __bpf_map_area_alloc, which is the only caller.  Also
clean up __bpf_map_area_alloc to have a single vmalloc call with
slightly different flags instead of the current two different calls.

For this to compile for the nommu case add a __vmalloc_node_range stub
to nommu.c.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/vmalloc.h |  1 -
 kernel/bpf/syscall.c    | 23 +++++++++++++----------
 mm/nommu.c              | 14 ++++++++------
 mm/vmalloc.c            | 20 --------------------
 4 files changed, 21 insertions(+), 37 deletions(-)

diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
index 108f49b47756..f90f2946aac2 100644
--- a/include/linux/vmalloc.h
+++ b/include/linux/vmalloc.h
@@ -106,7 +106,6 @@ extern void *vzalloc(unsigned long size);
 extern void *vmalloc_user(unsigned long size);
 extern void *vmalloc_node(unsigned long size, int node);
 extern void *vzalloc_node(unsigned long size, int node);
-extern void *vmalloc_user_node_flags(unsigned long size, int node, gfp_t flags);
 extern void *vmalloc_exec(unsigned long size);
 extern void *vmalloc_32(unsigned long size);
 extern void *vmalloc_32_user(unsigned long size);
diff --git a/kernel/bpf/syscall.c b/kernel/bpf/syscall.c
index 48d98ea8fad6..249d9bd43321 100644
--- a/kernel/bpf/syscall.c
+++ b/kernel/bpf/syscall.c
@@ -281,26 +281,29 @@ static void *__bpf_map_area_alloc(u64 size, int numa_node, bool mmapable)
 	 * __GFP_RETRY_MAYFAIL to avoid such situations.
 	 */
 
-	const gfp_t flags = __GFP_NOWARN | __GFP_ZERO;
+	const gfp_t gfp = __GFP_NOWARN | __GFP_ZERO;
+	unsigned int flags = 0;
+	unsigned long align = 1;
 	void *area;
 
 	if (size >= SIZE_MAX)
 		return NULL;
 
 	/* kmalloc()'ed memory can't be mmap()'ed */
-	if (!mmapable && size <= (PAGE_SIZE << PAGE_ALLOC_COSTLY_ORDER)) {
-		area = kmalloc_node(size, GFP_USER | __GFP_NORETRY | flags,
+	if (mmapable) {
+		BUG_ON(!PAGE_ALIGNED(size));
+		align = SHMLBA;
+		flags = VM_USERMAP;
+	} else if (size <= (PAGE_SIZE << PAGE_ALLOC_COSTLY_ORDER)) {
+		area = kmalloc_node(size, gfp | GFP_USER | __GFP_NORETRY,
 				    numa_node);
 		if (area != NULL)
 			return area;
 	}
-	if (mmapable) {
-		BUG_ON(!PAGE_ALIGNED(size));
-		return vmalloc_user_node_flags(size, numa_node, GFP_KERNEL |
-					       __GFP_RETRY_MAYFAIL | flags);
-	}
-	return __vmalloc_node(size, 1, GFP_KERNEL | __GFP_RETRY_MAYFAIL | flags,
-			      numa_node, __builtin_return_address(0));
+
+	return __vmalloc_node_range(size, align, VMALLOC_START, VMALLOC_END,
+			gfp | GFP_KERNEL | __GFP_RETRY_MAYFAIL, PAGE_KERNEL,
+			flags, numa_node, __builtin_return_address(0));
 }
 
 void *bpf_map_area_alloc(u64 size, int numa_node)
diff --git a/mm/nommu.c b/mm/nommu.c
index 81a86cd85893..b42cd6003d7d 100644
--- a/mm/nommu.c
+++ b/mm/nommu.c
@@ -150,6 +150,14 @@ void *__vmalloc(unsigned long size, gfp_t gfp_mask)
 }
 EXPORT_SYMBOL(__vmalloc);
 
+void *__vmalloc_node_range(unsigned long size, unsigned long align,
+		unsigned long start, unsigned long end, gfp_t gfp_mask,
+		pgprot_t prot, unsigned long vm_flags, int node,
+		const void *caller)
+{
+	return __vmalloc(size, flags);
+}
+
 void *__vmalloc_node(unsigned long size, unsigned long align, gfp_t gfp_mask,
 		int node, const void *caller)
 {
@@ -180,12 +188,6 @@ void *vmalloc_user(unsigned long size)
 }
 EXPORT_SYMBOL(vmalloc_user);
 
-void *vmalloc_user_node_flags(unsigned long size, int node, gfp_t flags)
-{
-	return __vmalloc_user_flags(size, flags | __GFP_ZERO);
-}
-EXPORT_SYMBOL(vmalloc_user_node_flags);
-
 struct page *vmalloc_to_page(const void *addr)
 {
 	return virt_to_page(addr);
diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index 333fbe77255a..f6f2acdaf70c 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -2658,26 +2658,6 @@ void *vzalloc_node(unsigned long size, int node)
 }
 EXPORT_SYMBOL(vzalloc_node);
 
-/**
- * vmalloc_user_node_flags - allocate memory for userspace on a specific node
- * @size: allocation size
- * @node: numa node
- * @flags: flags for the page level allocator
- *
- * The resulting memory area is zeroed so it can be mapped to userspace
- * without leaking data.
- *
- * Return: pointer to the allocated memory or %NULL on error
- */
-void *vmalloc_user_node_flags(unsigned long size, int node, gfp_t flags)
-{
-	return __vmalloc_node_range(size, SHMLBA,  VMALLOC_START, VMALLOC_END,
-				    flags | __GFP_ZERO, PAGE_KERNEL,
-				    VM_USERMAP, node,
-				    __builtin_return_address(0));
-}
-EXPORT_SYMBOL(vmalloc_user_node_flags);
-
 /**
  * vmalloc_exec - allocate virtually contiguous, executable memory
  * @size:	  allocation size
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
