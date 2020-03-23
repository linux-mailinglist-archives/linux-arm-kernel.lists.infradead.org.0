Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C5A18FB4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 18:20:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HcWgq9O/z+9yOOXBdtqLmFvRsVF8A8PQEnz2tJ1XMEA=; b=sCj7cWkW6CLSeco7seJLC3gCJE
	CB5CFMteNsrdA07tJxhdaBvWdl4KaMaOcxQfxbBEaRZMvu+LXwY/TyQMNGxJtrYCyIR+X0nfl00UL
	nbSqr6vjxSzMKcIayJ6pIusXGBa0eGt0UXvj3Y9hKbStlZMGbe5ve2NAC7/PwI94c1PbcmZZU0MT6
	UaxpAvTm651kwuwSvRAN1gkB4TDRVNZ/BVutv3tWMCMdVFaBV8TI5gkrrJyi/lhHM7ywB4mkT/q24
	q/lHACCOb6JH5k6qPoQ4Byx11pJOuQezR6gXQsrPQv2OyXF9q80KELR0TVHfUGKQbAmduLIruj0du
	RBlZto8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGQkS-0004Gk-B2; Mon, 23 Mar 2020 17:20:24 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGQjb-0003nA-9D
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 17:19:34 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DB1F220184A;
 Mon, 23 Mar 2020 18:19:29 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CE7292012E7;
 Mon, 23 Mar 2020 18:19:29 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 528452035C;
 Mon, 23 Mar 2020 18:19:29 +0100 (CET)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: kvm@vger.kernel.org, alex.williamson@redhat.com, laurentiu.tudor@nxp.com,
 linux-arm-kernel@lists.infradead.org, bharatb.yadav@gmail.com
Subject: [PATCH 5/9] vfio/fsl-mc: Allow userspace to MMAP fsl-mc device MMIO
 regions
Date: Mon, 23 Mar 2020 19:19:07 +0200
Message-Id: <20200323171911.27178-6-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323171911.27178-1-diana.craciun@oss.nxp.com>
References: <20200323171911.27178-1-diana.craciun@oss.nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_101931_624228_7AF1DA6B 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Bharat Bhushan <Bharat.Bhushan@nxp.com>, linux-kernel@vger.kernel.org,
 Diana Craciun <diana.craciun@oss.nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow userspace to mmap device regions for direct access of
fsl-mc devices.

Signed-off-by: Bharat Bhushan <Bharat.Bhushan@nxp.com>
Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/vfio/fsl-mc/vfio_fsl_mc.c         | 64 ++++++++++++++++++++++-
 drivers/vfio/fsl-mc/vfio_fsl_mc_private.h |  2 +
 2 files changed, 64 insertions(+), 2 deletions(-)

diff --git a/drivers/vfio/fsl-mc/vfio_fsl_mc.c b/drivers/vfio/fsl-mc/vfio_fsl_mc.c
index 094df3aa3710..6625b7cb0a3e 100644
--- a/drivers/vfio/fsl-mc/vfio_fsl_mc.c
+++ b/drivers/vfio/fsl-mc/vfio_fsl_mc.c
@@ -31,7 +31,11 @@ static int vfio_fsl_mc_regions_init(struct vfio_fsl_mc_device *vdev)
 
 		vdev->regions[i].addr = res->start;
 		vdev->regions[i].size = PAGE_ALIGN((resource_size(res)));
-		vdev->regions[i].flags = 0;
+		vdev->regions[i].flags = VFIO_REGION_INFO_FLAG_MMAP;
+		vdev->regions[i].flags |= VFIO_REGION_INFO_FLAG_READ;
+		if (!(mc_dev->regions[i].flags & IORESOURCE_READONLY))
+			vdev->regions[i].flags |= VFIO_REGION_INFO_FLAG_WRITE;
+		vdev->regions[i].type = mc_dev->regions[i].flags & IORESOURCE_BITS;
 	}
 
 	vdev->num_regions = mc_dev->obj_desc.region_count;
@@ -163,9 +167,65 @@ static ssize_t vfio_fsl_mc_write(void *device_data, const char __user *buf,
 	return -EINVAL;
 }
 
+static int vfio_fsl_mc_mmap_mmio(struct vfio_fsl_mc_region region,
+				 struct vm_area_struct *vma)
+{
+	u64 size = vma->vm_end - vma->vm_start;
+	u64 pgoff, base;
+
+	pgoff = vma->vm_pgoff &
+		((1U << (VFIO_FSL_MC_OFFSET_SHIFT - PAGE_SHIFT)) - 1);
+	base = pgoff << PAGE_SHIFT;
+
+	if (region.size < PAGE_SIZE || base + size > region.size)
+		return -EINVAL;
+
+	if (!(region.type & VFIO_DPRC_REGION_CACHEABLE))
+		vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
+
+	vma->vm_pgoff = (region.addr >> PAGE_SHIFT) + pgoff;
+
+	return remap_pfn_range(vma, vma->vm_start, vma->vm_pgoff,
+			       size, vma->vm_page_prot);
+}
+
 static int vfio_fsl_mc_mmap(void *device_data, struct vm_area_struct *vma)
 {
-	return -EINVAL;
+	struct vfio_fsl_mc_device *vdev = device_data;
+	struct fsl_mc_device *mc_dev = vdev->mc_dev;
+	unsigned long size, addr;
+	int index;
+
+	index = vma->vm_pgoff >> (VFIO_FSL_MC_OFFSET_SHIFT - PAGE_SHIFT);
+
+	if (vma->vm_end < vma->vm_start)
+		return -EINVAL;
+	if (vma->vm_start & ~PAGE_MASK)
+		return -EINVAL;
+	if (vma->vm_end & ~PAGE_MASK)
+		return -EINVAL;
+	if (!(vma->vm_flags & VM_SHARED))
+		return -EINVAL;
+	if (index >= vdev->num_regions)
+		return -EINVAL;
+
+	if (!(vdev->regions[index].flags & VFIO_REGION_INFO_FLAG_MMAP))
+		return -EINVAL;
+
+	if (!(vdev->regions[index].flags & VFIO_REGION_INFO_FLAG_READ)
+			&& (vma->vm_flags & VM_READ))
+		return -EINVAL;
+
+	if (!(vdev->regions[index].flags & VFIO_REGION_INFO_FLAG_WRITE)
+			&& (vma->vm_flags & VM_WRITE))
+		return -EINVAL;
+
+	addr = vdev->regions[index].addr;
+	size = vdev->regions[index].size;
+
+	vma->vm_private_data = mc_dev;
+
+	return vfio_fsl_mc_mmap_mmio(vdev->regions[index], vma);
 }
 
 static int vfio_fsl_mc_init_device(struct vfio_fsl_mc_device *vdev)
diff --git a/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h b/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
index 764e2cf2c70d..e2a0ccdd8242 100644
--- a/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
+++ b/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
@@ -15,6 +15,8 @@
 #define VFIO_FSL_MC_INDEX_TO_OFFSET(index)	\
 	((u64)(index) << VFIO_FSL_MC_OFFSET_SHIFT)
 
+#define VFIO_DPRC_REGION_CACHEABLE	0x00000001
+
 struct vfio_fsl_mc_region {
 	u32			flags;
 	u32			type;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
