Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DA91A2141
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 14:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXqcV7OYR+akqCBvk4s9E6S8SvkrrTpLGeC5hfHX6ac=; b=Y++G7UmfLyB79G
	56nhsQjI8O54DM1qAbVujWbxpXV6vUqqGM5E0ClU3gE5bliaKbBCaQlt/amELORRxJyx7+9d63NBr
	YM5AKR9lQG+h0+63YM+bYEmRXrkOzfT/cA7byNm3dj+yMHVwDvfxVvZZeSOLe4KaEBHeJ1lUU2ftH
	33uwZGHbYBCoV9kyCVDHgXxvCEO/msakQpkMKkY6A+CQ8SQQNOsPRA2R6mTDgOrI/Vwk7G/Csp16x
	KddFWXSl3xblJZzJt2z2Lm7j7ziKXHvlvyOS+3DxRUkcAut6/rXWikgG4lSor9vQWk+CZ7NBFEWm9
	pmQTZsLy/JHQ+XIEA1Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9Qz-0000Fa-Tk; Wed, 08 Apr 2020 12:03:57 +0000
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9NY-00051s-NB; Wed, 08 Apr 2020 12:00:25 +0000
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
Subject: [PATCH 15/28] mm: remove map_vm_range
Date: Wed,  8 Apr 2020 13:59:13 +0200
Message-Id: <20200408115926.1467567-16-hch@lst.de>
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

Switch all callers to map_kernel_range, which symmetric to the unmap
side (as well as the _noflush versions).

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 Documentation/core-api/cachetlb.rst |  2 +-
 include/linux/vmalloc.h             | 10 ++++------
 mm/vmalloc.c                        | 21 +++++++--------------
 mm/zsmalloc.c                       |  4 +++-
 net/ceph/ceph_common.c              |  3 +--
 5 files changed, 16 insertions(+), 24 deletions(-)

diff --git a/Documentation/core-api/cachetlb.rst b/Documentation/core-api/cachetlb.rst
index 93cb65d52720..a1582cc79f0f 100644
--- a/Documentation/core-api/cachetlb.rst
+++ b/Documentation/core-api/cachetlb.rst
@@ -213,7 +213,7 @@ Here are the routines, one by one:
 	there will be no entries in the cache for the kernel address
 	space for virtual addresses in the range 'start' to 'end-1'.
 
-	The first of these two routines is invoked after map_vm_area()
+	The first of these two routines is invoked after map_kernel_range()
 	has installed the page table entries.  The second is invoked
 	before unmap_kernel_range() deletes the page table entries.
 
diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
index 3070b4dbc2d9..15ffbd8e8e65 100644
--- a/include/linux/vmalloc.h
+++ b/include/linux/vmalloc.h
@@ -168,11 +168,11 @@ extern struct vm_struct *__get_vm_area_caller(unsigned long size,
 extern struct vm_struct *remove_vm_area(const void *addr);
 extern struct vm_struct *find_vm_area(const void *addr);
 
-extern int map_vm_area(struct vm_struct *area, pgprot_t prot,
-			struct page **pages);
 #ifdef CONFIG_MMU
 extern int map_kernel_range_noflush(unsigned long start, unsigned long size,
 				    pgprot_t prot, struct page **pages);
+int map_kernel_range(unsigned long start, unsigned long size, pgprot_t prot,
+		struct page **pages);
 extern void unmap_kernel_range_noflush(unsigned long addr, unsigned long size);
 extern void unmap_kernel_range(unsigned long addr, unsigned long size);
 static inline void set_vm_flush_reset_perms(void *addr)
@@ -189,14 +189,12 @@ map_kernel_range_noflush(unsigned long start, unsigned long size,
 {
 	return size >> PAGE_SHIFT;
 }
+#define map_kernel_range map_kernel_range_noflush
 static inline void
 unmap_kernel_range_noflush(unsigned long addr, unsigned long size)
 {
 }
-static inline void
-unmap_kernel_range(unsigned long addr, unsigned long size)
-{
-}
+#define unmap_kernel_range unmap_kernel_range_noflush
 static inline void set_vm_flush_reset_perms(void *addr)
 {
 }
diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index ca8dc5d42580..b0c7cdc8701a 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -272,8 +272,8 @@ int map_kernel_range_noflush(unsigned long addr, unsigned long size,
 	return 0;
 }
 
-static int map_kernel_range(unsigned long start, unsigned long size,
-			   pgprot_t prot, struct page **pages)
+int map_kernel_range(unsigned long start, unsigned long size, pgprot_t prot,
+		struct page **pages)
 {
 	int ret;
 
@@ -2027,16 +2027,6 @@ void unmap_kernel_range(unsigned long addr, unsigned long size)
 	flush_tlb_kernel_range(addr, end);
 }
 
-int map_vm_area(struct vm_struct *area, pgprot_t prot, struct page **pages)
-{
-	unsigned long addr = (unsigned long)area->addr;
-	int err;
-
-	err = map_kernel_range(addr, get_vm_area_size(area), prot, pages);
-
-	return err > 0 ? 0 : err;
-}
-
 static inline void setup_vmalloc_vm_locked(struct vm_struct *vm,
 	struct vmap_area *va, unsigned long flags, const void *caller)
 {
@@ -2408,7 +2398,8 @@ void *vmap(struct page **pages, unsigned int count,
 	if (!area)
 		return NULL;
 
-	if (map_vm_area(area, prot, pages)) {
+	if (map_kernel_range((unsigned long)area->addr, size, prot,
+			pages) < 0) {
 		vunmap(area->addr);
 		return NULL;
 	}
@@ -2471,8 +2462,10 @@ static void *__vmalloc_area_node(struct vm_struct *area, gfp_t gfp_mask,
 	}
 	atomic_long_add(area->nr_pages, &nr_vmalloc_pages);
 
-	if (map_vm_area(area, prot, pages))
+	if (map_kernel_range((unsigned long)area->addr, get_vm_area_size(area),
+			prot, pages) < 0)
 		goto fail;
+
 	return area->addr;
 
 fail:
diff --git a/mm/zsmalloc.c b/mm/zsmalloc.c
index ac0524330b9b..f6dc0673e62c 100644
--- a/mm/zsmalloc.c
+++ b/mm/zsmalloc.c
@@ -1138,7 +1138,9 @@ static inline void __zs_cpu_down(struct mapping_area *area)
 static inline void *__zs_map_object(struct mapping_area *area,
 				struct page *pages[2], int off, int size)
 {
-	BUG_ON(map_vm_area(area->vm, PAGE_KERNEL, pages));
+	unsigned long addr = (unsigned long)area->vm->addr;
+
+	BUG_ON(map_kernel_range(addr, PAGE_SIZE * 2, PAGE_KERNEL, pages) < 0);
 	area->vm_addr = area->vm->addr;
 	return area->vm_addr + off;
 }
diff --git a/net/ceph/ceph_common.c b/net/ceph/ceph_common.c
index a0e97f6c1072..66f22e8aa529 100644
--- a/net/ceph/ceph_common.c
+++ b/net/ceph/ceph_common.c
@@ -190,8 +190,7 @@ EXPORT_SYMBOL(ceph_compare_options);
  * kvmalloc() doesn't fall back to the vmalloc allocator unless flags are
  * compatible with (a superset of) GFP_KERNEL.  This is because while the
  * actual pages are allocated with the specified flags, the page table pages
- * are always allocated with GFP_KERNEL.  map_vm_area() doesn't even take
- * flags because GFP_KERNEL is hard-coded in {p4d,pud,pmd,pte}_alloc().
+ * are always allocated with GFP_KERNEL.
  *
  * ceph_kvmalloc() may be called with GFP_KERNEL, GFP_NOFS or GFP_NOIO.
  */
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
