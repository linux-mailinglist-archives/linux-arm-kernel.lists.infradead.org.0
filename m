Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BD845F20
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTyhVgXVhtvQ9I4qW1/eF+KQ4t9hf+8oFAT4vaD46L0=; b=AUd93mVoGgjFKc
	f413QW999XH2TeAnhON7s7ReMpAu1/6Y+S3PY+9C+8C4qB5dGkDW27md11I0FwbCDQztrAVZ3+a3U
	fymUB4RTNCYF5GQPopML6SgW2jEdWzLYfN2DyiDmLv1QD2IxK1KNQffi9vk44ecnDGFGjXCo3aozr
	maFmwul9nJqtCpiHBc1bsTla7joN7wpEeeFSi0zj50lfK5AcN8blldZ1uS7uswB3fohAP0r2yNJPh
	NcZ4cjMCbZWvMJCn8wHkGAZhSuiJk8hD7QfM+TBakUvYaMCbPKcO3d/Iwrm/AbE/4jErmoWsaETIq
	wrfsoLlOGbAaN/8Dx1Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmZS-0005P1-Do; Fri, 14 Jun 2019 13:48:46 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYM-0004a2-N5; Fri, 14 Jun 2019 13:47:39 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: [PATCH 02/16] drm/ati_pcigart: stop using drm_pci_alloc
Date: Fri, 14 Jun 2019 15:47:12 +0200
Message-Id: <20190614134726.3827-3-hch@lst.de>
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
 drivers/gpu/drm/ati_pcigart.c | 27 +++++++++++----------------
 include/drm/ati_pcigart.h     |  5 ++++-
 2 files changed, 15 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/ati_pcigart.c b/drivers/gpu/drm/ati_pcigart.c
index 2362f07fe1fc..f66d4fccd812 100644
--- a/drivers/gpu/drm/ati_pcigart.c
+++ b/drivers/gpu/drm/ati_pcigart.c
@@ -41,21 +41,14 @@
 static int drm_ati_alloc_pcigart_table(struct drm_device *dev,
 				       struct drm_ati_pcigart_info *gart_info)
 {
-	gart_info->table_handle = drm_pci_alloc(dev, gart_info->table_size,
-						PAGE_SIZE);
-	if (gart_info->table_handle == NULL)
+	gart_info->table_vaddr = dma_alloc_coherent(&dev->pdev->dev,
+			gart_info->table_size, &gart_info->table_handle,
+			GFP_KERNEL);
+	if (!gart_info->table_vaddr)
 		return -ENOMEM;
-
 	return 0;
 }
 
-static void drm_ati_free_pcigart_table(struct drm_device *dev,
-				       struct drm_ati_pcigart_info *gart_info)
-{
-	drm_pci_free(dev, gart_info->table_handle);
-	gart_info->table_handle = NULL;
-}
-
 int drm_ati_pcigart_cleanup(struct drm_device *dev, struct drm_ati_pcigart_info *gart_info)
 {
 	struct drm_sg_mem *entry = dev->sg;
@@ -87,8 +80,10 @@ int drm_ati_pcigart_cleanup(struct drm_device *dev, struct drm_ati_pcigart_info
 	}
 
 	if (gart_info->gart_table_location == DRM_ATI_GART_MAIN &&
-	    gart_info->table_handle) {
-		drm_ati_free_pcigart_table(dev, gart_info);
+	    gart_info->table_vaddr) {
+		dma_free_coherent(&dev->pdev->dev, gart_info->table_size,
+				gart_info->table_vaddr, gart_info->table_handle);
+		gart_info->table_vaddr = NULL;
 	}
 
 	return 1;
@@ -127,9 +122,9 @@ int drm_ati_pcigart_init(struct drm_device *dev, struct drm_ati_pcigart_info *ga
 			goto done;
 		}
 
-		pci_gart = gart_info->table_handle->vaddr;
-		address = gart_info->table_handle->vaddr;
-		bus_address = gart_info->table_handle->busaddr;
+		pci_gart = gart_info->table_vaddr;
+		address = gart_info->table_vaddr;
+		bus_address = gart_info->table_handle;
 	} else {
 		address = gart_info->addr;
 		bus_address = gart_info->bus_addr;
diff --git a/include/drm/ati_pcigart.h b/include/drm/ati_pcigart.h
index a728a1364e66..2ffe278ba3b3 100644
--- a/include/drm/ati_pcigart.h
+++ b/include/drm/ati_pcigart.h
@@ -18,7 +18,10 @@ struct drm_ati_pcigart_info {
 	void *addr;
 	dma_addr_t bus_addr;
 	dma_addr_t table_mask;
-	struct drm_dma_handle *table_handle;
+
+	dma_addr_t table_handle;
+	void *table_vaddr;
+
 	struct drm_local_map mapping;
 	int table_size;
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
