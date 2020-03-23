Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C7818FB51
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 18:20:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fbyDB25yuCMAVudjjWQ91vyPvnAVgOnZP7/u8eBh61w=; b=DKaa9Ybp8CzplusyiLMPCVT+o4
	2+aHmCvxd2y4PAL0bhzih5sOB6oqVyTNOVrUdBInGGOBtJvfALaVYKff4WtL9oKIqPB9/KRw0xeS2
	i6Y1hYYFOiO7KfjbuGYr7Old1cS6A6FbYWDuAaJqotEivNtyUk8lp0WBZabmop4sinUSVKrBAV5Se
	98smSXh9TkdsCrd3KkWXtj3WqvzWeEOUN89VHDa7m2F5Nf/3Qzt4aBC7phVBTtyYgBeQpHQKUaR8g
	AfuD2x1jx4dGVF8bI3MTTo3qO+rQv8MZ+IRdlmD7TP38CBM5HkfIAAe1ULRqePtBb1LCQd1oYH7a5
	c4OM5xuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGQkr-0005y1-1I; Mon, 23 Mar 2020 17:20:49 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGQjb-0003n9-9A
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 17:19:34 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4603820183C;
 Mon, 23 Mar 2020 18:19:29 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 390812012E7;
 Mon, 23 Mar 2020 18:19:29 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id A83612035C;
 Mon, 23 Mar 2020 18:19:28 +0100 (CET)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: kvm@vger.kernel.org, alex.williamson@redhat.com, laurentiu.tudor@nxp.com,
 linux-arm-kernel@lists.infradead.org, bharatb.yadav@gmail.com
Subject: [PATCH 4/9] vfio/fsl-mc: Implement VFIO_DEVICE_GET_REGION_INFO ioctl
 call
Date: Mon, 23 Mar 2020 19:19:06 +0200
Message-Id: <20200323171911.27178-5-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323171911.27178-1-diana.craciun@oss.nxp.com>
References: <20200323171911.27178-1-diana.craciun@oss.nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_101931_613428_5D35E141 
X-CRM114-Status: GOOD (  12.20  )
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

Expose to userspace information about the memory regions.

Signed-off-by: Bharat Bhushan <Bharat.Bhushan@nxp.com>
Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/vfio/fsl-mc/vfio_fsl_mc.c         | 77 ++++++++++++++++++++++-
 drivers/vfio/fsl-mc/vfio_fsl_mc_private.h | 19 ++++++
 2 files changed, 95 insertions(+), 1 deletion(-)

diff --git a/drivers/vfio/fsl-mc/vfio_fsl_mc.c b/drivers/vfio/fsl-mc/vfio_fsl_mc.c
index ab1cde375fc6..094df3aa3710 100644
--- a/drivers/vfio/fsl-mc/vfio_fsl_mc.c
+++ b/drivers/vfio/fsl-mc/vfio_fsl_mc.c
@@ -15,16 +15,71 @@
 
 #include "vfio_fsl_mc_private.h"
 
+static int vfio_fsl_mc_regions_init(struct vfio_fsl_mc_device *vdev)
+{
+	struct fsl_mc_device *mc_dev = vdev->mc_dev;
+	int count = mc_dev->obj_desc.region_count;
+	int i;
+
+	vdev->regions = kcalloc(count, sizeof(struct vfio_fsl_mc_region),
+				GFP_KERNEL);
+	if (!vdev->regions)
+		return -ENOMEM;
+
+	for (i = 0; i < count; i++) {
+		struct resource *res = &mc_dev->regions[i];
+
+		vdev->regions[i].addr = res->start;
+		vdev->regions[i].size = PAGE_ALIGN((resource_size(res)));
+		vdev->regions[i].flags = 0;
+	}
+
+	vdev->num_regions = mc_dev->obj_desc.region_count;
+	return 0;
+}
+
+static void vfio_fsl_mc_regions_cleanup(struct vfio_fsl_mc_device *vdev)
+{
+	vdev->num_regions = 0;
+	kfree(vdev->regions);
+}
+
 static int vfio_fsl_mc_open(void *device_data)
 {
+	struct vfio_fsl_mc_device *vdev = device_data;
+	int ret;
+
 	if (!try_module_get(THIS_MODULE))
 		return -ENODEV;
 
+	mutex_lock(&vdev->driver_lock);
+	if (!vdev->refcnt) {
+		ret = vfio_fsl_mc_regions_init(vdev);
+		if (ret)
+			goto err_reg_init;
+	}
+	vdev->refcnt++;
+
+	mutex_unlock(&vdev->driver_lock);
 	return 0;
+
+err_reg_init:
+	mutex_unlock(&vdev->driver_lock);
+	module_put(THIS_MODULE);
+	return ret;
 }
 
 static void vfio_fsl_mc_release(void *device_data)
 {
+	struct vfio_fsl_mc_device *vdev = device_data;
+
+	mutex_lock(&vdev->driver_lock);
+
+	if (!(--vdev->refcnt))
+		vfio_fsl_mc_regions_cleanup(vdev);
+
+	mutex_unlock(&vdev->driver_lock);
+
 	module_put(THIS_MODULE);
 }
 
@@ -58,7 +113,26 @@ static long vfio_fsl_mc_ioctl(void *device_data, unsigned int cmd,
 	}
 	case VFIO_DEVICE_GET_REGION_INFO:
 	{
-		return -EINVAL;
+		struct vfio_region_info info;
+
+		minsz = offsetofend(struct vfio_region_info, offset);
+
+		if (copy_from_user(&info, (void __user *)arg, minsz))
+			return -EFAULT;
+
+		if (info.argsz < minsz)
+			return -EINVAL;
+
+		if (info.index >= vdev->num_regions)
+			return -EINVAL;
+
+		/* map offset to the physical address  */
+		info.offset = VFIO_FSL_MC_INDEX_TO_OFFSET(info.index);
+		info.size = vdev->regions[info.index].size;
+		info.flags = vdev->regions[info.index].flags;
+
+		return copy_to_user((void __user *)arg, &info, minsz);
+
 	}
 	case VFIO_DEVICE_GET_IRQ_INFO:
 	{
@@ -165,6 +239,7 @@ static int vfio_fsl_mc_probe(struct fsl_mc_device *mc_dev)
 		vfio_iommu_group_put(group, dev);
 		return ret;
 	}
+	mutex_init(&vdev->driver_lock);
 
 	return ret;
 }
diff --git a/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h b/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
index b92858a003c0..764e2cf2c70d 100644
--- a/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
+++ b/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
@@ -7,8 +7,27 @@
 #ifndef VFIO_FSL_MC_PRIVATE_H
 #define VFIO_FSL_MC_PRIVATE_H
 
+#define VFIO_FSL_MC_OFFSET_SHIFT    40
+#define VFIO_FSL_MC_OFFSET_MASK (((u64)(1) << VFIO_FSL_MC_OFFSET_SHIFT) - 1)
+
+#define VFIO_FSL_MC_OFFSET_TO_INDEX(off) ((off) >> VFIO_FSL_MC_OFFSET_SHIFT)
+
+#define VFIO_FSL_MC_INDEX_TO_OFFSET(index)	\
+	((u64)(index) << VFIO_FSL_MC_OFFSET_SHIFT)
+
+struct vfio_fsl_mc_region {
+	u32			flags;
+	u32			type;
+	u64			addr;
+	resource_size_t		size;
+};
+
 struct vfio_fsl_mc_device {
 	struct fsl_mc_device		*mc_dev;
+	int				refcnt;
+	u32				num_regions;
+	struct vfio_fsl_mc_region	*regions;
+	struct mutex driver_lock;
 };
 
 #endif /* VFIO_PCI_PRIVATE_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
