Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1658145F33
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nasaMAfSzMZY08J/WN+kA4226VMCUtaWZJUMI/oV67M=; b=HKE9X1RNL9PR9j
	8MUH14HdHt0xT3lne7taX5SIuLP4/9ehIxLwRSoQnWauqNx39sLcERl92hZ2RK7TtWvc7hJTUhBVy
	VBjHYRRMW9ldfdQQ83QbfkDxbhNnDiUfLsclP+hyKDThUAoN9a/HlKmgSgRrWsWWCqLNNP664226Z
	Rp1iQUMzCuTb65tUwLcdjAFKHBfmmLsJJXShlecSPdAHPEl9474WjLEEQTy1tax/LUaFGGf+Ud66D
	AKG6z9Rk4n2fuhOXH3qwQzbFmnY/ERoROQgbk7K4FhY21S10n2xI39h43Xi0xusEgbziwLy7oaNF8
	A8tXSxtw7fBUc1fmC/Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmZu-0006TB-Bv; Fri, 14 Jun 2019 13:49:14 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYQ-0004jF-5L; Fri, 14 Jun 2019 13:47:42 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: [PATCH 03/16] drm/i915: stop using drm_pci_alloc
Date: Fri, 14 Jun 2019 15:47:13 +0200
Message-Id: <20190614134726.3827-4-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614134726.3827-1-hch@lst.de>
References: <20190614134726.3827-1-hch@lst.de>
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove usage of the legacy drm PCI DMA wrappers, and with that the
incorrect usage cocktail of __GFP_COMP, virt_to_page on DMA allocation
and SetPageReserved.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/gpu/drm/i915/i915_gem.c        | 30 +++++++++++++-------------
 drivers/gpu/drm/i915/i915_gem_object.h |  3 ++-
 drivers/gpu/drm/i915/intel_display.c   |  2 +-
 3 files changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index ad01c92aaf74..8f2053c91aff 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -228,7 +228,6 @@ i915_gem_get_aperture_ioctl(struct drm_device *dev, void *data,
 static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
 {
 	struct address_space *mapping = obj->base.filp->f_mapping;
-	drm_dma_handle_t *phys;
 	struct sg_table *st;
 	struct scatterlist *sg;
 	char *vaddr;
@@ -242,13 +241,13 @@ static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
 	 * to handle all possible callers, and given typical object sizes,
 	 * the alignment of the buddy allocation will naturally match.
 	 */
-	phys = drm_pci_alloc(obj->base.dev,
-			     roundup_pow_of_two(obj->base.size),
-			     roundup_pow_of_two(obj->base.size));
-	if (!phys)
+	obj->phys_vaddr = dma_alloc_coherent(&obj->base.dev->pdev->dev,
+			roundup_pow_of_two(obj->base.size),
+			&obj->phys_handle, GFP_KERNEL);
+	if (!obj->phys_vaddr)
 		return -ENOMEM;
 
-	vaddr = phys->vaddr;
+	vaddr = obj->phys_vaddr;
 	for (i = 0; i < obj->base.size / PAGE_SIZE; i++) {
 		struct page *page;
 		char *src;
@@ -286,18 +285,17 @@ static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
 	sg->offset = 0;
 	sg->length = obj->base.size;
 
-	sg_dma_address(sg) = phys->busaddr;
+	sg_dma_address(sg) = obj->phys_handle;
 	sg_dma_len(sg) = obj->base.size;
 
-	obj->phys_handle = phys;
-
 	__i915_gem_object_set_pages(obj, st, sg->length);
 
 	return 0;
 
 err_phys:
-	drm_pci_free(obj->base.dev, phys);
-
+	dma_free_coherent(&obj->base.dev->pdev->dev,
+			roundup_pow_of_two(obj->base.size), obj->phys_vaddr,
+			obj->phys_handle);
 	return err;
 }
 
@@ -335,7 +333,7 @@ i915_gem_object_put_pages_phys(struct drm_i915_gem_object *obj,
 
 	if (obj->mm.dirty) {
 		struct address_space *mapping = obj->base.filp->f_mapping;
-		char *vaddr = obj->phys_handle->vaddr;
+		char *vaddr = obj->phys_vaddr;
 		int i;
 
 		for (i = 0; i < obj->base.size / PAGE_SIZE; i++) {
@@ -363,7 +361,9 @@ i915_gem_object_put_pages_phys(struct drm_i915_gem_object *obj,
 	sg_free_table(pages);
 	kfree(pages);
 
-	drm_pci_free(obj->base.dev, obj->phys_handle);
+	dma_free_coherent(&obj->base.dev->pdev->dev,
+			roundup_pow_of_two(obj->base.size), obj->phys_vaddr,
+			obj->phys_handle);
 }
 
 static void
@@ -603,7 +603,7 @@ i915_gem_phys_pwrite(struct drm_i915_gem_object *obj,
 		     struct drm_i915_gem_pwrite *args,
 		     struct drm_file *file)
 {
-	void *vaddr = obj->phys_handle->vaddr + args->offset;
+	void *vaddr = obj->phys_vaddr + args->offset;
 	char __user *user_data = u64_to_user_ptr(args->data_ptr);
 
 	/* We manually control the domain here and pretend that it
@@ -1431,7 +1431,7 @@ i915_gem_pwrite_ioctl(struct drm_device *dev, void *data,
 		ret = i915_gem_gtt_pwrite_fast(obj, args);
 
 	if (ret == -EFAULT || ret == -ENOSPC) {
-		if (obj->phys_handle)
+		if (obj->phys_vaddr)
 			ret = i915_gem_phys_pwrite(obj, args, file);
 		else
 			ret = i915_gem_shmem_pwrite(obj, args);
diff --git a/drivers/gpu/drm/i915/i915_gem_object.h b/drivers/gpu/drm/i915/i915_gem_object.h
index ca93a40c0c87..14bd2d61d0f6 100644
--- a/drivers/gpu/drm/i915/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/i915_gem_object.h
@@ -290,7 +290,8 @@ struct drm_i915_gem_object {
 	};
 
 	/** for phys allocated objects */
-	struct drm_dma_handle *phys_handle;
+	dma_addr_t phys_handle;
+	void *phys_vaddr;
 
 	struct reservation_object __builtin_resv;
 };
diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/intel_display.c
index 5098228f1302..4f8b368ac4e2 100644
--- a/drivers/gpu/drm/i915/intel_display.c
+++ b/drivers/gpu/drm/i915/intel_display.c
@@ -10066,7 +10066,7 @@ static u32 intel_cursor_base(const struct intel_plane_state *plane_state)
 	u32 base;
 
 	if (INTEL_INFO(dev_priv)->display.cursor_needs_physical)
-		base = obj->phys_handle->busaddr;
+		base = obj->phys_handle;
 	else
 		base = intel_plane_ggtt_offset(plane_state);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
