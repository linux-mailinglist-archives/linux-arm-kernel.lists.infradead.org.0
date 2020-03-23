Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FF918FB59
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 18:21:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cTZmTmMbylRy+aAsjDDldGcDvMEUBs4N1h6Hy6qPGCU=; b=tNLiiCImg8z7eBwErLcIA4x0zo
	snglgBzBfb6CS3+mIONW4Z4Swmla918vkYgednqqX1dMBPsNry5V0byz5CsUp3z6mGIGk8waV2dGn
	P6lLtvJcDHPQvOOwUk2SDQp9khIgICg0B/ngADXDKNnq+CzPEdhDv0bwFtI7Bni9dt5Pq1nt+6A22
	fTtsrNL2+eoOFtVHa+Zj3udt6m+5yxjtpPBtcKrZm8BdX3/vd4vgzX46fRWC/OngaX/dXBGZgd9ts
	eh7I7FtnoPl0JMXfHSJLPT0/m0YKhaorfMuFwdmkm7+CbmINhoUZPmNgACiwCxU7F9RXObxN2xkdd
	Vu/LWTAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGQli-0006uh-8t; Mon, 23 Mar 2020 17:21:42 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGQjd-0003pO-OM
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 17:19:37 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0A0CE1A18A0;
 Mon, 23 Mar 2020 18:19:32 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id F189B1A14C9;
 Mon, 23 Mar 2020 18:19:31 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 7E2742035C;
 Mon, 23 Mar 2020 18:19:31 +0100 (CET)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: kvm@vger.kernel.org, alex.williamson@redhat.com, laurentiu.tudor@nxp.com,
 linux-arm-kernel@lists.infradead.org, bharatb.yadav@gmail.com
Subject: [PATCH 9/9] vfio/fsl-mc: Add read/write support for fsl-mc devices
Date: Mon, 23 Mar 2020 19:19:11 +0200
Message-Id: <20200323171911.27178-10-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323171911.27178-1-diana.craciun@oss.nxp.com>
References: <20200323171911.27178-1-diana.craciun@oss.nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_101934_069775_FE4D2182 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Diana Craciun <diana.craciun@nxp.com>,
 Bharat Bhushan <Bharat.Bhushan@nxp.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Diana Craciun <diana.craciun@nxp.com>

The software uses a memory-mapped I/O command interface (MC portals) to
communicate with the MC hardware. This command interface is used to
discover, enumerate, configure and remove DPAA2 objects. The DPAA2
objects use MSIs, so the command interface needs to be emulated
such that the correct MSI is configured in the hardware (the guest
has the virtual MSIs).

This patch is adding read/write support for fsl-mc devices. The mc
commands are emulated by the userspace. The host is just passing
the correct command to the hardware.

Also the current patch limits userspace to write complete
64byte command once and read 64byte response by one ioctl.

Signed-off-by: Bharat Bhushan <Bharat.Bhushan@nxp.com>
Signed-off-by: Diana Craciun <diana.craciun@nxp.com>
---
 drivers/vfio/fsl-mc/vfio_fsl_mc.c         | 122 +++++++++++++++++++++-
 drivers/vfio/fsl-mc/vfio_fsl_mc_private.h |   1 +
 2 files changed, 121 insertions(+), 2 deletions(-)

diff --git a/drivers/vfio/fsl-mc/vfio_fsl_mc.c b/drivers/vfio/fsl-mc/vfio_fsl_mc.c
index ceb9d6b06624..107b4ab7b2d8 100644
--- a/drivers/vfio/fsl-mc/vfio_fsl_mc.c
+++ b/drivers/vfio/fsl-mc/vfio_fsl_mc.c
@@ -12,6 +12,7 @@
 #include <linux/types.h>
 #include <linux/vfio.h>
 #include <linux/fsl/mc.h>
+#include <linux/delay.h>
 
 #include "vfio_fsl_mc_private.h"
 
@@ -114,6 +115,11 @@ static int vfio_fsl_mc_regions_init(struct vfio_fsl_mc_device *vdev)
 
 static void vfio_fsl_mc_regions_cleanup(struct vfio_fsl_mc_device *vdev)
 {
+	int i;
+
+	for (i = 0; i < vdev->num_regions; i++)
+		iounmap(vdev->regions[i].ioaddr);
+
 	vdev->num_regions = 0;
 	kfree(vdev->regions);
 }
@@ -307,13 +313,125 @@ static long vfio_fsl_mc_ioctl(void *device_data, unsigned int cmd,
 static ssize_t vfio_fsl_mc_read(void *device_data, char __user *buf,
 				size_t count, loff_t *ppos)
 {
-	return -EINVAL;
+	struct vfio_fsl_mc_device *vdev = device_data;
+	unsigned int index = VFIO_FSL_MC_OFFSET_TO_INDEX(*ppos);
+	loff_t off = *ppos & VFIO_FSL_MC_OFFSET_MASK;
+	struct vfio_fsl_mc_region *region;
+	u64 data[8];
+	int i;
+
+	/* Read ioctl supported only for DPRC and DPMCP device */
+	if (strcmp(vdev->mc_dev->obj_desc.type, "dprc") &&
+	    strcmp(vdev->mc_dev->obj_desc.type, "dpmcp"))
+		return -EINVAL;
+
+	if (index >= vdev->num_regions)
+		return -EINVAL;
+
+	region = &vdev->regions[index];
+
+	if (!(region->flags & VFIO_REGION_INFO_FLAG_READ))
+		return -EINVAL;
+
+	if (!region->ioaddr) {
+		region->ioaddr = ioremap(region->addr, region->size);
+		if (!region->ioaddr)
+			return -ENOMEM;
+	}
+
+	if (count != 64 || off != 0)
+		return -EINVAL;
+
+	for (i = 7; i >= 0; i--)
+		data[i] = readq(region->ioaddr + i * sizeof(uint64_t));
+
+	if (copy_to_user(buf, data, 64))
+		return -EFAULT;
+
+	return count;
+}
+
+#define MC_CMD_COMPLETION_TIMEOUT_MS    5000
+#define MC_CMD_COMPLETION_POLLING_MAX_SLEEP_USECS    500
+
+static int vfio_fsl_mc_send_command(void __iomem *ioaddr, uint64_t *cmd_data)
+{
+	int i;
+	enum mc_cmd_status status;
+	unsigned long timeout_usecs = MC_CMD_COMPLETION_TIMEOUT_MS * 1000;
+
+	/* Write at command parameter into portal */
+	for (i = 7; i >= 1; i--)
+		writeq_relaxed(cmd_data[i], ioaddr + i * sizeof(uint64_t));
+
+	/* Write command header in the end */
+	writeq(cmd_data[0], ioaddr);
+
+	/* Wait for response before returning to user-space
+	 * This can be optimized in future to even prepare response
+	 * before returning to user-space and avoid read ioctl.
+	 */
+	for (;;) {
+		u64 header;
+		struct mc_cmd_header *resp_hdr;
+
+		header = cpu_to_le64(readq_relaxed(ioaddr));
+
+		resp_hdr = (struct mc_cmd_header *)&header;
+		status = (enum mc_cmd_status)resp_hdr->status;
+		if (status != MC_CMD_STATUS_READY)
+			break;
+
+		udelay(MC_CMD_COMPLETION_POLLING_MAX_SLEEP_USECS);
+		timeout_usecs -= MC_CMD_COMPLETION_POLLING_MAX_SLEEP_USECS;
+		if (timeout_usecs == 0)
+			return -ETIMEDOUT;
+	}
+
+	return 0;
 }
 
 static ssize_t vfio_fsl_mc_write(void *device_data, const char __user *buf,
 				 size_t count, loff_t *ppos)
 {
-	return -EINVAL;
+	struct vfio_fsl_mc_device *vdev = device_data;
+	unsigned int index = VFIO_FSL_MC_OFFSET_TO_INDEX(*ppos);
+	loff_t off = *ppos & VFIO_FSL_MC_OFFSET_MASK;
+	struct vfio_fsl_mc_region *region;
+	u64 data[8];
+	int ret;
+
+	/* Write ioctl supported only for DPRC and DPMCP device */
+	if (strcmp(vdev->mc_dev->obj_desc.type, "dprc") &&
+	    strcmp(vdev->mc_dev->obj_desc.type, "dpmcp"))
+		return -EINVAL;
+
+	if (index >= vdev->num_regions)
+		return -EINVAL;
+
+	region = &vdev->regions[index];
+
+	if (!(region->flags & VFIO_REGION_INFO_FLAG_WRITE))
+		return -EINVAL;
+
+	if (!region->ioaddr) {
+		region->ioaddr = ioremap(region->addr, region->size);
+		if (!region->ioaddr)
+			return -ENOMEM;
+	}
+
+	if (count != 64 || off != 0)
+		return -EINVAL;
+
+	if (copy_from_user(&data, buf, 64))
+		return -EFAULT;
+
+	ret = vfio_fsl_mc_send_command(region->ioaddr, data);
+	if (ret)
+		return ret;
+
+	return count;
+
 }
 
 static int vfio_fsl_mc_mmap_mmio(struct vfio_fsl_mc_region region,
diff --git a/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h b/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
index cac0b205c3d4..70824c4b10d6 100644
--- a/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
+++ b/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
@@ -34,6 +34,7 @@ struct vfio_fsl_mc_region {
 	u32			type;
 	u64			addr;
 	resource_size_t		size;
+	void __iomem		*ioaddr;
 };
 
 struct vfio_fsl_mc_device {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
