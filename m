Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 620713C1BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 05:55:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kcXJxqIIOWK00d5i5y4KJ/qiss+LCRgeMPzdQu9iZ8I=; b=Y5w53mMafvGxsc
	kcGH9aiG7ovl+6sT/1yqPRFYPAzWlxwe0CtVw/Pdv+F8av2UzYtOOxcxt9qmZEgD6Zk00x6ZuzZnL
	1NLjxqSUDN+ZCl3gwM+HiBIjf2WAhF0kknCH3hJ2KCPPpm/4iYcu+Ypqzvjx3lnM8mjLDJCoS+ArH
	nIzVfNf0lXPM9ad+bBN/WG/7K/VKZRBiqjuuweeBXg85wtTHIm+ljdMTj2geXHUa4Y2SYDmMgGQOP
	Azc/NJcW2D0CBCql+LJ62j5zQpy7t6QlJgd3TVReiyrprZ2Cg4V04jQ6+j8imLC+d9bz6IToN1X0/
	u85nySsM3FVaon9G2kTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haXsQ-0007tN-Ke; Tue, 11 Jun 2019 03:55:14 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haXrI-0007JV-TY; Tue, 11 Jun 2019 03:54:07 +0000
X-UUID: 25661a17233e45b6aef2899f4e6bec4f-20190610
X-UUID: 25661a17233e45b6aef2899f4e6bec4f-20190610
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 343107097; Mon, 10 Jun 2019 19:53:57 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 20:53:56 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 11:53:54 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 11 Jun 2019 11:53:54 +0800
From: Jungo Lin <jungo.lin@mediatek.com>
To: <tfiga@chromium.org>, <hverkuil@xs4all.nl>,
 <laurent.pinchart@ideasonboard.com>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC,v3 5/9] media: platform: Add Mediatek ISP P1 V4L2 control
Date: Tue, 11 Jun 2019 11:53:40 +0800
Message-ID: <20190611035344.29814-6-jungo.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190611035344.29814-1-jungo.lin@mediatek.com>
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_205404_958005_34BE7D30 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Reply-To: jungo.lin@mediatek.com
Cc: devicetree@vger.kernel.org, sean.cheng@mediatek.com, rynn.wu@mediatek.com,
 srv_heupstream@mediatek.com, robh@kernel.org, ryan.yu@mediatek.com,
 frankie.chiu@mediatek.com, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, ddavenport@chromium.org,
 frederic.chen@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reserved Mediatek ISP P1 V4L2 control number with 16.
Moreover, add two V4L2 controls for ISP P1 user space
usage.

1. V4L2_CID_MTK_GET_BIN_INFO
- Provide the image output width & height in case
camera binning mode is enabled.

2. V4L2_CID_MTK_RAW_PATH
- Export the path control of the main stream to user space.
One is pure raw and the other is processing raw.
The default value is 0 which outputs the pure raw bayer image
from sesnor, without image processing in ISP HW.

Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
---
 drivers/media/platform/mtk-isp/Makefile       |   3 +
 .../media/platform/mtk-isp/isp_50/Makefile    |   5 +
 .../platform/mtk-isp/isp_50/cam/Makefile      |   5 +
 .../mtk-isp/isp_50/cam/mtk_cam-ctrl.c         | 138 ++++++++++++++++++
 .../mtk-isp/isp_50/cam/mtk_cam-ctrl.h         |  38 +++++
 include/uapi/linux/v4l2-controls.h            |   4 +
 6 files changed, 193 insertions(+)
 create mode 100644 drivers/media/platform/mtk-isp/Makefile
 create mode 100644 drivers/media/platform/mtk-isp/isp_50/Makefile
 create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/Makefile
 create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.c
 create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.h

diff --git a/drivers/media/platform/mtk-isp/Makefile b/drivers/media/platform/mtk-isp/Makefile
new file mode 100644
index 000000000000..c17fb3fc3340
--- /dev/null
+++ b/drivers/media/platform/mtk-isp/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-y += isp_50/
diff --git a/drivers/media/platform/mtk-isp/isp_50/Makefile b/drivers/media/platform/mtk-isp/isp_50/Makefile
new file mode 100644
index 000000000000..8498fe70e418
--- /dev/null
+++ b/drivers/media/platform/mtk-isp/isp_50/Makefile
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
+ifeq ($(CONFIG_VIDEO_MEDIATEK_ISP_PASS1),y)
+obj-y += cam/
+endif
diff --git a/drivers/media/platform/mtk-isp/isp_50/cam/Makefile b/drivers/media/platform/mtk-isp/isp_50/cam/Makefile
new file mode 100644
index 000000000000..53fb69d3add6
--- /dev/null
+++ b/drivers/media/platform/mtk-isp/isp_50/cam/Makefile
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
+mtk-cam-isp-objs += mtk_cam-ctrl.o
+
+obj-$(CONFIG_VIDEO_MEDIATEK_ISP_PASS1) += mtk-cam-isp.o
\ No newline at end of file
diff --git a/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.c b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.c
new file mode 100644
index 000000000000..31d801c82495
--- /dev/null
+++ b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.c
@@ -0,0 +1,138 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright (c) 2018 MediaTek Inc.
+
+#include <linux/device.h>
+#include <linux/platform_device.h>
+
+#include "mtk_cam-ctrl.h"
+#include "mtk_cam.h"
+
+static int handle_ctrl_get_bin_info(struct v4l2_ctrl *ctrl, int is_width)
+{
+	struct mtk_cam_dev *cam_dev = ctrl->priv;
+	struct v4l2_format *fmt;
+
+	fmt = &cam_dev->vdev_nodes[MTK_CAM_P1_MAIN_STREAM_OUT].vdev_fmt;
+
+	dev_dbg(&cam_dev->pdev->dev, "Get bin info w*h:%d*%d is_width:%d",
+		fmt->fmt.pix_mp.width, fmt->fmt.pix_mp.height, is_width);
+
+	if (is_width)
+		ctrl->val = fmt->fmt.pix_mp.width;
+	else
+		ctrl->val = fmt->fmt.pix_mp.height;
+
+	return 0;
+}
+
+static int handle_ctrl_get_process_raw(struct v4l2_ctrl *ctrl)
+{
+	struct mtk_cam_dev *cam_dev = ctrl->priv;
+	struct isp_p1_device *p1_dev = get_p1_device(&cam_dev->pdev->dev);
+
+	ctrl->val = (p1_dev->isp_ctx.isp_raw_path == ISP_PROCESS_RAW_PATH);
+
+	dev_dbg(&cam_dev->pdev->dev, "Get process raw:%d", ctrl->val);
+
+	return 0;
+}
+
+static int handle_ctrl_set_process_raw(struct v4l2_ctrl *ctrl)
+{
+	struct mtk_cam_dev *cam_dev = ctrl->priv;
+	struct isp_p1_device *p1_dev = get_p1_device(&cam_dev->pdev->dev);
+
+	p1_dev->isp_ctx.isp_raw_path = (ctrl->val) ?
+		ISP_PROCESS_RAW_PATH : ISP_PURE_RAW_PATH;
+	dev_dbg(&cam_dev->pdev->dev, "Set process raw:%d", ctrl->val);
+	return 0;
+}
+
+static int mtk_cam_dev_g_ctrl(struct v4l2_ctrl *ctrl)
+{
+	switch (ctrl->id) {
+	case V4L2_CID_MTK_PROCESSING_RAW:
+		handle_ctrl_get_process_raw(ctrl);
+		break;
+	case V4L2_CID_MTK_GET_BIN_WIDTH:
+		handle_ctrl_get_bin_info(ctrl, 1);
+		break;
+	case V4L2_CID_MTK_GET_BIN_HEIGTH:
+		handle_ctrl_get_bin_info(ctrl, 0);
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
+	case V4L2_CID_MTK_PROCESSING_RAW:
+		return handle_ctrl_set_process_raw(ctrl);
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
+	.id = V4L2_CID_MTK_PROCESSING_RAW,
+	.name = "MTK CAM PROCESSING RAW",
+	.type = V4L2_CTRL_TYPE_BOOLEAN,
+	.min = 0,
+	.max = 1,
+	.step = 1,
+	.def = 1,
+	},
+	{
+	.ops = &mtk_cam_dev_ctrl_ops,
+	.id = V4L2_CID_MTK_GET_BIN_WIDTH,
+	.name = "MTK CAM GET BIN WIDTH",
+	.type = V4L2_CTRL_TYPE_INTEGER,
+	.min = IMG_MIN_WIDTH,
+	.max = IMG_MAX_WIDTH,
+	.step = 1,
+	.def = IMG_MAX_WIDTH,
+	.flags = V4L2_CTRL_FLAG_READ_ONLY | V4L2_CTRL_FLAG_VOLATILE,
+	},
+	{
+	.ops = &mtk_cam_dev_ctrl_ops,
+	.id = V4L2_CID_MTK_GET_BIN_HEIGTH,
+	.name = "MTK CAM GET BIN HEIGHT",
+	.type = V4L2_CTRL_TYPE_INTEGER,
+	.min = IMG_MIN_HEIGHT,
+	.max = IMG_MAX_HEIGHT,
+	.step = 1,
+	.def = IMG_MAX_HEIGHT,
+	.flags = V4L2_CTRL_FLAG_READ_ONLY | V4L2_CTRL_FLAG_VOLATILE,
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
+
+	return 0;
+}
diff --git a/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.h b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.h
new file mode 100644
index 000000000000..0f9349ae0b07
--- /dev/null
+++ b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ctrl.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2018 MediaTek Inc.
+ */
+
+#ifndef __MTK_CAM_CTRL_H__
+#define __MTK_CAM_CTRL_H__
+
+#include <media/v4l2-ctrls.h>
+
+#include "mtk_cam-v4l2-util.h"
+
+/* The base for the MTK Camera ISP P1 driver controls.
+ * We reserve 16 controls for this driver.
+ */
+#define V4L2_CID_MTK_CAM_BASE			V4L2_CID_USER_MTK_CAM_BASE
+
+/* Control MTK ISP P1 main stream to process raw image data or not.
+ * The default value is 0 which outputs the pure raw bayer data from sensor,
+ * without image processing in ISP HW.
+ */
+#define V4L2_CID_MTK_PROCESSING_RAW		(V4L2_CID_MTK_CAM_BASE + 1)
+
+/* MTK ISP P1 HW supports frontal binning function.
+ * If this function is enabled, the 3A algo. may get the new image resolution
+ * which is binned by ISP P1. If this function is disabled or no supported,
+ * the image resolution will be equal to configured image format.
+ * For this control, it is read only.
+ */
+#define V4L2_CID_MTK_GET_BIN_WIDTH		(V4L2_CID_MTK_CAM_BASE + 2)
+#define V4L2_CID_MTK_GET_BIN_HEIGTH		(V4L2_CID_MTK_CAM_BASE + 3)
+
+#define V4L2_CID_MTK_CAM_MAX			16
+
+int mtk_cam_ctrl_init(struct mtk_cam_dev *cam_dev,
+		      struct v4l2_ctrl_handler *hdl);
+
+#endif /* __MTK_CAM_CTRL_H__ */
diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
index 37807f23231e..2db99716f40d 100644
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
