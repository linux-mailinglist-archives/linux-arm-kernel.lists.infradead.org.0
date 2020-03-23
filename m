Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B2018FB42
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 18:20:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d3UPDAZaHHjEbdpcy0G9F5G75cqtR96eq/Ll5faCKCo=; b=Mj6hwo5+14Ire2zvDy53sXqlty
	Mo+Hn0FVDf6N4dlgw+0GRG4F1bgL1919akNZ+Vxdq6GgHOwM1MxyCRfuPh4fSPu8NhZLomEODJXzp
	RcHOVMGgzH/+pIuxNW0spFpS5dedesPxUTmXw6klN7pOnQAIwqeO7FIm4TPxhGrxXkxUfP0d5ih8/
	h4d6yhWtff86khih4fgexfmXpQArxbAIVIFT+Mxg9A2Jo7k/WJnH6m/8ibANJ0yCH2Cx48Wg0nM6h
	hBEhUkmahXBCjmci+Wjyl9sgVreGU9KiUxGi8wM0f0LSkOqsRdnLxdhyp8vLudouXc2uc5k9NxISp
	pC5LTMTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGQk4-0003xV-5e; Mon, 23 Mar 2020 17:20:00 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGQjb-0003n8-9C
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 17:19:32 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9B313201848;
 Mon, 23 Mar 2020 18:19:28 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8E2A52012E7;
 Mon, 23 Mar 2020 18:19:28 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id F12E62035C;
 Mon, 23 Mar 2020 18:19:27 +0100 (CET)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: kvm@vger.kernel.org, alex.williamson@redhat.com, laurentiu.tudor@nxp.com,
 linux-arm-kernel@lists.infradead.org, bharatb.yadav@gmail.com
Subject: [PATCH 3/9] vfio/fsl-mc: Implement VFIO_DEVICE_GET_INFO ioctl
Date: Mon, 23 Mar 2020 19:19:05 +0200
Message-Id: <20200323171911.27178-4-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323171911.27178-1-diana.craciun@oss.nxp.com>
References: <20200323171911.27178-1-diana.craciun@oss.nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_101931_457021_368D4ACC 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
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

Allow userspace to get fsl-mc device info (number of regions
and irqs).

Signed-off-by: Bharat Bhushan <Bharat.Bhushan@nxp.com>
Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/vfio/fsl-mc/vfio_fsl_mc.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/vfio/fsl-mc/vfio_fsl_mc.c b/drivers/vfio/fsl-mc/vfio_fsl_mc.c
index 5cc533808bc1..ab1cde375fc6 100644
--- a/drivers/vfio/fsl-mc/vfio_fsl_mc.c
+++ b/drivers/vfio/fsl-mc/vfio_fsl_mc.c
@@ -31,10 +31,30 @@ static void vfio_fsl_mc_release(void *device_data)
 static long vfio_fsl_mc_ioctl(void *device_data, unsigned int cmd,
 			      unsigned long arg)
 {
+	unsigned long minsz;
+	struct vfio_fsl_mc_device *vdev = device_data;
+	struct fsl_mc_device *mc_dev = vdev->mc_dev;
+
 	switch (cmd) {
 	case VFIO_DEVICE_GET_INFO:
 	{
-		return -EINVAL;
+		struct vfio_device_info info;
+
+		minsz = offsetofend(struct vfio_device_info, num_irqs);
+
+		if (copy_from_user(&info, (void __user *)arg, minsz))
+			return -EFAULT;
+
+		if (info.argsz < minsz)
+			return -EINVAL;
+
+		info.flags = VFIO_DEVICE_FLAGS_FSL_MC;
+		info.num_regions = mc_dev->obj_desc.region_count;
+		info.num_irqs = mc_dev->obj_desc.irq_count;
+
+		return copy_to_user((void __user *)arg, &info, minsz) ?
+			-EFAULT : 0;
+
 	}
 	case VFIO_DEVICE_GET_REGION_INFO:
 	{
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
