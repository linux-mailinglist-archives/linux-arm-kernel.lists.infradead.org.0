Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71163112C07
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 13:48:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRIrJRdnUYYufibB47asM6u8s5zFawqpftMWgAi4Bxw=; b=dyLKKLv1xvSNkD
	g3RxfjXLrbRLwzZTfbEmR5UGoU1f20gDzTxisXjh9xJzM1oJSANL686cFuR0koToDghITDAyJvOc4
	zVc7g6zeL/8maxxdbiJ+HQR8GrxEeQj2WSu5Y3oTwG0rNlFQaLjLrZFB6qcjDlGDiaoOPIRkvHOlg
	KK+NMOPXlm/NR0El67k/QZ30dJUjmB9QQD/4BaiDtB3BsvtHkYVnZpdPi/hj7an0jsqaJvq5oOH/o
	u4z4DBUnk3sw0K/QWjmmyjb/V5H2C8tTMv+YgulloY5PIlt8/zsmQ4gNh+LRLE7ZIoklf4kKT+/c1
	d6iHZr08IVnH8/JLYk3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icU5M-0004Ui-S7; Wed, 04 Dec 2019 12:48:52 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icU4R-0003kk-BK; Wed, 04 Dec 2019 12:47:59 +0000
X-UUID: fcb19e25f5114430beb5e0149bc2490c-20191204
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=zochh5N1EFTk7uzD+0ZuSDkeQLR4Al9dvt6pqNoHDGY=; 
 b=fCWd/G8e1nxz2UJAcYorSfWbYy8W6wKzSvs6FXMlltEMUH78j2WFzTTMn9m5fvuAc3mVfiCfhrgq22No3aznXl0pJ75NFWxLZ920BVtgyVEZdP70mAxWMcZbra3bl8xxXoD4RR+P2jN2/YfCKOa++AqA0oMZgWgf8YID/K9rWUU=;
X-UUID: fcb19e25f5114430beb5e0149bc2490c-20191204
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 326569526; Wed, 04 Dec 2019 04:47:51 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Dec 2019 04:48:35 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Dec 2019 20:47:48 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 4 Dec 2019 20:46:53 +0800
From: Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <mchehab@kernel.org>
Subject: [RFC PATCH V4 4/4] platform: mtk-isp: Add Mediatek FD driver
Date: Wed, 4 Dec 2019 20:47:32 +0800
Message-ID: <20191204124732.10932-5-Jerry-Ch.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
References: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: B9A59B929813E828148439615B4C3099B26B454A7EAC0E23C2B41F7CB347283E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_044755_703499_F3960644 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com, Rynn.Wu@mediatek.com,
 pihsun@chromium.org, srv_heupstream@mediatek.com,
 Jerry-ch Chen <jerry-ch.chen@mediatek.com>, jungo.lin@mediatek.com,
 sj.huang@mediatek.com, yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 zwisler@chromium.org, christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>

This patch adds the driver of Face Detection (FD) unit in
Mediatek camera system, providing face detection function.

The mtk-isp directory will contain drivers for multiple IP
blocks found in Mediatek ISP system. It will include ISP Pass 1
driver (CAM), sensor interface driver, DIP driver and face
detection driver.

Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
---
 drivers/media/platform/Kconfig                |    2 +
 drivers/media/platform/Makefile               |    2 +
 drivers/media/platform/mtk-isp/fd/Kconfig     |   19 +
 drivers/media/platform/mtk-isp/fd/Makefile    |    5 +
 drivers/media/platform/mtk-isp/fd/mtk_fd.h    |  149 ++
 drivers/media/platform/mtk-isp/fd/mtk_fd_40.c | 1279 +++++++++++++++++
 include/uapi/linux/v4l2-controls.h            |    4 +
 include/uapi/linux/videodev2.h                |    3 +
 8 files changed, 1463 insertions(+)
 create mode 100644 drivers/media/platform/mtk-isp/fd/Kconfig
 create mode 100644 drivers/media/platform/mtk-isp/fd/Makefile
 create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd.h
 create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd_40.c

diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
index a505e9f5a1e2..ae99258e26a5 100644
--- a/drivers/media/platform/Kconfig
+++ b/drivers/media/platform/Kconfig
@@ -32,6 +32,8 @@ source "drivers/media/platform/davinci/Kconfig"
 
 source "drivers/media/platform/omap/Kconfig"
 
+source "drivers/media/platform/mtk-isp/fd/Kconfig"
+
 config VIDEO_ASPEED
 	tristate "Aspeed AST2400 and AST2500 Video Engine driver"
 	depends on VIDEO_V4L2
diff --git a/drivers/media/platform/Makefile b/drivers/media/platform/Makefile
index e6deb2597738..8b817cc80f43 100644
--- a/drivers/media/platform/Makefile
+++ b/drivers/media/platform/Makefile
@@ -94,6 +94,8 @@ obj-$(CONFIG_VIDEO_MEDIATEK_MDP)	+= mtk-mdp/
 
 obj-$(CONFIG_VIDEO_MEDIATEK_JPEG)	+= mtk-jpeg/
 
+obj-$(CONFIG_VIDEO_MEDIATEK_FD)		+= mtk-isp/fd/
+
 obj-$(CONFIG_VIDEO_QCOM_CAMSS)		+= qcom/camss/
 
 obj-$(CONFIG_VIDEO_QCOM_VENUS)		+= qcom/venus/
diff --git a/drivers/media/platform/mtk-isp/fd/Kconfig b/drivers/media/platform/mtk-isp/fd/Kconfig
new file mode 100644
index 000000000000..7a747d947e88
--- /dev/null
+++ b/drivers/media/platform/mtk-isp/fd/Kconfig
@@ -0,0 +1,19 @@
+config VIDEO_MEDIATEK_FD
+	tristate "Mediatek face detection processing function"
+	depends on VIDEO_V4L2
+	depends on ARCH_MEDIATEK
+	select VIDEOBUF2_DMA_CONTIG
+	select VIDEOBUF2_CORE
+	select VIDEOBUF2_V4L2
+	select VIDEOBUF2_MEMOPS
+	select MEDIA_CONTROLLER
+	select MTK_SCP
+
+	default n
+	help
+		Support the Face Detection (FD) feature in the Mediatek
+		mt8183 Soc.
+
+		FD driver is a V4L2 memory-to-memory device driver which
+		provides hardware accelerated face detection function,
+		it can detect different sizes of faces in a raw image.
diff --git a/drivers/media/platform/mtk-isp/fd/Makefile b/drivers/media/platform/mtk-isp/fd/Makefile
new file mode 100644
index 000000000000..9b1c501d73e1
--- /dev/null
+++ b/drivers/media/platform/mtk-isp/fd/Makefile
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
+mtk-fd-objs += mtk_fd_40.o
+
+obj-$(CONFIG_VIDEO_MEDIATEK_FD) += mtk-fd.o
\ No newline at end of file
diff --git a/drivers/media/platform/mtk-isp/fd/mtk_fd.h b/drivers/media/platform/mtk-isp/fd/mtk_fd.h
new file mode 100644
index 000000000000..d85bdcb70d6d
--- /dev/null
+++ b/drivers/media/platform/mtk-isp/fd/mtk_fd.h
@@ -0,0 +1,149 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+//
+// Copyright (c) 2018 MediaTek Inc.
+
+#ifndef __MTK_FD_HW_H__
+#define __MTK_FD_HW_H__
+
+#include <linux/completion.h>
+#include <linux/io.h>
+#include <linux/types.h>
+#include <linux/platform_device.h>
+#include <media/v4l2-ctrls.h>
+#include <media/v4l2-device.h>
+#include <media/videobuf2-v4l2.h>
+
+#define MTK_FD_OUTPUT_MIN_WIDTH			26U
+#define MTK_FD_OUTPUT_MIN_HEIGHT		26U
+#define MTK_FD_OUTPUT_MAX_WIDTH			640U
+#define MTK_FD_OUTPUT_MAX_HEIGHT		480U
+
+#define MTK_FD_HW_FMT_VYUY			2
+#define MTK_FD_HW_FMT_UYVY			3
+#define MTK_FD_HW_FMT_YVYU			4
+#define MTK_FD_HW_FMT_YUYV			5
+#define MTK_FD_HW_FMT_YVU_2P			6
+#define MTK_FD_HW_FMT_YUV_2P			7
+#define MTK_FD_HW_FMT_UNKNOWN			8
+
+#define MTK_FD_IPI_CMD_INIT			0
+#define MTK_FD_IPI_CMD_INIT_ACK			1
+#define MTK_FD_IPI_CMD_ENQUEUE			2
+#define MTK_FD_IPI_CMD_ENQ_ACK			3
+#define MTK_FD_IPI_CMD_EXIT			4
+#define MTK_FD_IPI_CMD_EXIT_ACK			5
+#define MTK_FD_IPI_CMD_RESET			6
+#define MTK_FD_IPI_CMD_RESET_ACK		7
+
+#define MTK_FD_REG_OFFSET_HW_ENABLE		0x4
+#define MTK_FD_REG_OFFSET_INT_EN		0x15c
+#define MTK_FD_REG_OFFSET_INT_VAL		0x168
+#define MTK_FD_REG_OFFSET_RESULT		0x178
+
+#define MTK_FD_SET_HW_ENABLE			0x111
+#define MTK_FD_RS_BUF_SIZE			2289664
+#define MTK_FD_HW_WORK_BUF_SIZE			0x100000
+#define MTK_FD_MAX_SPEEDUP			7
+#define MTK_FD_MAX_RESULT_NUM			1026
+
+/* Max scale size counts */
+#define MTK_FD_SCALE_ARR_NUM			15
+
+#define MTK_FD_HW_TIMEOUT			1000
+
+enum face_angle {
+	MTK_FD_FACE_FRONT,
+	MTK_FD_FACE_RIGHT_50,
+	MTK_FD_FACE_LEFT_50,
+	MTK_FD_FACE_RIGHT_90,
+	MTK_FD_FACE_LEFT_90,
+	MTK_FD_FACE_ANGLE_NUM,
+};
+
+struct fd_buffer {
+	__u32 scp_addr;	/* used by SCP */
+	__u32 dma_addr;	/* used by DMA HW */
+} __packed;
+
+struct fd_face_result {
+	char data[16];
+};
+
+struct fd_user_output {
+	struct fd_face_result results[MTK_FD_MAX_RESULT_NUM];
+	__u16 number;
+};
+
+struct user_param {
+	u8 fd_speedup;
+	u8 fd_extra_model;
+	u8 scale_img_num;
+	u8 src_img_fmt;
+	__u16 scale_img_width[MTK_FD_SCALE_ARR_NUM];
+	__u16 scale_img_height[MTK_FD_SCALE_ARR_NUM];
+	__u16 face_directions[MTK_FD_FACE_ANGLE_NUM];
+} __packed;
+
+struct fd_init_param {
+	struct fd_buffer fd_manager;
+	__u32 rs_dma_addr;
+} __packed;
+
+struct fd_enq_param {
+	__u64 output_vaddr;
+	struct fd_buffer src_img[2];
+	struct fd_buffer user_result;
+	struct user_param user_param;
+} __packed;
+
+struct fd_ack_param {
+	__u32 ret_code;
+	__u32 ret_msg;
+} __packed;
+
+struct ipi_message {
+	u8 cmd_id;
+	union {
+		struct fd_init_param fd_init_param;
+		struct fd_enq_param fd_enq_param;
+		struct fd_ack_param fd_ack_param;
+	};
+} __packed;
+
+struct mtk_fd_dev {
+	struct device *dev;
+	struct mtk_fd_ctx *ctx;
+	struct v4l2_device v4l2_dev;
+	struct v4l2_m2m_dev *m2m_dev;
+	struct media_device mdev;
+	struct video_device vfd;
+	struct platform_device *scp_pdev;
+	struct clk *fd_clk;
+	struct rproc *rproc_handle;
+
+	/* Lock for V4L2 operations */
+	struct mutex vfd_lock;
+
+	struct fd_user_output *output;
+	struct fd_buffer scp_mem;
+	void __iomem *fd_base;
+	void *rs_dma_buf;
+	dma_addr_t rs_dma_handle;
+	void *scp_mem_virt_addr;
+
+	u32 fd_stream_count;
+	struct completion fd_job_finished;
+	struct delayed_work job_timeout_work;
+};
+
+struct mtk_fd_ctx {
+	struct mtk_fd_dev *fd_dev;
+	struct device *dev;
+	struct v4l2_fh fh;
+	struct v4l2_ctrl_handler hdl;
+	struct v4l2_pix_format_mplane src_fmt;
+	struct v4l2_meta_format dst_fmt;
+	struct user_param user_param;
+};
+
+#endif/*__MTK_FD_HW_H__*/
diff --git a/drivers/media/platform/mtk-isp/fd/mtk_fd_40.c b/drivers/media/platform/mtk-isp/fd/mtk_fd_40.c
new file mode 100644
index 000000000000..4364232d7013
--- /dev/null
+++ b/drivers/media/platform/mtk-isp/fd/mtk_fd_40.c
@@ -0,0 +1,1279 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2018 MediaTek Inc.
+ *
+ * Author: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
+ *
+ */
+
+#include <linux/clk.h>
+#include <linux/dma-mapping.h>
+#include <linux/interrupt.h>
+#include <linux/iopoll.h>
+#include <linux/jiffies.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/of_platform.h>
+#include <linux/remoteproc/mtk_scp.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/remoteproc.h>
+#include <media/videobuf2-dma-contig.h>
+#include <media/videobuf2-v4l2.h>
+#include <media/v4l2-ioctl.h>
+#include <media/v4l2-event.h>
+#include <media/v4l2-ctrls.h>
+#include <media/v4l2-mem2mem.h>
+#include <media/videobuf2-core.h>
+
+#include "mtk_fd.h"
+
+/* Set the face angle and directions to be detected */
+#define V4L2_CID_MTK_FD_DETECT_POSE		(V4L2_CID_USER_MTK_FD_BASE + 1)
+
+/* Set image widths for an input image to be scaled down for face detection */
+#define V4L2_CID_MTK_FD_SCALE_DOWN_IMG_WIDTH	(V4L2_CID_USER_MTK_FD_BASE + 2)
+
+/* Set image heights for an input image to be scaled down for face detection */
+#define V4L2_CID_MTK_FD_SCALE_DOWN_IMG_HEIGHT	(V4L2_CID_USER_MTK_FD_BASE + 3)
+
+/* Set the length of scale down size array */
+#define V4L2_CID_MTK_FD_SCALE_IMG_NUM		(V4L2_CID_USER_MTK_FD_BASE + 4)
+
+/* Set the detection speed, usually reducing accuracy. */
+#define V4L2_CID_MTK_FD_DETECT_SPEED		(V4L2_CID_USER_MTK_FD_BASE + 5)
+
+/* Select the detection model or algorithm to be used. */
+#define V4L2_CID_MTK_FD_DETECTION_MODEL		(V4L2_CID_USER_MTK_FD_BASE + 6)
+
+/* We reserve 16 controls for this driver. */
+#define V4L2_CID_MTK_FD_MAX			16
+
+static const struct v4l2_pix_format_mplane mtk_fd_img_fmts[] = {
+	{
+		.pixelformat = V4L2_PIX_FMT_VYUY,
+		.num_planes = 1,
+	},
+	{
+		.pixelformat = V4L2_PIX_FMT_YUYV,
+		.num_planes = 1,
+	},
+	{
+		.pixelformat = V4L2_PIX_FMT_YVYU,
+		.num_planes = 1,
+	},
+	{
+		.pixelformat = V4L2_PIX_FMT_UYVY,
+		.num_planes = 1,
+	},
+	{
+		.pixelformat = V4L2_PIX_FMT_NV16M,
+		.num_planes = 2,
+	},
+	{
+		.pixelformat = V4L2_PIX_FMT_NV61M,
+		.num_planes = 2,
+	},
+};
+
+#define NUM_FORMATS ARRAY_SIZE(mtk_fd_img_fmts)
+
+static inline struct mtk_fd_ctx *fh_to_ctx(struct v4l2_fh *fh)
+{
+	return container_of(fh, struct mtk_fd_ctx, fh);
+}
+
+/*  */
+static int mtk_fd_hw_alloc_rs_dma_addr(struct mtk_fd_dev *fd)
+{
+	struct device *dev = fd->dev;
+	void *va;
+	dma_addr_t dma_handle;
+
+	va = dma_alloc_coherent(dev, MTK_FD_RS_BUF_SIZE, &dma_handle,
+				GFP_KERNEL);
+	if (!va) {
+		dev_err(dev, "dma_alloc null va\n");
+		return -ENOMEM;
+	}
+	memset(va, 0, MTK_FD_RS_BUF_SIZE);
+	fd->rs_dma_buf = va;
+	fd->rs_dma_handle = dma_handle;
+
+	return 0;
+}
+
+static int mtk_fd_send_ipi_init(struct mtk_fd_dev *fd)
+{
+	struct ipi_message fd_init_msg;
+
+	fd_init_msg.cmd_id = MTK_FD_IPI_CMD_INIT;
+
+	fd_init_msg.fd_init_param.fd_manager.scp_addr = fd->scp_mem.scp_addr;
+	fd_init_msg.fd_init_param.fd_manager.dma_addr = fd->scp_mem.dma_addr;
+
+	memset(fd->rs_dma_buf, 0, MTK_FD_RS_BUF_SIZE);
+
+	fd_init_msg.fd_init_param.rs_dma_addr = fd->rs_dma_handle;
+
+	return scp_ipi_send(fd->scp_pdev, SCP_IPI_FD_CMD, &fd_init_msg,
+			    sizeof(fd_init_msg), 300);
+}
+
+static void mtk_fd_free_dma_handle(struct mtk_fd_dev *fd)
+{
+	dma_free_coherent(fd->dev, MTK_FD_RS_BUF_SIZE,
+			  fd->rs_dma_buf,
+			  fd->rs_dma_handle);
+}
+
+static int mtk_fd_hw_enable(struct mtk_fd_dev *fd)
+{
+	int ret;
+
+	pm_runtime_get_sync(fd->dev);
+	ret = mtk_fd_send_ipi_init(fd);
+	pm_runtime_put(fd->dev);
+	if (ret) {
+		dev_err(fd->dev, "Failed to send fd ipi init\n");
+		return ret;
+	}
+	return 0;
+}
+
+static void mtk_fd_hw_job_finish(struct mtk_fd_dev *fd,
+				 enum vb2_buffer_state vb_state)
+{
+	struct mtk_fd_ctx *ctx;
+	struct vb2_v4l2_buffer *src_vbuf = NULL, *dst_vbuf = NULL;
+
+	pm_runtime_put(fd->dev);
+
+	ctx = v4l2_m2m_get_curr_priv(fd->m2m_dev);
+	src_vbuf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
+	dst_vbuf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
+
+	v4l2_m2m_buf_copy_metadata(src_vbuf, dst_vbuf,
+				   V4L2_BUF_FLAG_TSTAMP_SRC_MASK);
+	v4l2_m2m_buf_done(src_vbuf, vb_state);
+	v4l2_m2m_buf_done(dst_vbuf, vb_state);
+	v4l2_m2m_job_finish(fd->m2m_dev, ctx->fh.m2m_ctx);
+	complete_all(&fd->fd_job_finished);
+}
+
+static void mtk_fd_hw_done(struct mtk_fd_dev *fd,
+			   enum vb2_buffer_state vb_state)
+{
+	if (!cancel_delayed_work(&fd->job_timeout_work))
+		return;
+
+	mtk_fd_hw_job_finish(fd, vb_state);
+}
+
+static void mtk_fd_ipi_handler(void *data, unsigned int len, void *priv)
+{
+	struct mtk_fd_dev *fd = (struct mtk_fd_dev *)priv;
+	struct device *dev = fd->dev;
+	struct ipi_message *fd_ack_msg = (struct ipi_message *)data;
+	struct fd_ack_param *fd_ack = &fd_ack_msg->fd_ack_param;
+
+	dev_dbg(fd->dev, "fd_ipi_ack_id: %d\n", fd_ack_msg->cmd_id);
+	switch (fd_ack_msg->cmd_id) {
+	case MTK_FD_IPI_CMD_INIT_ACK:
+		return;
+	case MTK_FD_IPI_CMD_ENQ_ACK:
+		if (fd_ack->ret_code) {
+			dev_err(dev, "ipi ret: %d, message: %d\n",
+				fd_ack->ret_code, fd_ack->ret_msg);
+			mtk_fd_hw_done(fd, VB2_BUF_STATE_ERROR);
+		}
+		return;
+	case MTK_FD_IPI_CMD_EXIT_ACK:
+		if (fd_ack->ret_code)
+			dev_err(dev, "Failed to exit FD HW\n");
+		return;
+	case MTK_FD_IPI_CMD_RESET_ACK:
+		if (fd_ack->ret_code)
+			dev_err(dev, "Failed to reset FD HW\n");
+		return;
+	}
+}
+
+static int mtk_fd_hw_connect(struct mtk_fd_dev *fd)
+{
+	int ret;
+
+	ret = rproc_boot(fd->rproc_handle);
+
+	if (ret < 0) {
+		/**
+		 * Return 0 if downloading firmware successfully,
+		 * otherwise it is failed
+		 */
+		dev_err(fd->dev, "Failed to boot rproc\n");
+		return ret;
+	}
+
+	ret = scp_ipi_register(fd->scp_pdev, SCP_IPI_FD_CMD,
+			       mtk_fd_ipi_handler, fd);
+	if (ret) {
+		dev_err(fd->dev, "Failed to register IPI cmd handler\n");
+		goto err_rproc_shutdown;
+	}
+
+	fd->fd_stream_count++;
+	if (fd->fd_stream_count == 1) {
+		if (mtk_fd_hw_enable(fd)) {
+			ret = -EINVAL;
+			goto err_rproc_shutdown;
+		}
+	}
+	return 0;
+
+err_rproc_shutdown:
+	rproc_shutdown(fd->rproc_handle);
+	return ret;
+}
+
+static void mtk_fd_exit_hw(struct mtk_fd_dev *fd)
+{
+	struct ipi_message fd_ipi_msg;
+
+	fd_ipi_msg.cmd_id = MTK_FD_IPI_CMD_EXIT;
+	if (scp_ipi_send(fd->scp_pdev, SCP_IPI_FD_CMD, &fd_ipi_msg,
+			 sizeof(fd_ipi_msg), 300))
+		dev_err(fd->dev, "FD EXIT HW error\n");
+}
+
+static void mtk_fd_hw_disconnect(struct mtk_fd_dev *fd)
+{
+	fd->fd_stream_count--;
+	mtk_fd_exit_hw(fd);
+	rproc_shutdown(fd->rproc_handle);
+}
+
+static int mtk_fd_hw_job_exec(struct mtk_fd_dev *fd,
+			      struct fd_enq_param *fd_param)
+{
+	struct ipi_message fd_ipi_msg;
+	int ret;
+
+	pm_runtime_get_sync((fd->dev));
+
+	reinit_completion(&fd->fd_job_finished);
+	schedule_delayed_work(&fd->job_timeout_work,
+			      msecs_to_jiffies(MTK_FD_HW_TIMEOUT));
+
+	fd_ipi_msg.cmd_id = MTK_FD_IPI_CMD_ENQUEUE;
+	memcpy(&fd_ipi_msg.fd_enq_param, fd_param, sizeof(struct fd_enq_param));
+	ret = scp_ipi_send(fd->scp_pdev, SCP_IPI_FD_CMD, &fd_ipi_msg,
+			   sizeof(fd_ipi_msg), 300);
+	if (ret) {
+		mtk_fd_hw_done(fd, VB2_BUF_STATE_ERROR);
+		return ret;
+	}
+	return 0;
+}
+
+static int mtk_fd_vb2_buf_out_validate(struct vb2_buffer *vb)
+{
+	struct vb2_v4l2_buffer *v4l2_buf = to_vb2_v4l2_buffer(vb);
+
+	if (v4l2_buf->field == V4L2_FIELD_ANY)
+		v4l2_buf->field = V4L2_FIELD_NONE;
+	if (v4l2_buf->field != V4L2_FIELD_NONE)
+		return -EINVAL;
+
+	return 0;
+}
+
+static int mtk_fd_vb2_buf_prepare(struct vb2_buffer *vb)
+{
+	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
+	struct vb2_queue *vq = vb->vb2_queue;
+	struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
+	struct device *dev = ctx->dev;
+	struct v4l2_pix_format_mplane *pixfmt;
+
+	switch (vq->type) {
+	case V4L2_BUF_TYPE_META_CAPTURE:
+		if (vb2_plane_size(vb, 0) < ctx->dst_fmt.buffersize) {
+			dev_dbg(dev, "meta size %lu is too small\n",
+				vb2_plane_size(vb, 0));
+			return -EINVAL;
+		}
+		break;
+	case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
+		pixfmt = &ctx->src_fmt;
+
+		if (vbuf->field == V4L2_FIELD_ANY)
+			vbuf->field = V4L2_FIELD_NONE;
+
+		if (vb->num_planes > 2 || vbuf->field != V4L2_FIELD_NONE) {
+			dev_dbg(dev, "plane %d or field %d not supported\n",
+				vb->num_planes, vbuf->field);
+			return -EINVAL;
+		}
+		if (vb2_plane_size(vb, 0) < pixfmt->plane_fmt[0].sizeimage) {
+			dev_dbg(dev, "plane %lu is too small\n",
+				vb2_plane_size(vb, 0));
+			return -EINVAL;
+		}
+		break;
+	}
+
+	return 0;
+}
+
+static void mtk_fd_vb2_buf_queue(struct vb2_buffer *vb)
+{
+	struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
+	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
+
+	v4l2_m2m_buf_queue(ctx->fh.m2m_ctx, vbuf);
+}
+
+static int mtk_fd_vb2_queue_setup(struct vb2_queue *vq,
+				  unsigned int *num_buffers,
+				  unsigned int *num_planes,
+				  unsigned int sizes[],
+				  struct device *alloc_devs[])
+{
+	struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
+	unsigned int size[2];
+	unsigned int plane;
+
+	switch (vq->type) {
+	case V4L2_BUF_TYPE_META_CAPTURE:
+		size[0] = ctx->dst_fmt.buffersize;
+		break;
+	case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
+		size[0] = ctx->src_fmt.plane_fmt[0].sizeimage;
+		if (*num_planes == 2)
+			size[1] = ctx->src_fmt.plane_fmt[1].sizeimage;
+		break;
+	}
+
+	if (*num_planes > 2)
+		return -EINVAL;
+	if (*num_planes == 0) {
+		if (vq->type == V4L2_BUF_TYPE_META_CAPTURE) {
+			sizes[0] = ctx->dst_fmt.buffersize;
+			*num_planes = 1;
+			return 0;
+		}
+
+		*num_planes = ctx->src_fmt.num_planes;
+		for (plane = 0; plane < *num_planes; plane++)
+			sizes[plane] = ctx->src_fmt.plane_fmt[plane].sizeimage;
+		return 0;
+	}
+
+	for (plane = 0; plane < *num_planes; plane++) {
+		if (sizes[plane] < size[plane])
+			return -EINVAL;
+	}
+	return 0;
+}
+
+static int mtk_fd_vb2_start_streaming(struct vb2_queue *vq, unsigned int count)
+{
+	struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
+
+	if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
+		return mtk_fd_hw_connect(ctx->fd_dev);
+	else
+		return 0;
+}
+
+static void mtk_fd_reset_hw(struct mtk_fd_dev *fd)
+{
+	struct ipi_message fd_ipi_msg;
+
+	fd_ipi_msg.cmd_id = MTK_FD_IPI_CMD_RESET;
+	if (scp_ipi_send(fd->scp_pdev, SCP_IPI_FD_CMD, &fd_ipi_msg,
+			 sizeof(fd_ipi_msg), 300))
+		dev_err(fd->dev, "FD Reset HW error\n");
+}
+
+static void mtk_fd_job_timeout_work(struct work_struct *work)
+{
+	struct mtk_fd_dev *fd =
+		container_of(work, struct mtk_fd_dev, job_timeout_work.work);
+
+	dev_err(fd->dev, "FD Job timeout!");
+	mtk_fd_reset_hw(fd);
+	mtk_fd_hw_job_finish(fd, VB2_BUF_STATE_ERROR);
+}
+
+static void mtk_fd_job_wait_finish(struct mtk_fd_dev *fd)
+{
+	wait_for_completion(&fd->fd_job_finished);
+}
+
+static void mtk_fd_vb2_stop_streaming(struct vb2_queue *vq)
+{
+	struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
+	struct mtk_fd_dev *fd = ctx->fd_dev;
+	struct vb2_v4l2_buffer *vb;
+	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
+	struct v4l2_m2m_queue_ctx *queue_ctx;
+
+	mtk_fd_job_wait_finish(fd);
+	queue_ctx = V4L2_TYPE_IS_OUTPUT(vq->type) ?
+					&m2m_ctx->out_q_ctx :
+					&m2m_ctx->cap_q_ctx;
+	while ((vb = v4l2_m2m_buf_remove(queue_ctx)))
+		v4l2_m2m_buf_done(vb, VB2_BUF_STATE_ERROR);
+
+	if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
+		mtk_fd_hw_disconnect(fd);
+}
+
+static void mtk_fd_vb2_request_complete(struct vb2_buffer *vb)
+{
+	struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
+
+	v4l2_ctrl_request_complete(vb->req_obj.req, &ctx->hdl);
+}
+
+static int mtk_fd_querycap(struct file *file, void *fh,
+			   struct v4l2_capability *cap)
+{
+	struct mtk_fd_dev *fd = video_drvdata(file);
+	struct device *dev = fd->dev;
+
+	strscpy(cap->driver, dev_driver_string(dev), sizeof(cap->driver));
+	strscpy(cap->card, dev_driver_string(dev), sizeof(cap->card));
+	snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
+		 dev_name(fd->dev));
+
+	return 0;
+}
+
+static int mtk_fd_enum_fmt_out_mp(struct file *file, void *fh,
+				  struct v4l2_fmtdesc *f)
+{
+	if (f->index >= NUM_FORMATS)
+		return -EINVAL;
+
+	f->pixelformat = mtk_fd_img_fmts[f->index].pixelformat;
+	return 0;
+}
+
+static void mtk_fd_fill_pixfmt_mp(struct v4l2_pix_format_mplane *dfmt,
+				  const struct v4l2_pix_format_mplane *sfmt)
+{
+	dfmt->field = V4L2_FIELD_NONE;
+	dfmt->colorspace = V4L2_COLORSPACE_BT2020;
+	dfmt->num_planes = sfmt->num_planes;
+	dfmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
+	dfmt->quantization = V4L2_QUANTIZATION_DEFAULT;
+	dfmt->xfer_func =
+		V4L2_MAP_XFER_FUNC_DEFAULT(dfmt->colorspace);
+
+	/* Keep user setting as possible */
+	dfmt->width = clamp(dfmt->width,
+			    MTK_FD_OUTPUT_MIN_WIDTH,
+			    MTK_FD_OUTPUT_MAX_WIDTH);
+	dfmt->height = clamp(dfmt->height,
+			     MTK_FD_OUTPUT_MIN_HEIGHT,
+			     MTK_FD_OUTPUT_MAX_HEIGHT);
+
+	if (sfmt->num_planes == 2) {
+		/* NV16M and NV61M has 1 byte per pixel */
+		dfmt->plane_fmt[0].bytesperline = dfmt->width;
+		dfmt->plane_fmt[1].bytesperline = dfmt->width;
+	} else {
+		/* 2 bytes per pixel */
+		dfmt->plane_fmt[0].bytesperline = dfmt->width * 2;
+	}
+
+	dfmt->plane_fmt[0].sizeimage =
+		dfmt->height * dfmt->plane_fmt[0].bytesperline;
+}
+
+static const struct v4l2_pix_format_mplane *mtk_fd_find_fmt(u32 format)
+{
+	unsigned int i;
+	const struct v4l2_pix_format_mplane *dev_fmt;
+
+	for (i = 0; i < NUM_FORMATS; i++) {
+		dev_fmt = &mtk_fd_img_fmts[i];
+		if (dev_fmt->pixelformat == format)
+			return dev_fmt;
+	}
+
+	return NULL;
+}
+
+static int mtk_fd_try_fmt_out_mp(struct file *file,
+				 void *fh,
+				 struct v4l2_format *f)
+{
+	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
+	const struct v4l2_pix_format_mplane *fmt;
+
+	fmt = mtk_fd_find_fmt(pix_mp->pixelformat);
+	if (!fmt)
+		fmt = &mtk_fd_img_fmts[0];	/* Get default img fmt */
+
+	mtk_fd_fill_pixfmt_mp(pix_mp, fmt);
+	return 0;
+}
+
+static int mtk_fd_g_fmt_out_mp(struct file *file, void *fh,
+			       struct v4l2_format *f)
+{
+	struct mtk_fd_ctx *ctx = fh_to_ctx(fh);
+
+	f->fmt.pix_mp = ctx->src_fmt;
+
+	return 0;
+}
+
+static int mtk_fd_s_fmt_out_mp(struct file *file, void *fh,
+			       struct v4l2_format *f)
+{
+	struct mtk_fd_ctx *ctx = fh_to_ctx(fh);
+	struct vb2_queue *vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
+
+	/* Change not allowed if queue is streaming. */
+	if (vb2_is_streaming(vq)) {
+		dev_err(ctx->dev, "Failed to set format, vb2 is busy\n");
+		return -EBUSY;
+	}
+
+	mtk_fd_try_fmt_out_mp(file, fh, f);
+	ctx->src_fmt = f->fmt.pix_mp;
+
+	return 0;
+}
+
+static int mtk_fd_enum_fmt_meta_cap(struct file *file, void *fh,
+				    struct v4l2_fmtdesc *f)
+{
+	if (f->index)
+		return -EINVAL;
+
+	strscpy(f->description, "Face detection result",
+		sizeof(f->description));
+	f->pixelformat = V4L2_META_FMT_MTFD_RESULT;
+	f->flags = 0;
+
+	return 0;
+}
+
+static int mtk_fd_g_fmt_meta_cap(struct file *file, void *fh,
+				 struct v4l2_format *f)
+{
+	f->fmt.meta.dataformat = V4L2_META_FMT_MTFD_RESULT;
+	f->fmt.meta.buffersize = sizeof(struct fd_user_output);
+
+	return 0;
+}
+
+static const struct vb2_ops mtk_fd_vb2_ops = {
+	.queue_setup = mtk_fd_vb2_queue_setup,
+	.buf_out_validate = mtk_fd_vb2_buf_out_validate,
+	.buf_prepare  = mtk_fd_vb2_buf_prepare,
+	.buf_queue = mtk_fd_vb2_buf_queue,
+	.start_streaming = mtk_fd_vb2_start_streaming,
+	.stop_streaming = mtk_fd_vb2_stop_streaming,
+	.wait_prepare = vb2_ops_wait_prepare,
+	.wait_finish = vb2_ops_wait_finish,
+	.buf_request_complete = mtk_fd_vb2_request_complete,
+};
+
+static const struct v4l2_ioctl_ops mtk_fd_v4l2_video_out_ioctl_ops = {
+	.vidioc_querycap = mtk_fd_querycap,
+	.vidioc_enum_fmt_vid_out = mtk_fd_enum_fmt_out_mp,
+	.vidioc_g_fmt_vid_out_mplane = mtk_fd_g_fmt_out_mp,
+	.vidioc_s_fmt_vid_out_mplane = mtk_fd_s_fmt_out_mp,
+	.vidioc_try_fmt_vid_out_mplane = mtk_fd_try_fmt_out_mp,
+	.vidioc_enum_fmt_meta_cap = mtk_fd_enum_fmt_meta_cap,
+	.vidioc_g_fmt_meta_cap = mtk_fd_g_fmt_meta_cap,
+	.vidioc_s_fmt_meta_cap = mtk_fd_g_fmt_meta_cap,
+	.vidioc_try_fmt_meta_cap = mtk_fd_g_fmt_meta_cap,
+	.vidioc_reqbufs = v4l2_m2m_ioctl_reqbufs,
+	.vidioc_create_bufs = v4l2_m2m_ioctl_create_bufs,
+	.vidioc_expbuf = v4l2_m2m_ioctl_expbuf,
+	.vidioc_prepare_buf = v4l2_m2m_ioctl_prepare_buf,
+	.vidioc_querybuf = v4l2_m2m_ioctl_querybuf,
+	.vidioc_qbuf = v4l2_m2m_ioctl_qbuf,
+	.vidioc_dqbuf = v4l2_m2m_ioctl_dqbuf,
+	.vidioc_streamon = v4l2_m2m_ioctl_streamon,
+	.vidioc_streamoff = v4l2_m2m_ioctl_streamoff,
+	.vidioc_subscribe_event = v4l2_ctrl_subscribe_event,
+	.vidioc_unsubscribe_event = v4l2_event_unsubscribe,
+};
+
+static int
+mtk_fd_queue_init(void *priv, struct vb2_queue *src_vq,
+		  struct vb2_queue *dst_vq)
+{
+	struct mtk_fd_ctx *ctx = priv;
+	int ret;
+
+	src_vq->type = V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE;
+	src_vq->io_modes = VB2_MMAP | VB2_DMABUF;
+	src_vq->supports_requests = true;
+	src_vq->drv_priv = ctx;
+	src_vq->ops = &mtk_fd_vb2_ops;
+	src_vq->mem_ops = &vb2_dma_contig_memops;
+	src_vq->buf_struct_size = sizeof(struct v4l2_m2m_buffer);
+	src_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
+	src_vq->lock = &ctx->fd_dev->vfd_lock;
+	src_vq->dev = ctx->fd_dev->v4l2_dev.dev;
+
+	ret = vb2_queue_init(src_vq);
+	if (ret)
+		return ret;
+
+	dst_vq->type = V4L2_BUF_TYPE_META_CAPTURE;
+	dst_vq->io_modes = VB2_MMAP | VB2_DMABUF;
+	dst_vq->drv_priv = ctx;
+	dst_vq->ops = &mtk_fd_vb2_ops;
+	dst_vq->mem_ops = &vb2_dma_contig_memops;
+	dst_vq->buf_struct_size = sizeof(struct v4l2_m2m_buffer);
+	dst_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
+	dst_vq->lock = &ctx->fd_dev->vfd_lock;
+	dst_vq->dev = ctx->fd_dev->v4l2_dev.dev;
+
+	return vb2_queue_init(dst_vq);
+}
+
+static struct v4l2_ctrl_config mtk_fd_controls[] = {
+	{
+		.id = V4L2_CID_MTK_FD_SCALE_DOWN_IMG_WIDTH,
+		.name = "FD scale image widths",
+		.type = V4L2_CTRL_TYPE_U16,
+		.min = MTK_FD_OUTPUT_MIN_WIDTH,
+		.max = MTK_FD_OUTPUT_MAX_WIDTH,
+		.step = 1,
+		.def = MTK_FD_OUTPUT_MAX_WIDTH,
+		.dims = { MTK_FD_SCALE_ARR_NUM },
+	},
+	{
+		.id = V4L2_CID_MTK_FD_SCALE_DOWN_IMG_HEIGHT,
+		.name = "FD scale image heights",
+		.type = V4L2_CTRL_TYPE_U16,
+		.min = MTK_FD_OUTPUT_MIN_HEIGHT,
+		.max = MTK_FD_OUTPUT_MAX_HEIGHT,
+		.step = 1,
+		.def = MTK_FD_OUTPUT_MAX_HEIGHT,
+		.dims = { MTK_FD_SCALE_ARR_NUM },
+	},
+	{
+		.id = V4L2_CID_MTK_FD_SCALE_IMG_NUM,
+		.name = "FD scale size counts",
+		.type = V4L2_CTRL_TYPE_INTEGER,
+		.min = 0,
+		.max = MTK_FD_SCALE_ARR_NUM,
+		.step = 1,
+		.def = 0,
+	},
+	{
+		.id = V4L2_CID_MTK_FD_DETECT_POSE,
+		.name = "FD detect face angle and directions",
+		.type = V4L2_CTRL_TYPE_U16,
+		.min = 0,
+		.max = 0xffff,
+		.step = 1,
+		.def = 0x3ff,
+		.dims = { MTK_FD_FACE_ANGLE_NUM},
+	},
+	{
+		.id = V4L2_CID_MTK_FD_DETECT_SPEED,
+		.name = "FD detection speedup",
+		.type = V4L2_CTRL_TYPE_INTEGER,
+		.min = 0,
+		.max = MTK_FD_MAX_SPEEDUP,
+		.step = 1,
+		.def = 0,
+	},
+	{
+		.id = V4L2_CID_MTK_FD_DETECTION_MODEL,
+		.name = "FD use extra model",
+		.type = V4L2_CTRL_TYPE_BOOLEAN,
+		.min = 0,
+		.max = 1,
+		.step = 1,
+		.def = 0,
+	},
+};
+
+static int mtk_fd_ctrls_setup(struct mtk_fd_ctx *ctx)
+{
+	struct v4l2_ctrl_handler *hdl = &ctx->hdl;
+	int i;
+
+	v4l2_ctrl_handler_init(hdl, V4L2_CID_MTK_FD_MAX);
+	if (hdl->error)
+		return hdl->error;
+
+	for (i = 0; i < ARRAY_SIZE(mtk_fd_controls); i++) {
+		v4l2_ctrl_new_custom(hdl, &mtk_fd_controls[i], ctx);
+		if (hdl->error) {
+			v4l2_ctrl_handler_free(hdl);
+			dev_err(ctx->dev, "Failed to register controls:%d", i);
+			return hdl->error;
+		}
+	}
+
+	ctx->fh.ctrl_handler = &ctx->hdl;
+	v4l2_ctrl_handler_setup(hdl);
+
+	return 0;
+}
+
+static unsigned int get_fd_img_fmt(unsigned int fourcc)
+{
+	switch (fourcc) {
+	case V4L2_PIX_FMT_VYUY:
+		return MTK_FD_HW_FMT_VYUY;
+	case V4L2_PIX_FMT_YUYV:
+		return MTK_FD_HW_FMT_YUYV;
+	case V4L2_PIX_FMT_YVYU:
+		return MTK_FD_HW_FMT_YVYU;
+	case V4L2_PIX_FMT_UYVY:
+		return MTK_FD_HW_FMT_UYVY;
+	case V4L2_PIX_FMT_NV16M:
+		return MTK_FD_HW_FMT_YUV_2P;
+	case V4L2_PIX_FMT_NV61M:
+		return MTK_FD_HW_FMT_YVU_2P;
+	default:
+		return MTK_FD_HW_FMT_UNKNOWN;
+	}
+}
+
+static void init_ctx_fmt(struct mtk_fd_ctx *ctx)
+{
+	struct v4l2_pix_format_mplane *src_fmt = &ctx->src_fmt;
+	struct v4l2_meta_format *dst_fmt = &ctx->dst_fmt;
+
+	/* Initialize M2M source fmt */
+	src_fmt->width = MTK_FD_OUTPUT_MAX_WIDTH;
+	src_fmt->height = MTK_FD_OUTPUT_MAX_HEIGHT;
+	mtk_fd_fill_pixfmt_mp(src_fmt, &mtk_fd_img_fmts[0]);
+
+	/* Initialize M2M destination fmt */
+	dst_fmt->buffersize = sizeof(struct fd_user_output);
+	dst_fmt->dataformat = V4L2_META_FMT_MTFD_RESULT;
+}
+
+/*
+ * V4L2 file operations.
+ */
+static int mtk_vfd_open(struct file *filp)
+{
+	struct mtk_fd_dev *fd = video_drvdata(filp);
+	struct video_device *vdev = video_devdata(filp);
+	struct mtk_fd_ctx *ctx;
+	int ret;
+
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	ctx->fd_dev = fd;
+	ctx->dev = fd->dev;
+	fd->ctx = ctx;
+
+	v4l2_fh_init(&ctx->fh, vdev);
+	filp->private_data = &ctx->fh;
+
+	init_ctx_fmt(ctx);
+
+	ret = mtk_fd_ctrls_setup(ctx);
+	if (ret) {
+		dev_err(ctx->dev, "Failed to set up controls:%d\n", ret);
+		goto err_fh_exit;
+	}
+
+	ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(fd->m2m_dev, ctx,
+					    &mtk_fd_queue_init);
+	if (IS_ERR(ctx->fh.m2m_ctx)) {
+		ret = PTR_ERR(ctx->fh.m2m_ctx);
+		goto err_free_ctrl_handler;
+	}
+
+	v4l2_fh_add(&ctx->fh);
+
+	return 0;
+
+err_free_ctrl_handler:
+	v4l2_ctrl_handler_free(&ctx->hdl);
+err_fh_exit:
+	v4l2_fh_exit(&ctx->fh);
+	kfree(ctx);
+
+	return ret;
+}
+
+static int mtk_vfd_release(struct file *filp)
+{
+	struct mtk_fd_ctx *ctx = container_of(filp->private_data,
+					      struct mtk_fd_ctx, fh);
+
+	v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
+
+	v4l2_ctrl_handler_free(&ctx->hdl);
+	v4l2_fh_del(&ctx->fh);
+	v4l2_fh_exit(&ctx->fh);
+
+	kfree(ctx);
+
+	return 0;
+}
+
+static const struct v4l2_file_operations fd_video_fops = {
+	.owner = THIS_MODULE,
+	.open = mtk_vfd_open,
+	.release = mtk_vfd_release,
+	.poll = v4l2_m2m_fop_poll,
+	.unlocked_ioctl = video_ioctl2,
+	.mmap = v4l2_m2m_fop_mmap,
+#ifdef CONFIG_COMPAT
+	.compat_ioctl32 = v4l2_compat_ioctl32,
+#endif
+
+};
+
+static void mtk_fd_fill_user_param(struct user_param *user_param,
+				   struct v4l2_ctrl_handler *hdl)
+{
+	struct v4l2_ctrl *ctrl;
+	int i;
+
+	ctrl = v4l2_ctrl_find(hdl, V4L2_CID_MTK_FD_SCALE_DOWN_IMG_WIDTH);
+	if (ctrl)
+		for (i = 0; i < ctrl->elems; i++)
+			user_param->scale_img_width[i] = ctrl->p_new.p_u16[i];
+	ctrl = v4l2_ctrl_find(hdl, V4L2_CID_MTK_FD_SCALE_DOWN_IMG_HEIGHT);
+	if (ctrl)
+		for (i = 0; i < ctrl->elems; i++)
+			user_param->scale_img_height[i] = ctrl->p_new.p_u16[i];
+	ctrl = v4l2_ctrl_find(hdl, V4L2_CID_MTK_FD_SCALE_IMG_NUM);
+	if (ctrl)
+		user_param->scale_img_num = ctrl->val;
+
+	ctrl = v4l2_ctrl_find(hdl, V4L2_CID_MTK_FD_DETECT_POSE);
+	if (ctrl)
+		for (i = 0; i < ctrl->elems; i++)
+			user_param->face_directions[i] = ctrl->p_new.p_u16[i];
+	ctrl = v4l2_ctrl_find(hdl, V4L2_CID_MTK_FD_DETECT_SPEED);
+	if (ctrl)
+		user_param->fd_speedup = ctrl->val;
+	ctrl = v4l2_ctrl_find(hdl, V4L2_CID_MTK_FD_DETECTION_MODEL);
+	if (ctrl)
+		user_param->fd_extra_model = ctrl->val;
+}
+
+static void mtk_fd_device_run(void *priv)
+{
+	struct mtk_fd_ctx *ctx = priv;
+	struct mtk_fd_dev *fd = ctx->fd_dev;
+	struct vb2_v4l2_buffer *src_buf, *dst_buf;
+	struct fd_enq_param fd_param;
+	void *plane_vaddr;
+
+	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
+	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+
+	fd_param.src_img[0].dma_addr =
+		vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 0);
+	fd_param.user_result.dma_addr =
+		vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
+	plane_vaddr = vb2_plane_vaddr(&dst_buf->vb2_buf, 0);
+	fd_param.output_vaddr = (u64)(unsigned long)plane_vaddr;
+	fd_param.user_param.src_img_fmt =
+		get_fd_img_fmt(ctx->src_fmt.pixelformat);
+	if (ctx->src_fmt.num_planes == 2)
+		fd_param.src_img[1].dma_addr =
+			vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 1);
+	mtk_fd_fill_user_param(&fd_param.user_param, &ctx->hdl);
+
+	/* Complete request controls if any */
+	v4l2_ctrl_request_complete(src_buf->vb2_buf.req_obj.req, &ctx->hdl);
+
+	fd->output = plane_vaddr;
+	mtk_fd_hw_job_exec(fd, &fd_param);
+}
+
+static struct v4l2_m2m_ops fd_m2m_ops = {
+	.device_run = mtk_fd_device_run,
+};
+
+static const struct media_device_ops fd_m2m_media_ops = {
+	.req_validate	= vb2_request_validate,
+	.req_queue	= v4l2_m2m_request_queue,
+};
+
+static int mtk_fd_video_device_register(struct mtk_fd_dev *fd)
+{
+	struct video_device *vfd = &fd->vfd;
+	struct v4l2_m2m_dev *m2m_dev = fd->m2m_dev;
+	struct device *dev = fd->dev;
+	int ret;
+
+	vfd->fops = &fd_video_fops;
+	vfd->release = video_device_release;
+	vfd->lock = &fd->vfd_lock;
+	vfd->v4l2_dev = &fd->v4l2_dev;
+	vfd->vfl_dir = VFL_DIR_M2M;
+	vfd->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_OUTPUT_MPLANE |
+		V4L2_CAP_META_CAPTURE;
+	vfd->ioctl_ops = &mtk_fd_v4l2_video_out_ioctl_ops;
+
+	strscpy(vfd->name, dev_driver_string(dev), sizeof(vfd->name));
+
+	video_set_drvdata(vfd, fd);
+
+	ret = video_register_device(vfd, VFL_TYPE_GRABBER, 0);
+	if (ret) {
+		dev_err(dev, "Failed to register video device\n");
+		goto err_free_dev;
+	}
+
+	ret = v4l2_m2m_register_media_controller(m2m_dev, vfd,
+					     MEDIA_ENT_F_PROC_VIDEO_STATISTICS);
+	if (ret) {
+		dev_err(dev, "Failed to init mem2mem media controller\n");
+		goto err_unreg_video;
+	}
+	return 0;
+
+err_unreg_video:
+	video_unregister_device(vfd);
+err_free_dev:
+	video_device_release(vfd);
+	return ret;
+}
+
+static int mtk_fd_dev_v4l2_init(struct mtk_fd_dev *fd)
+{
+	struct media_device *mdev = &fd->mdev;
+	struct device *dev = fd->dev;
+	int ret;
+
+	ret = v4l2_device_register(dev, &fd->v4l2_dev);
+	if (ret) {
+		dev_err(dev, "Failed to register v4l2 device\n");
+		return ret;
+	}
+
+	fd->m2m_dev = v4l2_m2m_init(&fd_m2m_ops);
+	if (IS_ERR(fd->m2m_dev)) {
+		dev_err(dev, "Failed to init mem2mem device\n");
+		ret = PTR_ERR(fd->m2m_dev);
+		goto err_unreg_v4l2_dev;
+	}
+
+	mdev->dev = dev;
+	strscpy(mdev->model, dev_driver_string(dev), sizeof(mdev->model));
+	snprintf(mdev->bus_info, sizeof(mdev->bus_info),
+		 "platform:%s", dev_name(dev));
+	media_device_init(mdev);
+	mdev->ops = &fd_m2m_media_ops;
+	fd->v4l2_dev.mdev = mdev;
+
+	ret = mtk_fd_video_device_register(fd);
+	if (ret) {
+		dev_err(dev, "Failed to register video device\n");
+		goto err_cleanup_mdev;
+	}
+
+	ret = media_device_register(mdev);
+	if (ret) {
+		dev_err(dev, "Failed to register mem2mem media device\n");
+		goto err_unreg_vdev;
+	}
+
+	return 0;
+
+err_unreg_vdev:
+	v4l2_m2m_unregister_media_controller(fd->m2m_dev);
+	video_unregister_device(&fd->vfd);
+	video_device_release(&fd->vfd);
+err_cleanup_mdev:
+	media_device_cleanup(mdev);
+	v4l2_m2m_release(fd->m2m_dev);
+err_unreg_v4l2_dev:
+	v4l2_device_unregister(&fd->v4l2_dev);
+	return ret;
+}
+
+static void mtk_fd_dev_v4l2_release(struct mtk_fd_dev *fd)
+{
+	v4l2_m2m_unregister_media_controller(fd->m2m_dev);
+	video_unregister_device(&fd->vfd);
+	video_device_release(&fd->vfd);
+	media_device_cleanup(&fd->mdev);
+	v4l2_m2m_release(fd->m2m_dev);
+	v4l2_device_unregister(&fd->v4l2_dev);
+}
+
+static irqreturn_t mtk_fd_irq(int irq, void *data)
+{
+	struct mtk_fd_dev *fd = (struct mtk_fd_dev *)data;
+
+	/* must read this register otherwise HW will keep sending irq */
+	readl(fd->fd_base + MTK_FD_REG_OFFSET_INT_VAL);
+	fd->output->number = readl(fd->fd_base + MTK_FD_REG_OFFSET_RESULT);
+	dev_dbg(fd->dev, "mtk_fd_face_num:%d\n", fd->output->number);
+
+	mtk_fd_hw_done(fd, VB2_BUF_STATE_DONE);
+	return IRQ_HANDLED;
+}
+
+static int mtk_fd_hw_get_scp_mem(struct mtk_fd_dev *fd)
+{
+	struct device *dev = fd->dev;
+	dma_addr_t addr;
+	void *ptr;
+	u32 ret;
+
+	/*
+	 * Allocate coherent reserved memory for SCP firmware usage.
+	 * The size of SCP composer's memory is fixed to 0x100000
+	 * for the requirement of firmware.
+	 */
+	ptr = dma_alloc_coherent(&fd->scp_pdev->dev,
+				 MTK_FD_HW_WORK_BUF_SIZE, &addr, GFP_KERNEL);
+	if (!ptr)
+		return -ENOMEM;
+
+	fd->scp_mem.scp_addr = addr;
+	fd->scp_mem_virt_addr = ptr;
+	dev_info(dev, "scp addr:%pad va:%pK\n", &addr, ptr);
+
+	/*
+	 * This reserved memory is also be used by FD HW.
+	 * Need to get iova address for FD DMA.
+	 */
+	addr = dma_map_resource(dev, addr, MTK_FD_HW_WORK_BUF_SIZE,
+				DMA_TO_DEVICE, DMA_ATTR_SKIP_CPU_SYNC);
+	if (dma_mapping_error(dev, addr)) {
+		dev_err(dev, "Failed to map scp iova\n");
+		ret = -ENOMEM;
+		goto fail_free_mem;
+	}
+	fd->scp_mem.dma_addr = addr;
+	dev_info(dev, "scp iova addr:%pad\n", &addr);
+
+	return 0;
+
+fail_free_mem:
+	dma_free_coherent(&fd->scp_pdev->dev, MTK_FD_HW_WORK_BUF_SIZE,
+			  ptr, fd->scp_mem.scp_addr);
+	fd->scp_mem.scp_addr = 0;
+
+	return ret;
+}
+
+static int mtk_fd_probe(struct platform_device *pdev)
+{
+	struct mtk_fd_dev *fd;
+	struct device *dev = &pdev->dev;
+
+	struct resource *res;
+	phandle rproc_phandle;
+	int irq;
+	int ret;
+
+	fd = devm_kzalloc(&pdev->dev, sizeof(*fd), GFP_KERNEL);
+	if (!fd)
+		return -ENOMEM;
+
+	dev_set_drvdata(dev, fd);
+	fd->dev = dev;
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0) {
+		dev_err(dev, "Failed to get irq by platform: %d\n", irq);
+		return irq;
+	}
+	ret = devm_request_irq(dev, irq, mtk_fd_irq, IRQF_SHARED,
+			       dev_driver_string(dev),
+			       fd);
+	if (ret) {
+		dev_err(dev, "Failed to request irq\n");
+		return ret;
+	}
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	fd->fd_base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(fd->fd_base)) {
+		dev_err(dev, "Failed to get fd reg base\n");
+		return PTR_ERR(fd->fd_base);
+	}
+
+	fd->fd_clk = devm_clk_get(dev, "fd");
+	if (IS_ERR(fd->fd_clk)) {
+		dev_err(dev, "Failed to get fd_clk_img_fd clock\n");
+		return PTR_ERR(fd->fd_clk);
+	}
+
+	/* init scp */
+	fd->scp_pdev = scp_get_pdev(pdev);
+	if (!fd->scp_pdev) {
+		dev_err(dev, "Failed to get scp device\n");
+		return -ENODEV;
+	}
+
+	if (of_property_read_u32(fd->dev->of_node, "mediatek,scp",
+				 &rproc_phandle)) {
+		dev_err(dev, "Failed to get scp device\n");
+		return -EINVAL;
+	}
+
+	fd->rproc_handle = rproc_get_by_phandle(rproc_phandle);
+	if (!fd->rproc_handle) {
+		dev_err(dev, "Failed to get FD's rproc_handle\n");
+		return -EINVAL;
+	}
+
+	ret = mtk_fd_hw_get_scp_mem(fd);
+	if (ret) {
+		dev_err(dev, "Failed to init scp memory: %d\n", ret);
+		return ret;
+	}
+
+	ret = mtk_fd_hw_alloc_rs_dma_addr(fd);
+	if (ret) {
+		dev_err(dev, "Failed to allocate dma buffer: %d\n", ret);
+		return ret;
+	}
+
+	mutex_init(&fd->vfd_lock);
+	init_completion(&fd->fd_job_finished);
+	INIT_DELAYED_WORK(&fd->job_timeout_work, mtk_fd_job_timeout_work);
+	pm_runtime_enable(dev);
+
+	ret = mtk_fd_dev_v4l2_init(fd);
+	if (ret) {
+		dev_err(dev, "Failed to init v4l2 device: %d\n", ret);
+		goto err_destroy_mutex;
+	}
+
+	return 0;
+
+err_destroy_mutex:
+	mutex_destroy(&fd->vfd_lock);
+	pm_runtime_disable(fd->dev);
+	mtk_fd_free_dma_handle(fd);
+	return ret;
+}
+
+static int mtk_fd_remove(struct platform_device *pdev)
+{
+	struct mtk_fd_dev *fd = dev_get_drvdata(&pdev->dev);
+
+	mtk_fd_dev_v4l2_release(fd);
+	pm_runtime_disable(&pdev->dev);
+	dma_unmap_page_attrs(fd->dev,
+			     fd->scp_mem.dma_addr,
+			     MTK_FD_HW_WORK_BUF_SIZE,
+			     DMA_TO_DEVICE,
+			     DMA_ATTR_SKIP_CPU_SYNC);
+	dma_free_coherent(&fd->scp_pdev->dev,
+			  MTK_FD_HW_WORK_BUF_SIZE,
+			  fd->scp_mem_virt_addr,
+			  fd->scp_mem.scp_addr);
+	mutex_destroy(&fd->vfd_lock);
+	mtk_fd_free_dma_handle(fd);
+	rproc_put(fd->rproc_handle);
+
+	return 0;
+}
+
+static int mtk_fd_suspend(struct device *dev)
+{
+	struct mtk_fd_dev *fd = dev_get_drvdata(dev);
+
+	if (pm_runtime_suspended(dev))
+		return 0;
+
+	v4l2_m2m_suspend(fd->m2m_dev);
+
+	/* suspend FD HW */
+	writel(0x0, fd->fd_base + MTK_FD_REG_OFFSET_INT_EN);
+	writel(0x0, fd->fd_base + MTK_FD_REG_OFFSET_HW_ENABLE);
+	clk_disable_unprepare(fd->fd_clk);
+	dev_dbg(dev, "%s:disable clock\n", __func__);
+
+	return 0;
+}
+
+static int mtk_fd_resume(struct device *dev)
+{
+	struct mtk_fd_dev *fd = dev_get_drvdata(dev);
+	int ret;
+
+	if (pm_runtime_suspended(dev))
+		return 0;
+
+	ret = clk_prepare_enable(fd->fd_clk);
+	if (ret < 0) {
+		dev_dbg(dev, "Failed to open fd clk:%d\n", ret);
+		return ret;
+	}
+
+	/* resume FD HW */
+	writel(MTK_FD_SET_HW_ENABLE, fd->fd_base + MTK_FD_REG_OFFSET_HW_ENABLE);
+	writel(0x1, fd->fd_base + MTK_FD_REG_OFFSET_INT_EN);
+	dev_dbg(dev, "%s:enable clock\n", __func__);
+
+	v4l2_m2m_resume(fd->m2m_dev);
+
+	return 0;
+}
+
+static int mtk_fd_runtime_suspend(struct device *dev)
+{
+	struct mtk_fd_dev *fd = dev_get_drvdata(dev);
+
+	clk_disable_unprepare(fd->fd_clk);
+	return 0;
+}
+
+static int mtk_fd_runtime_resume(struct device *dev)
+{
+	struct mtk_fd_dev *fd = dev_get_drvdata(dev);
+	int ret;
+
+	ret = clk_prepare_enable(fd->fd_clk);
+	if (ret < 0) {
+		dev_err(dev, "Failed to open fd clk:%d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static const struct dev_pm_ops mtk_fd_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(mtk_fd_suspend, mtk_fd_resume)
+	SET_RUNTIME_PM_OPS(mtk_fd_runtime_suspend, mtk_fd_runtime_resume, NULL)
+};
+
+static const struct of_device_id mtk_fd_of_ids[] = {
+	{ .compatible = "mediatek,mt8183-fd", },
+	{}
+};
+MODULE_DEVICE_TABLE(of, mtk_fd_of_ids);
+
+static struct platform_driver mtk_fd_driver = {
+	.probe   = mtk_fd_probe,
+	.remove  = mtk_fd_remove,
+	.driver  = {
+		.name  = "mtk-fd-4.0",
+		.of_match_table = of_match_ptr(mtk_fd_of_ids),
+		.pm = &mtk_fd_pm_ops,
+	}
+};
+module_platform_driver(mtk_fd_driver);
+MODULE_AUTHOR("Jerry-ch Chen <jerry-ch.chen@mediatek.com>");
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("Mediatek FD driver");
diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
index 3dcfc6148f99..eae876ea6d0a 100644
--- a/include/uapi/linux/v4l2-controls.h
+++ b/include/uapi/linux/v4l2-controls.h
@@ -192,6 +192,10 @@ enum v4l2_colorfx {
  * We reserve 16 controls for this driver. */
 #define V4L2_CID_USER_IMX_BASE			(V4L2_CID_USER_BASE + 0x10b0)
 
+/* The base for the mediatek FD driver controls */
+/* We reserve 16 controls for this driver. */
+#define V4L2_CID_USER_MTK_FD_BASE		(V4L2_CID_USER_BASE + 0x10d0)
+
 /* MPEG-class control IDs */
 /* The MPEG controls are applicable to all codec controls
  * and the 'MPEG' part of the define is historical */
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index b5671ce2724f..203e49ebc9e8 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -721,6 +721,9 @@ struct v4l2_pix_format {
 #define V4L2_META_FMT_UVC         v4l2_fourcc('U', 'V', 'C', 'H') /* UVC Payload Header metadata */
 #define V4L2_META_FMT_D4XX        v4l2_fourcc('D', '4', 'X', 'X') /* D4XX Payload Header metadata */
 
+/* Vendor specific - Mediatek Face Detection meta buffer format for firmware */
+#define V4L2_META_FMT_MTFD_RESULT  v4l2_fourcc('M', 'T', 'f', 'd') /* FD meta capture buffer */
+
 /* priv field value to indicates that subsequent fields are valid. */
 #define V4L2_PIX_FMT_PRIV_MAGIC		0xfeedcafe
 
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
