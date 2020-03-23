Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FB718FB56
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 18:21:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jSReOwtYb4b+v6DWMSvJgse01/e01OLE2LbEL2+IEFE=; b=WSRMmt/wb2LxAhAdaIOqyJfrZw
	5nziA/ge1J7ZcooWG5uA+kwGmaJAwpAuRfEi0zqEv93lrXppdGB6JKaUiuQUvdNvtQLQ/HoLpXEPg
	gdrjTup8FnilA9vy7ICBBm6VTGJ++sBYu081fPXi8270QdfQejZZTiLD35a7+31uyKzXAciF1TNy0
	SM2r9I999bXMHgh+cRfeF7B649clC0zY2GtDGUBgxIEne1UyOgHkhW2/TzLhfx/9Lw/S3ldsbYM1i
	snZmBzJqr+Xmpbs8X2gpQdDbioabFy7O5pE1Om2+k7WOEFYLbKT0ziBIOKR1eFgD4aoc6TD6wkEEp
	ymd2BZ7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGQlJ-0006Ra-Mx; Mon, 23 Mar 2020 17:21:17 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGQjc-0003nQ-4p
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 17:19:34 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E955B20184D;
 Mon, 23 Mar 2020 18:19:30 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DB0EB2012E7;
 Mon, 23 Mar 2020 18:19:30 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 6E1212035C;
 Mon, 23 Mar 2020 18:19:30 +0100 (CET)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: kvm@vger.kernel.org, alex.williamson@redhat.com, laurentiu.tudor@nxp.com,
 linux-arm-kernel@lists.infradead.org, bharatb.yadav@gmail.com
Subject: [PATCH 7/9] vfio/fsl-mc: Add irq infrastructure for fsl-mc devices
Date: Mon, 23 Mar 2020 19:19:09 +0200
Message-Id: <20200323171911.27178-8-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323171911.27178-1-diana.craciun@oss.nxp.com>
References: <20200323171911.27178-1-diana.craciun@oss.nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_101932_466561_A0634989 
X-CRM114-Status: GOOD (  15.15  )
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

This patch adds the skeleton for interrupt support
for fsl-mc devices. The interrupts are not yet functional,
the functionality will be added by subsequent patches.

Signed-off-by: Bharat Bhushan <Bharat.Bhushan@nxp.com>
Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/vfio/fsl-mc/Makefile              |  6 +-
 drivers/vfio/fsl-mc/vfio_fsl_mc.c         | 71 ++++++++++++++++++++++-
 drivers/vfio/fsl-mc/vfio_fsl_mc_intr.c    | 63 ++++++++++++++++++++
 drivers/vfio/fsl-mc/vfio_fsl_mc_private.h |  5 ++
 4 files changed, 141 insertions(+), 4 deletions(-)
 create mode 100644 drivers/vfio/fsl-mc/vfio_fsl_mc_intr.c

diff --git a/drivers/vfio/fsl-mc/Makefile b/drivers/vfio/fsl-mc/Makefile
index 6f2b80645d5b..cad6dbf0b735 100644
--- a/drivers/vfio/fsl-mc/Makefile
+++ b/drivers/vfio/fsl-mc/Makefile
@@ -1,2 +1,4 @@
-vfio-fsl_mc-y := vfio_fsl_mc.o
-obj-$(CONFIG_VFIO_FSL_MC) += vfio_fsl_mc.o
+# SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+
+vfio-fsl-mc-y := vfio_fsl_mc.o vfio_fsl_mc_intr.o
+obj-$(CONFIG_VFIO_FSL_MC) += vfio-fsl-mc.o
diff --git a/drivers/vfio/fsl-mc/vfio_fsl_mc.c b/drivers/vfio/fsl-mc/vfio_fsl_mc.c
index ea5e81e7791c..4d7baee2e474 100644
--- a/drivers/vfio/fsl-mc/vfio_fsl_mc.c
+++ b/drivers/vfio/fsl-mc/vfio_fsl_mc.c
@@ -210,11 +210,75 @@ static long vfio_fsl_mc_ioctl(void *device_data, unsigned int cmd,
 	}
 	case VFIO_DEVICE_GET_IRQ_INFO:
 	{
-		return -EINVAL;
+		struct vfio_irq_info info;
+
+		minsz = offsetofend(struct vfio_irq_info, count);
+		if (copy_from_user(&info, (void __user *)arg, minsz))
+			return -EFAULT;
+
+		if (info.argsz < minsz)
+			return -EINVAL;
+
+		if (info.index >= mc_dev->obj_desc.irq_count)
+			return -EINVAL;
+
+		info.flags = VFIO_IRQ_INFO_EVENTFD;
+		info.count = 1;
+
+		return copy_to_user((void __user *)arg, &info, minsz);
 	}
 	case VFIO_DEVICE_SET_IRQS:
 	{
-		return -EINVAL;
+		struct vfio_irq_set hdr;
+		u8 *data = NULL;
+		int ret = 0;
+
+		minsz = offsetofend(struct vfio_irq_set, count);
+
+		if (copy_from_user(&hdr, (void __user *)arg, minsz))
+			return -EFAULT;
+
+		if (hdr.argsz < minsz)
+			return -EINVAL;
+
+		if (hdr.index >= mc_dev->obj_desc.irq_count)
+			return -EINVAL;
+
+		if (hdr.start != 0 || hdr.count > 1)
+			return -EINVAL;
+
+		if (hdr.count == 0 &&
+		    (!(hdr.flags & VFIO_IRQ_SET_DATA_NONE) ||
+		    !(hdr.flags & VFIO_IRQ_SET_ACTION_TRIGGER)))
+			return -EINVAL;
+
+		if (hdr.flags & ~(VFIO_IRQ_SET_DATA_TYPE_MASK |
+				  VFIO_IRQ_SET_ACTION_TYPE_MASK))
+			return -EINVAL;
+
+		if (!(hdr.flags & VFIO_IRQ_SET_DATA_NONE)) {
+			size_t size;
+
+			if (hdr.flags & VFIO_IRQ_SET_DATA_BOOL)
+				size = sizeof(uint8_t);
+			else if (hdr.flags & VFIO_IRQ_SET_DATA_EVENTFD)
+				size = sizeof(int32_t);
+			else
+				return -EINVAL;
+
+			if (hdr.argsz - minsz < hdr.count * size)
+				return -EINVAL;
+
+			data = memdup_user((void __user *)(arg + minsz),
+					   hdr.count * size);
+			if (IS_ERR(data))
+				return PTR_ERR(data);
+		}
+
+		ret = vfio_fsl_mc_set_irqs_ioctl(vdev, hdr.flags,
+						 hdr.index, hdr.start,
+						 hdr.count, data);
+		return ret;
 	}
 	case VFIO_DEVICE_RESET:
 	{
@@ -303,6 +367,9 @@ static int vfio_fsl_mc_init_device(struct vfio_fsl_mc_device *vdev)
 	struct fsl_mc_device *mc_dev = vdev->mc_dev;
 	int ret = 0;
 
+	/* innherit the msi domain from parent */
+	dev_set_msi_domain(&mc_dev->dev, dev_get_msi_domain(mc_dev->dev.parent));
+
 	/* Non-dprc devices share mc_io from parent */
 	if (!is_fsl_mc_bus_dprc(mc_dev)) {
 		struct fsl_mc_device *mc_cont = to_fsl_mc_device(mc_dev->dev.parent);
diff --git a/drivers/vfio/fsl-mc/vfio_fsl_mc_intr.c b/drivers/vfio/fsl-mc/vfio_fsl_mc_intr.c
new file mode 100644
index 000000000000..058aa97aa54a
--- /dev/null
+++ b/drivers/vfio/fsl-mc/vfio_fsl_mc_intr.c
@@ -0,0 +1,63 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright 2013-2016 Freescale Semiconductor Inc.
+ * Copyright 2019 NXP
+ */
+
+#include <linux/vfio.h>
+#include <linux/slab.h>
+#include <linux/types.h>
+#include <linux/eventfd.h>
+#include <linux/msi.h>
+
+#include "linux/fsl/mc.h"
+#include "vfio_fsl_mc_private.h"
+
+static int vfio_fsl_mc_irq_mask(struct vfio_fsl_mc_device *vdev,
+				unsigned int index, unsigned int start,
+				unsigned int count, u32 flags,
+				void *data)
+{
+	return -EINVAL;
+}
+
+static int vfio_fsl_mc_irq_unmask(struct vfio_fsl_mc_device *vdev,
+				unsigned int index, unsigned int start,
+				unsigned int count, u32 flags,
+				void *data)
+{
+	return -EINVAL;
+}
+
+static int vfio_fsl_mc_set_irq_trigger(struct vfio_fsl_mc_device *vdev,
+				       unsigned int index, unsigned int start,
+				       unsigned int count, u32 flags,
+				       void *data)
+{
+	return -EINVAL;
+}
+
+int vfio_fsl_mc_set_irqs_ioctl(struct vfio_fsl_mc_device *vdev,
+			       u32 flags, unsigned int index,
+			       unsigned int start, unsigned int count,
+			       void *data)
+{
+	int ret = -ENOTTY;
+
+	switch (flags & VFIO_IRQ_SET_ACTION_TYPE_MASK) {
+	case VFIO_IRQ_SET_ACTION_MASK:
+		ret = vfio_fsl_mc_irq_mask(vdev, index, start, count,
+					   flags, data);
+		break;
+	case VFIO_IRQ_SET_ACTION_UNMASK:
+		ret = vfio_fsl_mc_irq_unmask(vdev, index, start, count,
+					     flags, data);
+		break;
+	case VFIO_IRQ_SET_ACTION_TRIGGER:
+		ret = vfio_fsl_mc_set_irq_trigger(vdev, index, start,
+						  count, flags, data);
+		break;
+	}
+
+	return ret;
+}
diff --git a/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h b/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
index d072cccd93e0..0c7506e43880 100644
--- a/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
+++ b/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
@@ -37,4 +37,9 @@ struct vfio_fsl_mc_device {
 	struct vfio_fsl_mc_reflck   *reflck;
 };
 
+extern int vfio_fsl_mc_set_irqs_ioctl(struct vfio_fsl_mc_device *vdev,
+			       u32 flags, unsigned int index,
+			       unsigned int start, unsigned int count,
+			       void *data);
+
 #endif /* VFIO_PCI_PRIVATE_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
