Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A63818FB38
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 18:19:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qVEp4rBB/9U3S+rIy7TTv07ONRpv0k2ND4lRtAeOpKM=; b=g68sTma2Sm74RcGAv5EhVneHCR
	q7m4r5f5G6tmJ3r02nkgSRIPHxaSw8w2OY0EJHupAMlarnMIu+PqXDPSZWnB5P47oP6M42kU2c50W
	ooNOlPmdUaYFUPdCWfK1PG37BrLD7c+5E1o1iT6DcyR2Ij3mRfbCUjDVVda6lcbNSezOJcGMZ6pB4
	evAjvgelOPIHgz+5s07KpC87jIvyaFZ2IPoP8MN2BI2AsQpLxqOP0uMUN4ere6IBqEJmG4hlpz3Ox
	jzXz/41KGXsvOzqolygkq+gynYuSWpkbrDzalwlxxTv1o1NNCAyovE2XQ4MS7QPx1sUVXEG4olG1e
	vTnIPitA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGQjk-0003pr-Dk; Mon, 23 Mar 2020 17:19:40 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGQja-0003n5-SZ
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 17:19:32 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E38D91A14D4;
 Mon, 23 Mar 2020 18:19:27 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D73871A14A9;
 Mon, 23 Mar 2020 18:19:27 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 599792035C;
 Mon, 23 Mar 2020 18:19:27 +0100 (CET)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: kvm@vger.kernel.org, alex.williamson@redhat.com, laurentiu.tudor@nxp.com,
 linux-arm-kernel@lists.infradead.org, bharatb.yadav@gmail.com
Subject: [PATCH 2/9] vfio/fsl-mc: Scan DPRC objects on vfio-fsl-mc driver bind
Date: Mon, 23 Mar 2020 19:19:04 +0200
Message-Id: <20200323171911.27178-3-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323171911.27178-1-diana.craciun@oss.nxp.com>
References: <20200323171911.27178-1-diana.craciun@oss.nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_101931_203329_539AE6B7 
X-CRM114-Status: GOOD (  11.19  )
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
Cc: Bharat Bhushan <Bharat.Bhushan@nxp.com>, linux-kernel@vger.kernel.org,
 Diana Craciun <diana.craciun@oss.nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DPRC (Data Path Resource Container) device is a bus device and has
child devices attached to it. When the vfio-fsl-mc driver is probed
the DPRC is scanned and the child devices discovered and initialized.

Signed-off-by: Bharat Bhushan <Bharat.Bhushan@nxp.com>
Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/vfio/fsl-mc/vfio_fsl_mc.c | 66 +++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/drivers/vfio/fsl-mc/vfio_fsl_mc.c b/drivers/vfio/fsl-mc/vfio_fsl_mc.c
index 320fb09b5691..5cc533808bc1 100644
--- a/drivers/vfio/fsl-mc/vfio_fsl_mc.c
+++ b/drivers/vfio/fsl-mc/vfio_fsl_mc.c
@@ -74,6 +74,34 @@ static int vfio_fsl_mc_mmap(void *device_data, struct vm_area_struct *vma)
 	return -EINVAL;
 }
 
+static int vfio_fsl_mc_init_device(struct vfio_fsl_mc_device *vdev)
+{
+	struct fsl_mc_device *mc_dev = vdev->mc_dev;
+	int ret = 0;
+
+	/* Non-dprc devices share mc_io from parent */
+	if (!is_fsl_mc_bus_dprc(mc_dev)) {
+		struct fsl_mc_device *mc_cont = to_fsl_mc_device(mc_dev->dev.parent);
+
+		mc_dev->mc_io = mc_cont->mc_io;
+		return 0;
+	}
+
+	/* open DPRC, allocate a MC portal */
+	ret = dprc_setup(mc_dev);
+	if (ret < 0) {
+		dev_err(&mc_dev->dev, "Failed to setup DPRC (error = %d)\n", ret);
+		return ret;
+	}
+
+	ret = dprc_scan_container(mc_dev, mc_dev->driver_override, false);
+	if (ret < 0) {
+		dev_err(&mc_dev->dev, "Container scanning failed: %d\n", ret);
+		dprc_cleanup(mc_dev);
+	}
+
+	return 0;
+}
 static const struct vfio_device_ops vfio_fsl_mc_ops = {
 	.name		= "vfio-fsl-mc",
 	.open		= vfio_fsl_mc_open,
@@ -112,9 +140,42 @@ static int vfio_fsl_mc_probe(struct fsl_mc_device *mc_dev)
 		return ret;
 	}
 
+	ret = vfio_fsl_mc_init_device(vdev);
+	if (ret) {
+		vfio_iommu_group_put(group, dev);
+		return ret;
+	}
+
 	return ret;
 }
 
+static int vfio_fsl_mc_device_remove(struct device *dev, void *data)
+{
+	struct fsl_mc_device *mc_dev;
+
+	WARN_ON(!dev);
+	mc_dev = to_fsl_mc_device(dev);
+	if (WARN_ON(!mc_dev))
+		return -ENODEV;
+
+	kfree(mc_dev->driver_override);
+	mc_dev->driver_override = NULL;
+
+	/*
+	 * The device-specific remove callback will get invoked by device_del()
+	 */
+	device_del(&mc_dev->dev);
+	put_device(&mc_dev->dev);
+
+	return 0;
+}
+
+static void vfio_fsl_mc_cleanup_dprc(struct fsl_mc_device *mc_dev)
+{
+	device_for_each_child(&mc_dev->dev, NULL, vfio_fsl_mc_device_remove);
+	dprc_cleanup(mc_dev);
+}
+
 static int vfio_fsl_mc_remove(struct fsl_mc_device *mc_dev)
 {
 	struct vfio_fsl_mc_device *vdev;
@@ -124,6 +185,11 @@ static int vfio_fsl_mc_remove(struct fsl_mc_device *mc_dev)
 	if (!vdev)
 		return -EINVAL;
 
+	if (is_fsl_mc_bus_dprc(mc_dev))
+		vfio_fsl_mc_cleanup_dprc(vdev->mc_dev);
+
+	mc_dev->mc_io = NULL;
+
 	vfio_iommu_group_put(mc_dev->dev.iommu_group, dev);
 	devm_kfree(dev, vdev);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
