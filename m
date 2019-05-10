Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A114D1968C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 04:04:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TGl1it+utkU0wcnY9vfhXhZ5zgHMoVDszj/L0A37cA0=; b=kHRF9h8Yk2Wk5u
	w6gh86poGRAuH5ZknspYp/Te3O4Pquji7qw7nc/9WUyYa8a6x5bcEKHZ7+8mFximSyJK++GCKqeMC
	t7Ujr9jXMgMLgowo86PG3Ll8a6oxXNXi2LbebhzCiH3Zr1/vRTNOfIViZWCMWesNgPTZXz6F2MzSr
	Aik/JutDxEOTJUrAz1midbG3qJExnkmWC+q5w/nS71r8A2xGSXadndA10ELfSXAZeSQ311LewyRS+
	4WJVqTB1Acb2SgreBSqrnF24iwgN5j8CUdFwx5wI356iezbFQuceQq+7gQQ+V3yqFihI5MBM2yP9o
	PMNQUNeQo2bCvvVkAMBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOutQ-0005of-0M; Fri, 10 May 2019 02:04:12 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOusR-0004mr-5y; Fri, 10 May 2019 02:03:13 +0000
X-UUID: df5610a2c37e4673b5d7b1a234b29868-20190509
X-UUID: df5610a2c37e4673b5d7b1a234b29868-20190509
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2112099419; Thu, 09 May 2019 18:03:05 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 9 May 2019 19:03:03 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 10:03:02 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 10 May 2019 10:03:02 +0800
From: Jungo Lin <jungo.lin@mediatek.com>
To: <tfiga@chromium.org>, <hans.verkuil@cisco.com>,
 <laurent.pinchart+renesas@ideasonboard.com>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC,V2,07/11] media: platform: Add Mediatek ISP P1 private control
Date: Fri, 10 May 2019 09:58:00 +0800
Message-ID: <20190510015755.51495-8-jungo.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <Jungo Lin <jungo.lin@mediatek.com>
References: <Jungo Lin <jungo.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_190311_221985_C9BA7E37 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Reply-To: Jungo Lin <jungo.lin@mediatek.com>
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 suleiman@chromium.org, Rynn.Wu@mediatek.com, srv_heupstream@mediatek.com,
 ryan.yu@mediatek.com, Jerry-ch.Chen@mediatek.com, frankie.chiu@mediatek.com,
 Jungo Lin <jungo.lin@mediatek.com>, sj.huang@mediatek.com, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, seraph.huang@mediatek.com,
 zwisler@chromium.org, christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reserved Mediatek ISP P1 private control number with 16.
Moreover, add two private controls for ISP P1 user space
usage.

1. V4L2_CID_PRIVATE_GET_BIN_INFO
- Provide the image output width & height in case
camera binning mode is enabled.

2. V4L2_CID_PRIVATE_RAW_PATH
- Export the path control of the main stream to user space.
One is pure raw and the other is processing raw.
The default image path is pure raw.

Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
---
 .../mtk-isp/isp_50/cam/mtk_cam-ctrl.c         | 133 ++++++++++++++++++
 .../mtk-isp/isp_50/cam/mtk_cam-ctrl.h         |  32 +++++
 include/uapi/linux/v4l2-controls.h            |   4 +
 3 files changed, 169 insertions(+)
 create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.c
 create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.h

diff --git a/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.c b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.c
new file mode 100644
index 000000000000..520adbe367ed
--- /dev/null
+++ b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.c
@@ -0,0 +1,133 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2018 MediaTek Inc.
+ * Author: Ryan Yu <ryan.yu@mediatek.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ */
+
+#include <linux/device.h>
+#include <linux/platform_device.h>
+#include "mtk_cam-dev.h"
+#include "mtk_cam-ctrl.h"
+#include "mtk_cam.h"
+
+static int handle_ctrl_get_bin_info(struct v4l2_ctrl *ctrl)
+{
+	struct mtk_cam_dev *cam_dev = ctrl->priv;
+	const unsigned int idx = MTK_CAM_P1_MAIN_STREAM_OUT;
+	struct v4l2_format *imgo_fmt = &cam_dev->mem2mem2_nodes[idx].vdev_fmt;
+	unsigned int width, height;
+
+	width = imgo_fmt->fmt.pix_mp.width;
+	height = imgo_fmt->fmt.pix_mp.height;
+
+	dev_dbg(&cam_dev->pdev->dev, "Get bin info w*h:%d*%d",
+		width, height);
+
+	ctrl->val = (width << 16) | height;
+
+	return 0;
+}
+
+static int handle_ctrl_get_raw_path(struct v4l2_ctrl *ctrl)
+{
+	struct mtk_cam_dev *cam_dev = ctrl->priv;
+	struct isp_p1_device *p1_dev = get_p1_device(&cam_dev->pdev->dev);
+
+	ctrl->val = p1_dev->isp_ctx.isp_raw_path;
+
+	dev_dbg(&cam_dev->pdev->dev, "Get raw path:%d", ctrl->val);
+
+	return 0;
+}
+
+static int handle_ctrl_set_raw_path(struct v4l2_ctrl *ctrl)
+{
+	struct mtk_cam_dev *cam_dev = ctrl->priv;
+	struct isp_p1_device *p1_dev = get_p1_device(&cam_dev->pdev->dev);
+
+	p1_dev->isp_ctx.isp_raw_path = ctrl->val;
+	dev_dbg(&cam_dev->pdev->dev, "Set raw path:%d", ctrl->val);
+	return 0;
+}
+
+static int mtk_cam_dev_g_ctrl(struct v4l2_ctrl *ctrl)
+{
+	switch (ctrl->id) {
+	case V4L2_CID_PRIVATE_GET_BIN_INFO:
+		handle_ctrl_get_bin_info(ctrl);
+		break;
+	case V4L2_CID_PRIVATE_RAW_PATH:
+		handle_ctrl_get_raw_path(ctrl);
+		break;
+	default:
+		return -EINVAL;
+	}
+	return 0;
+}
+
+static int mtk_cam_dev_s_ctrl(struct v4l2_ctrl *ctrl)
+{
+	switch (ctrl->id) {
+	case V4L2_CID_PRIVATE_RAW_PATH:
+		return handle_ctrl_set_raw_path(ctrl);
+	default:
+		return -EINVAL;
+	}
+}
+
+static const struct v4l2_ctrl_ops mtk_cam_dev_ctrl_ops = {
+	.g_volatile_ctrl = mtk_cam_dev_g_ctrl,
+	.s_ctrl = mtk_cam_dev_s_ctrl,
+};
+
+struct v4l2_ctrl_config mtk_cam_controls[] = {
+	{
+	.ops = &mtk_cam_dev_ctrl_ops,
+	.id = V4L2_CID_PRIVATE_GET_BIN_INFO,
+	.name = "MTK CAM GET BIN INFO",
+	.type = V4L2_CTRL_TYPE_INTEGER,
+	.min = (IMG_MIN_WIDTH << 16) | IMG_MIN_HEIGHT,
+	.max = (IMG_MAX_WIDTH << 16) | IMG_MAX_HEIGHT,
+	.step = 1,
+	.def = (IMG_MAX_WIDTH << 16) | IMG_MAX_HEIGHT,
+	.flags = V4L2_CTRL_FLAG_READ_ONLY | V4L2_CTRL_FLAG_VOLATILE,
+	},
+	{
+	.ops = &mtk_cam_dev_ctrl_ops,
+	.id = V4L2_CID_PRIVATE_RAW_PATH,
+	.name = "MTK CAM RAW PATH",
+	.type = V4L2_CTRL_TYPE_BOOLEAN,
+	.min = 0,
+	.max = 1,
+	.step = 1,
+	.def = 1,
+	},
+};
+
+int mtk_cam_ctrl_init(struct mtk_cam_dev *cam_dev,
+		      struct v4l2_ctrl_handler *hdl)
+{
+	unsigned int i;
+
+	/* Initialized HW controls, allow V4L2_CID_MTK_CAM_MAX ctrls */
+	v4l2_ctrl_handler_init(hdl, V4L2_CID_MTK_CAM_MAX);
+	if (hdl->error) {
+		v4l2_ctrl_handler_free(hdl);
+		return hdl->error;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(mtk_cam_controls); i++)
+		v4l2_ctrl_new_custom(hdl, &mtk_cam_controls[i], cam_dev);
+
+	dev_dbg(&cam_dev->pdev->dev, "%s done", __func__);
+	return 0;
+}
diff --git a/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.h b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.h
new file mode 100644
index 000000000000..74a6538c81ac
--- /dev/null
+++ b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2018 MediaTek Inc.
+ * Author: Ryan Yu <ryan.yu@mediatek.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __MTK_CAM_CTRL_H__
+#define __MTK_CAM_CTRL_H__
+
+#include <media/v4l2-ctrls.h>
+
+#define V4L2_CID_MTK_CAM_PRIVATE_CAM  V4L2_CID_USER_MTK_CAM_BASE
+#define V4L2_CID_PRIVATE_GET_BIN_INFO \
+	(V4L2_CID_MTK_CAM_PRIVATE_CAM + 1)
+#define V4L2_CID_PRIVATE_RAW_PATH \
+	(V4L2_CID_MTK_CAM_PRIVATE_CAM + 2)
+
+#define V4L2_CID_MTK_CAM_MAX	16
+
+int mtk_cam_ctrl_init(struct mtk_cam_dev *cam_dev,
+		      struct v4l2_ctrl_handler *hdl);
+
+#endif /* __MTK_CAM_CTRL_H__ */
diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
index 06479f2fb3ae..cbe8f5f7782b 100644
--- a/include/uapi/linux/v4l2-controls.h
+++ b/include/uapi/linux/v4l2-controls.h
@@ -192,6 +192,10 @@ enum v4l2_colorfx {
  * We reserve 16 controls for this driver. */
 #define V4L2_CID_USER_IMX_BASE			(V4L2_CID_USER_BASE + 0x10b0)
 
+/* The base for the mediatek ISP Pass 1 driver controls */
+/* We reserve 16 controls for this driver. */
+#define V4L2_CID_USER_MTK_CAM_BASE		(V4L2_CID_USER_BASE + 0x10c0)
+
 /* MPEG-class control IDs */
 /* The MPEG controls are applicable to all codec controls
  * and the 'MPEG' part of the define is historical */
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
