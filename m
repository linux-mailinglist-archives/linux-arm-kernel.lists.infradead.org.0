Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB96143A09
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:55:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTGQ19Akj/KPYaJqyLBaaHeqVbpOaLB8Lh7sixGI7xs=; b=pQt02qcH986MYI
	CTCT9k2058qc4IyC8C8r6oGq306hpvxfggOJJeOYjIVX+gCi8dsfL4cfQEIX12HGl53UOW5JTi6kM
	IYM39drxoa/VSe7TMQgpBw6k8DKnmlddptbx6IuVqXx+sxcJX4LYq+YE2w8WSNFM5CKeLXZVtPrXY
	wSWqt2aKUXMy4NPBYEPzydo//y3xirKSTaA2QOhMAPNAwLJbPBk1Xl0qzzv1suuz07bUlfCI++SeT
	5QkjM6KplMTYsAv8j9aCWNXgm4q7wvByl/I58eovyscQg3NmrvcYAi6ZIGu8eBuvyG5u8ni958nP9
	I57/nCOPfhyNClFeCdIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqGA-0002Yj-D8; Tue, 21 Jan 2020 09:55:46 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqEb-0008IT-E8; Tue, 21 Jan 2020 09:54:13 +0000
X-UUID: d9b682201918404db5b30db2a85da7c2-20200121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=0nvbxX7bIBn8j+BcMT4VEjyrU6QLQbfoJbCMo58S5GQ=; 
 b=H/cTmj6j43VkGzSJuwcdy15b5Yfl07sjOzB2oTUu015tQs/YtM8S8UiIC+0M3+SE4dQ1YX00ub0BxYs4hJWLcVP5RlIZGXJwFDaTeDpXHMT0smuvjIdqjeUZY4OinYIDlMeA2sxSsVd4Dm4ft2BtEAF9aMBuzJEM0SGxcBYw9EQ=;
X-UUID: d9b682201918404db5b30db2a85da7c2-20200121
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1506437671; Tue, 21 Jan 2020 01:54:06 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 Jan 2020 01:55:09 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 Jan 2020 17:53:23 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 21 Jan 2020 17:52:01 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v6 5/5] media: platform: Add jpeg dec/enc feature
Date: Tue, 21 Jan 2020 17:53:21 +0800
Message-ID: <20200121095320.32258-6-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200121095320.32258-1-xia.jiang@mediatek.com>
References: <20200121095320.32258-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_015409_546225_9D17A37C 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.9 PDS_OTHER_BAD_TLD      Untrustworthy TLDs [URI: r.top (top)]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Xia Jiang <xia.jiang@mediatek.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, linux-mediatek@lists.infradead.org,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add mtk jpeg encode v4l2 driver based on jpeg decode, because that jpeg
decode and encode have great similarities with function operation.

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
v6: add space to arounding '+'.
    alignment 'struct mtk_jpeg_fmt *fmt' match open parenthesis.
    change 'mtk_jpeg_enc_set_encFormat' to 'mtk_jpeg_enc_set_enc_format'.
    make 'mtk_jpeg_ctrls_setup' to static prototype.
    delete unused variables 'jpeg'/'align_h'/'align_w'/'flags'.
    initialize 'yuv_format'/'enc_quality' variables.

v5: support crop for encoder and compose for decoder in s_selection and
    g_selection function.
    use clamp() to replace mtk_jpeg_bound_align_image() and round_up()
    to replace mtk_jpeg_align().
    delete jpeg_enc_param/mtk_jpeg_enc_param structure and
    mtk_jpeg_set_param(), program the registers directly based on
    the original V4L2 values.
    move macro definition about hw to mtk_jpeg_enc_reg.h.
    delete unnecessary V4L2 logs in driver.
    cancel spin lock and unlock operation in deviec run function.
    change jpeg enc register offset hex numberals from upercase to
    lowercase.
  
v4: split mtk_jpeg_try_fmt_mplane() to two functions, one for encoder,                                                      
    one for decoder.                                                          
    split mtk_jpeg_set_default_params() to two functions, one for                                                          
    encoder, one for decoder.                                                          
    add cropping support for encoder in g/s_selection ioctls.                                                          
    change exif mode support by using V4L2_JPEG_ACTIVE_MARKER_APP1.                                                         
    change MTK_JPEG_MAX_WIDTH/MTK_JPEG_MAX_HEIGH from 8192 to 65535 by                                                      
    specification.                                                          
    move width shifting operation behind aligning operation in                                                          
    mtk_jpeg_try_enc_fmt_mplane() for bug fix.                                                          
    fix user abuseing data_offset issue for DMABUF in                                                          
    mtk_jpeg_set_enc_src().                                                          
    fix kbuild warings: change MTK_JPEG_MIN_HEIGHT/MTK_JPEG_MAX_HEIGHT                                                      
                        and MTK_JPEG_MIN_WIDTH/MTK_JPEG_MAX_WIDTH from                                                      
                        'int' type to 'unsigned int' type.                                                          
                        fix msleadingly indented of 'else'.                                                          
                                                          
v3: delete Change-Id.                                                          
    only test once handler->error after the last v4l2_ctrl_new_std().                                                       
    seperate changes of v4l2-ctrls.c and v4l2-controls.h to new patch.                                                      
                                                          
v2: fix compliance test fail, check created buffer size in driver. 
---
 drivers/media/platform/mtk-jpeg/Makefile      |   5 +-
 .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 681 ++++++++++++++----
 .../media/platform/mtk-jpeg/mtk_jpeg_core.h   |  43 +-
 .../media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h |   7 +-
 .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c | 273 +++++++
 .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h |  86 +++
 .../platform/mtk-jpeg/mtk_jpeg_enc_reg.h      |  78 ++
 7 files changed, 1007 insertions(+), 166 deletions(-)
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_reg.h

diff --git a/drivers/media/platform/mtk-jpeg/Makefile b/drivers/media/platform/mtk-jpeg/Makefile
index 48516dcf96e6..76c33aad0f3f 100644
--- a/drivers/media/platform/mtk-jpeg/Makefile
+++ b/drivers/media/platform/mtk-jpeg/Makefile
@@ -1,3 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
-mtk_jpeg-objs := mtk_jpeg_core.o mtk_jpeg_dec_hw.o mtk_jpeg_dec_parse.o
+mtk_jpeg-objs := mtk_jpeg_core.o \
+		 mtk_jpeg_dec_hw.o \
+		 mtk_jpeg_dec_parse.o \
+		 mtk_jpeg_enc_hw.o
 obj-$(CONFIG_VIDEO_MEDIATEK_JPEG) += mtk_jpeg.o
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
index d6220d7a691a..53ae94a7eee0 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
@@ -3,6 +3,7 @@
  * Copyright (c) 2016 MediaTek Inc.
  * Author: Ming Hsiu Tsai <minghsiu.tsai@mediatek.com>
  *         Rick Chang <rick.chang@mediatek.com>
+ *         Xia Jiang <xia.jiang@mediatek.com>
  */
 
 #include <linux/clk.h>
@@ -23,6 +24,7 @@
 #include <media/videobuf2-dma-contig.h>
 #include <soc/mediatek/smi.h>
 
+#include "mtk_jpeg_enc_hw.h"
 #include "mtk_jpeg_dec_hw.h"
 #include "mtk_jpeg_core.h"
 #include "mtk_jpeg_dec_parse.h"
@@ -31,7 +33,8 @@ static struct mtk_jpeg_fmt mtk_jpeg_formats[] = {
 	{
 		.fourcc		= V4L2_PIX_FMT_JPEG,
 		.colplanes	= 1,
-		.flags		= MTK_JPEG_FMT_FLAG_DEC_OUTPUT,
+		.flags		= MTK_JPEG_FMT_FLAG_DEC_OUTPUT |
+				  MTK_JPEG_FMT_FLAG_ENC_CAPTURE,
 	},
 	{
 		.fourcc		= V4L2_PIX_FMT_YUV420M,
@@ -51,6 +54,42 @@ static struct mtk_jpeg_fmt mtk_jpeg_formats[] = {
 		.v_align	= 3,
 		.flags		= MTK_JPEG_FMT_FLAG_DEC_CAPTURE,
 	},
+	{
+		.fourcc		= V4L2_PIX_FMT_NV12M,
+		.h_sample	= {4, 2, 2},
+		.v_sample	= {4, 2, 2},
+		.colplanes	= 2,
+		.h_align	= 4,
+		.v_align	= 4,
+		.flags		= MTK_JPEG_FMT_FLAG_ENC_OUTPUT,
+	},
+	{
+		.fourcc		= V4L2_PIX_FMT_NV21M,
+		.h_sample	= {4, 2, 2},
+		.v_sample	= {4, 2, 2},
+		.colplanes	= 2,
+		.h_align	= 4,
+		.v_align	= 4,
+		.flags		= MTK_JPEG_FMT_FLAG_ENC_OUTPUT,
+	},
+	{
+		.fourcc		= V4L2_PIX_FMT_YUYV,
+		.h_sample	= {4, 2, 2},
+		.v_sample	= {4, 4, 4},
+		.colplanes	= 1,
+		.h_align	= 4,
+		.v_align	= 3,
+		.flags		= MTK_JPEG_FMT_FLAG_ENC_OUTPUT,
+	},
+	{
+		.fourcc		= V4L2_PIX_FMT_YVYU,
+		.h_sample	= {4, 2, 2},
+		.v_sample	= {4, 4, 4},
+		.colplanes	= 1,
+		.h_align	= 4,
+		.v_align	= 3,
+		.flags		= MTK_JPEG_FMT_FLAG_ENC_OUTPUT,
+	},
 };
 
 #define MTK_JPEG_NUM_FORMATS ARRAY_SIZE(mtk_jpeg_formats)
@@ -70,6 +109,11 @@ struct mtk_jpeg_src_buf {
 static int debug;
 module_param(debug, int, 0644);
 
+static inline struct mtk_jpeg_ctx *ctrl_to_ctx(struct v4l2_ctrl *ctrl)
+{
+	return container_of(ctrl->handler, struct mtk_jpeg_ctx, ctrl_hdl);
+}
+
 static inline struct mtk_jpeg_ctx *mtk_jpeg_fh_to_ctx(struct v4l2_fh *fh)
 {
 	return container_of(fh, struct mtk_jpeg_ctx, fh);
@@ -86,14 +130,69 @@ static int mtk_jpeg_querycap(struct file *file, void *priv,
 {
 	struct mtk_jpeg_dev *jpeg = video_drvdata(file);
 
-	strscpy(cap->driver, MTK_JPEG_NAME " decoder", sizeof(cap->driver));
-	strscpy(cap->card, MTK_JPEG_NAME " decoder", sizeof(cap->card));
+	strscpy(cap->driver, MTK_JPEG_NAME, sizeof(cap->driver));
+	if (jpeg->mode ==  MTK_JPEG_ENC)
+		strscpy(cap->card, MTK_JPEG_NAME " encoder", sizeof(cap->card));
+	else
+		strscpy(cap->card, MTK_JPEG_NAME " decoder", sizeof(cap->card));
 	snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
 		 dev_name(jpeg->dev));
 
 	return 0;
 }
 
+static int vidioc_jpeg_s_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct mtk_jpeg_ctx *ctx = ctrl_to_ctx(ctrl);
+	int ret = 0;
+
+	switch (ctrl->id) {
+	case V4L2_CID_JPEG_RESTART_INTERVAL:
+		ctx->restart_interval = ctrl->val;
+		break;
+	case V4L2_CID_JPEG_COMPRESSION_QUALITY:
+		ctx->enc_quality = ctrl->val;
+		break;
+	case V4L2_CID_JPEG_ACTIVE_MARKER:
+		ctx->enable_exif = ctrl->val & V4L2_JPEG_ACTIVE_MARKER_APP1;
+		break;
+	}
+
+	return ret;
+}
+
+static const struct v4l2_ctrl_ops mtk_jpeg_ctrl_ops = {
+	.s_ctrl = vidioc_jpeg_s_ctrl,
+};
+
+static int mtk_jpeg_ctrls_setup(struct mtk_jpeg_ctx *ctx)
+{
+	const struct v4l2_ctrl_ops *ops = &mtk_jpeg_ctrl_ops;
+	struct v4l2_ctrl_handler *handler = &ctx->ctrl_hdl;
+	struct mtk_jpeg_dev *jpeg = ctx->jpeg;
+
+	v4l2_ctrl_handler_init(handler, 3);
+
+	if (jpeg->mode == MTK_JPEG_ENC) {
+		v4l2_ctrl_new_std(handler, ops, V4L2_CID_JPEG_RESTART_INTERVAL,
+				  0, 100, 1, 0);
+		v4l2_ctrl_new_std(handler, ops,
+				  V4L2_CID_JPEG_COMPRESSION_QUALITY, 48, 100, 1,
+				  90);
+		v4l2_ctrl_new_std(handler, ops, V4L2_CID_JPEG_ACTIVE_MARKER, 0,
+				  V4L2_JPEG_ACTIVE_MARKER_APP1, 0, 0);
+
+		if (handler->error) {
+			v4l2_ctrl_handler_free(&ctx->ctrl_hdl);
+			return handler->error;
+		}
+	}
+
+	v4l2_ctrl_handler_setup(&ctx->ctrl_hdl);
+
+	return 0;
+}
+
 static int mtk_jpeg_enum_fmt(struct mtk_jpeg_fmt *mtk_jpeg_formats, int n,
 			     struct v4l2_fmtdesc *f, u32 type)
 {
@@ -118,19 +217,27 @@ static int mtk_jpeg_enum_fmt(struct mtk_jpeg_fmt *mtk_jpeg_formats, int n,
 static int mtk_jpeg_enum_fmt_vid_cap(struct file *file, void *priv,
 				     struct v4l2_fmtdesc *f)
 {
+	struct mtk_jpeg_ctx *ctx = mtk_jpeg_fh_to_ctx(priv);
+
 	return mtk_jpeg_enum_fmt(mtk_jpeg_formats, MTK_JPEG_NUM_FORMATS, f,
+				 ctx->jpeg->mode == MTK_JPEG_ENC ?
+				 MTK_JPEG_FMT_FLAG_ENC_CAPTURE :
 				 MTK_JPEG_FMT_FLAG_DEC_CAPTURE);
 }
 
 static int mtk_jpeg_enum_fmt_vid_out(struct file *file, void *priv,
 				     struct v4l2_fmtdesc *f)
 {
+	struct mtk_jpeg_ctx *ctx = mtk_jpeg_fh_to_ctx(priv);
+
 	return mtk_jpeg_enum_fmt(mtk_jpeg_formats, MTK_JPEG_NUM_FORMATS, f,
+				 ctx->jpeg->mode == MTK_JPEG_ENC ?
+				 MTK_JPEG_FMT_FLAG_ENC_OUTPUT :
 				 MTK_JPEG_FMT_FLAG_DEC_OUTPUT);
 }
 
-static struct mtk_jpeg_q_data *mtk_jpeg_get_q_data(struct mtk_jpeg_ctx *ctx,
-						   enum v4l2_buf_type type)
+static struct mtk_jpeg_q_data *
+mtk_jpeg_get_q_data(struct mtk_jpeg_ctx *ctx, enum v4l2_buf_type type)
 {
 	if (V4L2_TYPE_IS_OUTPUT(type))
 		return &ctx->out_q;
@@ -143,9 +250,14 @@ static struct mtk_jpeg_fmt *mtk_jpeg_find_format(struct mtk_jpeg_ctx *ctx,
 {
 	unsigned int k, fmt_flag;
 
-	fmt_flag = (fmt_type == MTK_JPEG_FMT_TYPE_OUTPUT) ?
-		   MTK_JPEG_FMT_FLAG_DEC_OUTPUT :
-		   MTK_JPEG_FMT_FLAG_DEC_CAPTURE;
+	if (ctx->jpeg->mode ==  MTK_JPEG_ENC)
+		fmt_flag = (fmt_type == MTK_JPEG_FMT_TYPE_OUTPUT) ?
+			   MTK_JPEG_FMT_FLAG_ENC_OUTPUT :
+			   MTK_JPEG_FMT_FLAG_ENC_CAPTURE;
+	else
+		fmt_flag = (fmt_type == MTK_JPEG_FMT_TYPE_OUTPUT) ?
+			   MTK_JPEG_FMT_FLAG_DEC_OUTPUT :
+			   MTK_JPEG_FMT_FLAG_DEC_CAPTURE;
 
 	for (k = 0; k < MTK_JPEG_NUM_FORMATS; k++) {
 		struct mtk_jpeg_fmt *fmt = &mtk_jpeg_formats[k];
@@ -177,9 +289,73 @@ static void mtk_jpeg_adjust_fmt_mplane(struct mtk_jpeg_ctx *ctx,
 	}
 }
 
-static int mtk_jpeg_try_fmt_mplane(struct v4l2_format *f,
-				   struct mtk_jpeg_fmt *fmt,
-				   struct mtk_jpeg_ctx *ctx, int q_type)
+static int mtk_jpeg_try_enc_fmt_mplane(struct v4l2_format *f,
+				       struct mtk_jpeg_fmt *fmt,
+				       struct mtk_jpeg_ctx *ctx, int q_type)
+{
+	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
+	int i;
+
+	memset(pix_mp->reserved, 0, sizeof(pix_mp->reserved));
+	pix_mp->field = V4L2_FIELD_NONE;
+
+	if (ctx->state != MTK_JPEG_INIT) {
+		mtk_jpeg_adjust_fmt_mplane(ctx, f);
+		return 0;
+	}
+
+	pix_mp->num_planes = fmt->colplanes;
+	pix_mp->pixelformat = fmt->fourcc;
+
+	if (q_type == MTK_JPEG_FMT_TYPE_OUTPUT) {
+		if (pix_mp->num_planes == 1U) {
+			pix_mp->height = clamp(round_up(pix_mp->height, 8),
+					       MTK_JPEG_MIN_HEIGHT,
+					       MTK_JPEG_MAX_HEIGHT);
+			pix_mp->width = clamp(round_up(pix_mp->width, 32),
+					      MTK_JPEG_MIN_WIDTH,
+					      MTK_JPEG_MAX_WIDTH);
+			pix_mp->plane_fmt[0].bytesperline = pix_mp->width * 2;
+			pix_mp->plane_fmt[0].sizeimage =
+				pix_mp->width * pix_mp->height * 2;
+		}
+		if (pix_mp->num_planes == 2U) {
+			pix_mp->height = clamp(round_up(pix_mp->height, 16),
+					       MTK_JPEG_MIN_HEIGHT,
+					       MTK_JPEG_MAX_HEIGHT);
+			pix_mp->width = clamp(round_up(pix_mp->width, 16),
+					      MTK_JPEG_MIN_WIDTH,
+					      MTK_JPEG_MAX_WIDTH);
+			for (i = 0; i < pix_mp->num_planes; i++) {
+				pix_mp->plane_fmt[i].bytesperline =
+					pix_mp->width;
+				pix_mp->plane_fmt[i].sizeimage =
+					pix_mp->width * pix_mp->height /
+					(i + 1);
+			}
+		}
+	} else {
+		pix_mp->height = clamp(pix_mp->height, MTK_JPEG_MIN_HEIGHT,
+				       MTK_JPEG_MAX_HEIGHT);
+		pix_mp->width = clamp(pix_mp->width, MTK_JPEG_MIN_WIDTH,
+				      MTK_JPEG_MAX_WIDTH);
+
+		if (fmt->fourcc == V4L2_PIX_FMT_JPEG) {
+			pix_mp->plane_fmt[0].bytesperline = 0;
+			pix_mp->plane_fmt[0].sizeimage =
+				round_up(pix_mp->plane_fmt[0].sizeimage, 128);
+			if (pix_mp->plane_fmt[0].sizeimage == 0)
+				pix_mp->plane_fmt[0].sizeimage =
+					MTK_JPEG_DEFAULT_SIZEIMAGE;
+		}
+	}
+
+	return 0;
+}
+
+static int mtk_jpeg_try_dec_fmt_mplane(struct v4l2_format *f,
+				       struct mtk_jpeg_fmt *fmt,
+				       struct mtk_jpeg_ctx *ctx, int q_type)
 {
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
 	int i;
@@ -286,6 +462,7 @@ static int mtk_jpeg_try_fmt_vid_cap_mplane(struct file *file, void *priv,
 {
 	struct mtk_jpeg_ctx *ctx = mtk_jpeg_fh_to_ctx(priv);
 	struct mtk_jpeg_fmt *fmt;
+	struct mtk_jpeg_dev *jpeg = ctx->jpeg;
 
 	fmt = mtk_jpeg_find_format(ctx, f->fmt.pix_mp.pixelformat,
 				   MTK_JPEG_FMT_TYPE_CAPTURE);
@@ -299,7 +476,12 @@ static int mtk_jpeg_try_fmt_vid_cap_mplane(struct file *file, void *priv,
 		 (fmt->fourcc >> 16 & 0xff),
 		 (fmt->fourcc >> 24 & 0xff));
 
-	return mtk_jpeg_try_fmt_mplane(f, fmt, ctx, MTK_JPEG_FMT_TYPE_CAPTURE);
+	if (jpeg->mode == MTK_JPEG_ENC)
+		return mtk_jpeg_try_enc_fmt_mplane(f, fmt, ctx,
+						   MTK_JPEG_FMT_TYPE_CAPTURE);
+	else
+		return mtk_jpeg_try_dec_fmt_mplane(f, fmt, ctx,
+						   MTK_JPEG_FMT_TYPE_CAPTURE);
 }
 
 static int mtk_jpeg_try_fmt_vid_out_mplane(struct file *file, void *priv,
@@ -307,6 +489,7 @@ static int mtk_jpeg_try_fmt_vid_out_mplane(struct file *file, void *priv,
 {
 	struct mtk_jpeg_ctx *ctx = mtk_jpeg_fh_to_ctx(priv);
 	struct mtk_jpeg_fmt *fmt;
+	struct mtk_jpeg_dev *jpeg = ctx->jpeg;
 
 	fmt = mtk_jpeg_find_format(ctx, f->fmt.pix_mp.pixelformat,
 				   MTK_JPEG_FMT_TYPE_OUTPUT);
@@ -320,7 +503,12 @@ static int mtk_jpeg_try_fmt_vid_out_mplane(struct file *file, void *priv,
 		 (fmt->fourcc >> 16 & 0xff),
 		 (fmt->fourcc >> 24 & 0xff));
 
-	return mtk_jpeg_try_fmt_mplane(f, fmt, ctx, MTK_JPEG_FMT_TYPE_OUTPUT);
+	if (jpeg->mode == MTK_JPEG_ENC)
+		return mtk_jpeg_try_enc_fmt_mplane(f, fmt, ctx,
+						   MTK_JPEG_FMT_TYPE_OUTPUT);
+	else
+		return mtk_jpeg_try_dec_fmt_mplane(f, fmt, ctx,
+						   MTK_JPEG_FMT_TYPE_OUTPUT);
 }
 
 static int mtk_jpeg_s_fmt_mplane(struct mtk_jpeg_ctx *ctx,
@@ -425,28 +613,48 @@ static int mtk_jpeg_g_selection(struct file *file, void *priv,
 				struct v4l2_selection *s)
 {
 	struct mtk_jpeg_ctx *ctx = mtk_jpeg_fh_to_ctx(priv);
+	struct mtk_jpeg_dev *jpeg = ctx->jpeg;
 
-	if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
-		return -EINVAL;
+	if (jpeg->mode == MTK_JPEG_ENC) {
+		if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
+			return -EINVAL;
 
-	switch (s->target) {
-	case V4L2_SEL_TGT_COMPOSE:
-	case V4L2_SEL_TGT_COMPOSE_DEFAULT:
-		s->r.width = ctx->out_q.w;
-		s->r.height = ctx->out_q.h;
-		s->r.left = 0;
-		s->r.top = 0;
-		break;
-	case V4L2_SEL_TGT_COMPOSE_BOUNDS:
-	case V4L2_SEL_TGT_COMPOSE_PADDED:
-		s->r.width = ctx->cap_q.w;
-		s->r.height = ctx->cap_q.h;
-		s->r.left = 0;
-		s->r.top = 0;
-		break;
-	default:
-		return -EINVAL;
+		switch (s->target) {
+		case V4L2_SEL_TGT_CROP:
+		case V4L2_SEL_TGT_CROP_BOUNDS:
+		case V4L2_SEL_TGT_CROP_DEFAULT:
+			s->r.width = ctx->out_q.w;
+			s->r.height = ctx->out_q.h;
+			s->r.left = 0;
+			s->r.top = 0;
+			break;
+		default:
+			return -EINVAL;
+		}
+	} else {
+		if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
+			return -EINVAL;
+
+		switch (s->target) {
+		case V4L2_SEL_TGT_COMPOSE:
+		case V4L2_SEL_TGT_COMPOSE_DEFAULT:
+			s->r.width = ctx->out_q.w;
+			s->r.height = ctx->out_q.h;
+			s->r.left = 0;
+			s->r.top = 0;
+			break;
+		case V4L2_SEL_TGT_COMPOSE_BOUNDS:
+		case V4L2_SEL_TGT_COMPOSE_PADDED:
+			s->r.width = ctx->cap_q.w;
+			s->r.height = ctx->cap_q.h;
+			s->r.left = 0;
+			s->r.top = 0;
+			break;
+		default:
+			return -EINVAL;
+		}
 	}
+
 	return 0;
 }
 
@@ -454,20 +662,38 @@ static int mtk_jpeg_s_selection(struct file *file, void *priv,
 				struct v4l2_selection *s)
 {
 	struct mtk_jpeg_ctx *ctx = mtk_jpeg_fh_to_ctx(priv);
+	struct mtk_jpeg_dev *jpeg = ctx->jpeg;
 
-	if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
-		return -EINVAL;
+	if (jpeg->mode == MTK_JPEG_ENC) {
+		if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
+			return -EINVAL;
 
-	switch (s->target) {
-	case V4L2_SEL_TGT_COMPOSE:
-		s->r.left = 0;
-		s->r.top = 0;
-		ctx->out_q.w = s->r.width;
-		ctx->out_q.h = s->r.height;
-		break;
-	default:
-		return -EINVAL;
+		switch (s->target) {
+		case V4L2_SEL_TGT_CROP:
+			s->r.left = 0;
+			s->r.top = 0;
+			ctx->out_q.w = s->r.width;
+			ctx->out_q.h = s->r.height;
+			break;
+		default:
+			return -EINVAL;
+		}
+	} else {
+		if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
+			return -EINVAL;
+
+		switch (s->target) {
+		case V4L2_SEL_TGT_COMPOSE:
+			s->r.left = 0;
+			s->r.top = 0;
+			ctx->out_q.w = s->r.width;
+			ctx->out_q.h = s->r.height;
+			break;
+		default:
+			return -EINVAL;
+		}
 	}
+
 	return 0;
 }
 
@@ -643,29 +869,42 @@ static void mtk_jpeg_buf_queue(struct vb2_buffer *vb)
 		goto end;
 
 	jpeg_src_buf = mtk_jpeg_vb2_to_srcbuf(vb);
-	param = &jpeg_src_buf->dec_param;
-	memset(param, 0, sizeof(*param));
-
-	if (jpeg_src_buf->flags & MTK_JPEG_BUF_FLAGS_LAST_FRAME) {
-		v4l2_dbg(1, debug, &jpeg->v4l2_dev, "Got eos\n");
-		goto end;
-	}
-	header_valid = mtk_jpeg_parse(param, (u8 *)vb2_plane_vaddr(vb, 0),
-				      vb2_get_plane_payload(vb, 0));
-	if (!header_valid) {
-		v4l2_err(&jpeg->v4l2_dev, "Header invalid.\n");
-		vb2_buffer_done(vb, VB2_BUF_STATE_ERROR);
-		return;
-	}
-
-	if (ctx->state == MTK_JPEG_INIT) {
-		struct vb2_queue *dst_vq = v4l2_m2m_get_vq(
-			ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
+	if (jpeg->mode == MTK_JPEG_ENC) {
+		if (jpeg_src_buf->flags & MTK_JPEG_BUF_FLAGS_LAST_FRAME) {
+			v4l2_dbg(1, debug, &jpeg->v4l2_dev, "Got eos");
+			goto end;
+		}
+		if (ctx->state == MTK_JPEG_INIT)
+			ctx->state = MTK_JPEG_RUNNING;
+	} else {
+		param = &jpeg_src_buf->dec_param;
+		memset(param, 0, sizeof(*param));
+
+		if (jpeg_src_buf->flags & MTK_JPEG_BUF_FLAGS_LAST_FRAME) {
+			v4l2_dbg(1, debug, &jpeg->v4l2_dev, "Got eos\n");
+			goto end;
+		}
+		header_valid = mtk_jpeg_parse(param,
+					      (u8 *)vb2_plane_vaddr(vb, 0),
+					      vb2_get_plane_payload(vb, 0));
+		if (!header_valid) {
+			v4l2_err(&jpeg->v4l2_dev, "Header invalid.\n");
+			vb2_buffer_done(vb, VB2_BUF_STATE_ERROR);
+			return;
+		}
 
-		mtk_jpeg_queue_src_chg_event(ctx);
-		mtk_jpeg_set_queue_data(ctx, param);
-		ctx->state = vb2_is_streaming(dst_vq) ?
-				MTK_JPEG_SOURCE_CHANGE : MTK_JPEG_RUNNING;
+		if (ctx->state == MTK_JPEG_INIT) {
+			struct vb2_queue *dst_vq;
+
+			dst_vq = v4l2_m2m_get_vq
+					(ctx->fh.m2m_ctx,
+					 V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
+			mtk_jpeg_queue_src_chg_event(ctx);
+			mtk_jpeg_set_queue_data(ctx, param);
+			ctx->state = vb2_is_streaming(dst_vq) ?
+					MTK_JPEG_SOURCE_CHANGE :
+					MTK_JPEG_RUNNING;
+		}
 	}
 end:
 	v4l2_m2m_buf_queue(ctx->fh.m2m_ctx, to_vb2_v4l2_buffer(vb));
@@ -708,16 +947,16 @@ static void mtk_jpeg_stop_streaming(struct vb2_queue *q)
 	 * subsampling. Update capture queue when the stream is off.
 	 */
 	if (ctx->state == MTK_JPEG_SOURCE_CHANGE &&
-	    !V4L2_TYPE_IS_OUTPUT(q->type)) {
+	    !V4L2_TYPE_IS_OUTPUT(q->type) &&
+	    ctx->jpeg->mode == MTK_JPEG_DEC) {
 		struct mtk_jpeg_src_buf *src_buf;
 
 		vb = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 		src_buf = mtk_jpeg_vb2_to_srcbuf(&vb->vb2_buf);
 		mtk_jpeg_set_queue_data(ctx, &src_buf->dec_param);
 		ctx->state = MTK_JPEG_RUNNING;
-	} else if (V4L2_TYPE_IS_OUTPUT(q->type)) {
+	} else if (V4L2_TYPE_IS_OUTPUT(q->type))
 		ctx->state = MTK_JPEG_INIT;
-	}
 
 	while ((vb = mtk_jpeg_buf_remove(ctx, q->type)))
 		v4l2_m2m_buf_done(vb, VB2_BUF_STATE_ERROR);
@@ -772,6 +1011,45 @@ static int mtk_jpeg_set_dec_dst(struct mtk_jpeg_ctx *ctx,
 	return 0;
 }
 
+static void mtk_jpeg_set_enc_dst(struct mtk_jpeg_ctx *ctx, void __iomem *base,
+				 struct vb2_buffer *dst_buf,
+				 struct mtk_jpeg_enc_bs *bs)
+{
+	bs->dma_addr = vb2_dma_contig_plane_dma_addr(dst_buf, 0);
+	bs->dma_addr_offset = ctx->enable_exif ? MTK_JPEG_DEFAULT_EXIF_SIZE : 0;
+	bs->dma_addr_offsetmask = bs->dma_addr & JPEG_ENC_DST_ADDR_OFFSET_MASK;
+	bs->size = round_up(vb2_plane_size(dst_buf, 0), 128);
+
+	mtk_jpeg_enc_set_dst_addr(base, bs->dma_addr, bs->size,
+				  bs->dma_addr_offset,
+				  bs->dma_addr_offsetmask);
+}
+
+static void mtk_jpeg_set_enc_src(struct mtk_jpeg_ctx *ctx, void __iomem *base,
+				 struct vb2_buffer *src_buf,
+				 struct mtk_jpeg_enc_fb *fb)
+{
+	int i;
+
+	mtk_jpeg_enc_set_img_size(base, ctx->out_q.w, ctx->out_q.h);
+	mtk_jpeg_enc_set_enc_format(base, ctx->out_q.fmt->fourcc);
+	mtk_jpeg_enc_set_blk_num(base, ctx->out_q.fmt->fourcc, ctx->out_q.w,
+				 ctx->out_q.h);
+	mtk_jpeg_enc_set_stride(base, ctx->out_q.fmt->fourcc, ctx->out_q.w,
+				ctx->out_q.h, ctx->out_q.bytesperline[0]);
+
+	for (i = 0; i < src_buf->num_planes; i++) {
+		fb->fb_addr[i].dma_addr =
+			vb2_dma_contig_plane_dma_addr(src_buf, i) +
+			src_buf->planes[i].data_offset;
+		fb->fb_addr[i].size = vb2_plane_size(src_buf, i) -
+				      src_buf->planes[i].data_offset;
+	}
+
+	mtk_jpeg_enc_set_src_addr(base, fb->fb_addr[0].dma_addr,
+				  fb->fb_addr[1].dma_addr);
+}
+
 static void mtk_jpeg_device_run(void *priv)
 {
 	struct mtk_jpeg_ctx *ctx = priv;
@@ -781,6 +1059,8 @@ static void mtk_jpeg_device_run(void *priv)
 	struct mtk_jpeg_src_buf *jpeg_src_buf;
 	struct mtk_jpeg_bs bs;
 	struct mtk_jpeg_fb fb;
+	struct mtk_jpeg_enc_bs enc_bs;
+	struct mtk_jpeg_enc_fb enc_fb;
 	int i;
 
 	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
@@ -791,28 +1071,44 @@ static void mtk_jpeg_device_run(void *priv)
 		for (i = 0; i < dst_buf->vb2_buf.num_planes; i++)
 			vb2_set_plane_payload(&dst_buf->vb2_buf, i, 0);
 		buf_state = VB2_BUF_STATE_DONE;
-		goto dec_end;
+		goto device_run_end;
 	}
 
-	if (mtk_jpeg_check_resolution_change(ctx, &jpeg_src_buf->dec_param)) {
-		mtk_jpeg_queue_src_chg_event(ctx);
-		ctx->state = MTK_JPEG_SOURCE_CHANGE;
-		v4l2_m2m_job_finish(jpeg->m2m_dev, ctx->fh.m2m_ctx);
-		return;
-	}
+	if (jpeg->mode == MTK_JPEG_ENC) {
+		mtk_jpeg_enc_reset(jpeg->reg_base);
+
+		mtk_jpeg_set_enc_dst(ctx, jpeg->reg_base, &dst_buf->vb2_buf,
+				     &enc_bs);
+		mtk_jpeg_set_enc_src(ctx, jpeg->reg_base, &src_buf->vb2_buf,
+				     &enc_fb);
+		mtk_jpeg_enc_set_ctrl_cfg(jpeg->reg_base, ctx->enable_exif,
+					  ctx->enc_quality,
+					  ctx->restart_interval);
+
+		mtk_jpeg_enc_start(jpeg->reg_base);
+	} else {
+		if (mtk_jpeg_check_resolution_change
+			(ctx, &jpeg_src_buf->dec_param)) {
+			mtk_jpeg_queue_src_chg_event(ctx);
+			ctx->state = MTK_JPEG_SOURCE_CHANGE;
+			v4l2_m2m_job_finish(jpeg->m2m_dev, ctx->fh.m2m_ctx);
+			return;
+		}
 
-	mtk_jpeg_set_dec_src(ctx, &src_buf->vb2_buf, &bs);
-	if (mtk_jpeg_set_dec_dst(ctx, &jpeg_src_buf->dec_param, &dst_buf->vb2_buf, &fb))
-		goto dec_end;
+		mtk_jpeg_set_dec_src(ctx, &src_buf->vb2_buf, &bs);
+		if (mtk_jpeg_set_dec_dst(ctx, &jpeg_src_buf->dec_param,
+					 &dst_buf->vb2_buf, &fb))
+			goto device_run_end;
 
-	mtk_jpeg_dec_reset(jpeg->dec_reg_base);
-	mtk_jpeg_dec_set_config(jpeg->dec_reg_base,
-				&jpeg_src_buf->dec_param, &bs, &fb);
+		mtk_jpeg_dec_reset(jpeg->reg_base);
+		mtk_jpeg_dec_set_config(jpeg->reg_base,
+					&jpeg_src_buf->dec_param, &bs, &fb);
 
-	mtk_jpeg_dec_start(jpeg->dec_reg_base);
+		mtk_jpeg_dec_start(jpeg->reg_base);
+	}
 	return;
 
-dec_end:
+device_run_end:
 	v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
 	v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
 	v4l2_m2m_buf_done(src_buf, buf_state);
@@ -872,30 +1168,30 @@ static void mtk_jpeg_clk_on(struct mtk_jpeg_dev *jpeg)
 	ret = mtk_smi_larb_get(jpeg->larb);
 	if (ret)
 		dev_err(jpeg->dev, "mtk_smi_larb_get larbvdec fail %d\n", ret);
-	clk_prepare_enable(jpeg->clk_jdec_smi);
-	clk_prepare_enable(jpeg->clk_jdec);
+	if (jpeg->mode == MTK_JPEG_DEC)
+		clk_prepare_enable(jpeg->clk_jpeg_smi);
+	clk_prepare_enable(jpeg->clk_jpeg);
 }
 
 static void mtk_jpeg_clk_off(struct mtk_jpeg_dev *jpeg)
 {
-	clk_disable_unprepare(jpeg->clk_jdec);
-	clk_disable_unprepare(jpeg->clk_jdec_smi);
+	clk_disable_unprepare(jpeg->clk_jpeg);
+	if (jpeg->mode == MTK_JPEG_DEC)
+		clk_disable_unprepare(jpeg->clk_jpeg_smi);
 	mtk_smi_larb_put(jpeg->larb);
 }
 
-static irqreturn_t mtk_jpeg_dec_irq(int irq, void *priv)
+static irqreturn_t mtk_jpeg_irq(int irq, void *priv)
 {
 	struct mtk_jpeg_dev *jpeg = priv;
 	struct mtk_jpeg_ctx *ctx;
 	struct vb2_v4l2_buffer *src_buf, *dst_buf;
 	struct mtk_jpeg_src_buf *jpeg_src_buf;
 	enum vb2_buffer_state buf_state = VB2_BUF_STATE_ERROR;
-	u32	dec_irq_ret;
-	u32 dec_ret;
+	u32 irq_ret;
+	u32 ret, result_size;
 	int i;
 
-	dec_ret = mtk_jpeg_dec_get_int_status(jpeg->dec_reg_base);
-	dec_irq_ret = mtk_jpeg_dec_enum_result(dec_ret);
 	ctx = v4l2_m2m_get_curr_priv(jpeg->m2m_dev);
 	if (!ctx) {
 		v4l2_err(&jpeg->v4l2_dev, "Context is NULL\n");
@@ -906,32 +1202,89 @@ static irqreturn_t mtk_jpeg_dec_irq(int irq, void *priv)
 	dst_buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
 	jpeg_src_buf = mtk_jpeg_vb2_to_srcbuf(&src_buf->vb2_buf);
 
-	if (dec_irq_ret >= MTK_JPEG_DEC_RESULT_UNDERFLOW)
-		mtk_jpeg_dec_reset(jpeg->dec_reg_base);
+	if (jpeg->mode == MTK_JPEG_ENC) {
+		ret = mtk_jpeg_enc_get_int_status(jpeg->reg_base);
+		irq_ret = mtk_jpeg_enc_enum_result(jpeg->reg_base, ret);
 
-	if (dec_irq_ret != MTK_JPEG_DEC_RESULT_EOF_DONE) {
-		dev_err(jpeg->dev, "decode failed\n");
-		goto dec_end;
-	}
+		if (irq_ret >= MTK_JPEG_ENC_RESULT_STALL)
+			mtk_jpeg_enc_reset(jpeg->reg_base);
+
+		if (irq_ret != MTK_JPEG_ENC_RESULT_DONE) {
+			dev_err(jpeg->dev, "encode failed\n");
+			goto irq_end;
+		}
+
+		result_size = mtk_jpeg_enc_get_file_size(jpeg->reg_base);
+		vb2_set_plane_payload(&dst_buf->vb2_buf, 0,
+				      result_size);
+	} else {
+		ret = mtk_jpeg_dec_get_int_status(jpeg->reg_base);
+		irq_ret = mtk_jpeg_dec_enum_result(ret);
+
+		if (irq_ret >= MTK_JPEG_DEC_RESULT_UNDERFLOW)
+			mtk_jpeg_dec_reset(jpeg->reg_base);
 
-	for (i = 0; i < dst_buf->vb2_buf.num_planes; i++)
-		vb2_set_plane_payload(&dst_buf->vb2_buf, i,
-				      jpeg_src_buf->dec_param.comp_size[i]);
+		if (irq_ret != MTK_JPEG_DEC_RESULT_EOF_DONE) {
+			dev_err(jpeg->dev, "decode failed\n");
+			goto irq_end;
+		}
+
+		for (i = 0; i < dst_buf->vb2_buf.num_planes; i++)
+			vb2_set_plane_payload
+				(&dst_buf->vb2_buf, i,
+				 jpeg_src_buf->dec_param.comp_size[i]);
+	}
 
 	buf_state = VB2_BUF_STATE_DONE;
 
-dec_end:
+irq_end:
 	v4l2_m2m_buf_done(src_buf, buf_state);
 	v4l2_m2m_buf_done(dst_buf, buf_state);
 	v4l2_m2m_job_finish(jpeg->m2m_dev, ctx->fh.m2m_ctx);
 	return IRQ_HANDLED;
 }
 
-static void mtk_jpeg_set_default_params(struct mtk_jpeg_ctx *ctx)
+static void mtk_jpeg_set_enc_default_params(struct mtk_jpeg_ctx *ctx)
+{
+	struct mtk_jpeg_q_data *q = &ctx->out_q;
+
+	ctx->fh.ctrl_handler = &ctx->ctrl_hdl;
+
+	ctx->colorspace = V4L2_COLORSPACE_JPEG,
+	ctx->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
+	ctx->quantization = V4L2_QUANTIZATION_DEFAULT;
+	ctx->xfer_func = V4L2_XFER_FUNC_DEFAULT;
+
+	q->w = MTK_JPEG_MIN_WIDTH;
+	q->h = MTK_JPEG_MIN_HEIGHT;
+
+	q->fmt = mtk_jpeg_find_format(ctx, V4L2_PIX_FMT_YUYV,
+				      MTK_JPEG_FMT_TYPE_OUTPUT);
+
+	q->w = clamp(round_up(q->w, 32), MTK_JPEG_MIN_WIDTH,
+		     MTK_JPEG_MAX_WIDTH);
+	q->h = clamp(round_up(q->h, 8), MTK_JPEG_MIN_HEIGHT,
+		     MTK_JPEG_MAX_HEIGHT);
+
+	q->sizeimage[0] = q->w * q->h * 2;
+	q->bytesperline[0] = q->w * 2;
+
+	q = &ctx->cap_q;
+	q->w = MTK_JPEG_MIN_WIDTH;
+	q->h = MTK_JPEG_MIN_HEIGHT;
+	q->fmt = mtk_jpeg_find_format(ctx, V4L2_PIX_FMT_JPEG,
+				      MTK_JPEG_FMT_TYPE_CAPTURE);
+	q->bytesperline[0] = 0;
+	q->sizeimage[0] = MTK_JPEG_DEFAULT_SIZEIMAGE;
+}
+
+static void mtk_jpeg_set_dec_default_params(struct mtk_jpeg_ctx *ctx)
 {
 	struct mtk_jpeg_q_data *q = &ctx->out_q;
 	int i;
 
+	ctx->fh.ctrl_handler = &ctx->ctrl_hdl;
+
 	ctx->colorspace = V4L2_COLORSPACE_JPEG,
 	ctx->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 	ctx->quantization = V4L2_QUANTIZATION_DEFAULT;
@@ -987,7 +1340,18 @@ static int mtk_jpeg_open(struct file *file)
 		goto error;
 	}
 
-	mtk_jpeg_set_default_params(ctx);
+	ret = mtk_jpeg_ctrls_setup(ctx);
+	if (ret) {
+		v4l2_err(&jpeg->v4l2_dev, "Failed to setup controls() (%d)\n",
+			 ret);
+		goto error;
+	}
+
+	if (jpeg->mode == MTK_JPEG_ENC)
+		mtk_jpeg_set_enc_default_params(ctx);
+	else
+		mtk_jpeg_set_dec_default_params(ctx);
+
 	mutex_unlock(&jpeg->lock);
 	return 0;
 
@@ -1007,6 +1371,7 @@ static int mtk_jpeg_release(struct file *file)
 
 	mutex_lock(&jpeg->lock);
 	v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
+	v4l2_ctrl_handler_free(&ctx->ctrl_hdl);
 	v4l2_fh_del(&ctx->fh);
 	v4l2_fh_exit(&ctx->fh);
 	kfree(ctx);
@@ -1040,19 +1405,24 @@ static int mtk_jpeg_clk_init(struct mtk_jpeg_dev *jpeg)
 
 	jpeg->larb = &pdev->dev;
 
-	jpeg->clk_jdec = devm_clk_get(jpeg->dev, "jpgdec");
-	if (IS_ERR(jpeg->clk_jdec))
-		return PTR_ERR(jpeg->clk_jdec);
+	if (jpeg->mode == MTK_JPEG_ENC) {
+		jpeg->clk_jpeg = devm_clk_get(jpeg->dev, "jpgenc");
+		return PTR_ERR_OR_ZERO(jpeg->clk_jpeg);
+	}
+
+	jpeg->clk_jpeg = devm_clk_get(jpeg->dev, "jpgdec");
+	if (IS_ERR(jpeg->clk_jpeg))
+		return PTR_ERR(jpeg->clk_jpeg);
 
-	jpeg->clk_jdec_smi = devm_clk_get(jpeg->dev, "jpgdec-smi");
-	return PTR_ERR_OR_ZERO(jpeg->clk_jdec_smi);
+	jpeg->clk_jpeg_smi = devm_clk_get(jpeg->dev, "jpgdec-smi");
+	return PTR_ERR_OR_ZERO(jpeg->clk_jpeg_smi);
 }
 
 static int mtk_jpeg_probe(struct platform_device *pdev)
 {
 	struct mtk_jpeg_dev *jpeg;
 	struct resource *res;
-	int dec_irq;
+	int jpeg_irq;
 	int ret;
 
 	jpeg = devm_kzalloc(&pdev->dev, sizeof(*jpeg), GFP_KERNEL);
@@ -1062,28 +1432,26 @@ static int mtk_jpeg_probe(struct platform_device *pdev)
 	mutex_init(&jpeg->lock);
 	spin_lock_init(&jpeg->hw_lock);
 	jpeg->dev = &pdev->dev;
+	jpeg->mode = (enum mtk_jpeg_mode)of_device_get_match_data(jpeg->dev);
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	jpeg->dec_reg_base = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(jpeg->dec_reg_base)) {
-		ret = PTR_ERR(jpeg->dec_reg_base);
+	jpeg->reg_base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(jpeg->reg_base)) {
+		ret = PTR_ERR(jpeg->reg_base);
 		return ret;
 	}
 
-	res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
-	dec_irq = platform_get_irq(pdev, 0);
-	if (!res || dec_irq < 0) {
-		dev_err(&pdev->dev, "Failed to get dec_irq %d.\n", dec_irq);
-		ret = -EINVAL;
-		return ret;
+	jpeg_irq = platform_get_irq(pdev, 0);
+	if (jpeg_irq < 0) {
+		dev_err(&pdev->dev, "Failed to get jpeg_irq %d.\n", jpeg_irq);
+		return jpeg_irq;
 	}
 
-	ret = devm_request_irq(&pdev->dev, dec_irq, mtk_jpeg_dec_irq, 0,
+	ret = devm_request_irq(&pdev->dev, jpeg_irq, mtk_jpeg_irq, 0,
 			       pdev->name, jpeg);
 	if (ret) {
-		dev_err(&pdev->dev, "Failed to request dec_irq %d (%d)\n",
-			dec_irq, ret);
-		ret = -EINVAL;
+		dev_err(&pdev->dev, "Failed to request jpeg_irq %d (%d)\n",
+			jpeg_irq, ret);
 		goto err_req_irq;
 	}
 
@@ -1107,33 +1475,35 @@ static int mtk_jpeg_probe(struct platform_device *pdev)
 		goto err_m2m_init;
 	}
 
-	jpeg->dec_vdev = video_device_alloc();
-	if (!jpeg->dec_vdev) {
+	jpeg->vfd_jpeg = video_device_alloc();
+	if (!jpeg->vfd_jpeg) {
 		ret = -ENOMEM;
-		goto err_dec_vdev_alloc;
+		goto err_vfd_jpeg_alloc;
 	}
-	snprintf(jpeg->dec_vdev->name, sizeof(jpeg->dec_vdev->name),
-		 "%s-dec", MTK_JPEG_NAME);
-	jpeg->dec_vdev->fops = &mtk_jpeg_fops;
-	jpeg->dec_vdev->ioctl_ops = &mtk_jpeg_ioctl_ops;
-	jpeg->dec_vdev->minor = -1;
-	jpeg->dec_vdev->release = video_device_release;
-	jpeg->dec_vdev->lock = &jpeg->lock;
-	jpeg->dec_vdev->v4l2_dev = &jpeg->v4l2_dev;
-	jpeg->dec_vdev->vfl_dir = VFL_DIR_M2M;
-	jpeg->dec_vdev->device_caps = V4L2_CAP_STREAMING |
+	snprintf(jpeg->vfd_jpeg->name, sizeof(jpeg->vfd_jpeg->name),
+		 "%s-%s", MTK_JPEG_NAME,
+		 jpeg->mode == MTK_JPEG_ENC ? "enc" : "dec");
+	jpeg->vfd_jpeg->fops = &mtk_jpeg_fops;
+	jpeg->vfd_jpeg->ioctl_ops = &mtk_jpeg_ioctl_ops;
+	jpeg->vfd_jpeg->minor = -1;
+	jpeg->vfd_jpeg->release = video_device_release;
+	jpeg->vfd_jpeg->lock = &jpeg->lock;
+	jpeg->vfd_jpeg->v4l2_dev = &jpeg->v4l2_dev;
+	jpeg->vfd_jpeg->vfl_dir = VFL_DIR_M2M;
+	jpeg->vfd_jpeg->device_caps = V4L2_CAP_STREAMING |
 				      V4L2_CAP_VIDEO_M2M_MPLANE;
 
-	ret = video_register_device(jpeg->dec_vdev, VFL_TYPE_GRABBER, 3);
+	ret = video_register_device(jpeg->vfd_jpeg, VFL_TYPE_GRABBER, -1);
 	if (ret) {
 		v4l2_err(&jpeg->v4l2_dev, "Failed to register video device\n");
-		goto err_dec_vdev_register;
+		goto err_vfd_jpeg_register;
 	}
 
-	video_set_drvdata(jpeg->dec_vdev, jpeg);
+	video_set_drvdata(jpeg->vfd_jpeg, jpeg);
 	v4l2_info(&jpeg->v4l2_dev,
-		  "decoder device registered as /dev/video%d (%d,%d)\n",
-		  jpeg->dec_vdev->num, VIDEO_MAJOR, jpeg->dec_vdev->minor);
+		  "jpeg device %d registered as /dev/video%d (%d,%d)\n",
+		  jpeg->mode, jpeg->vfd_jpeg->num, VIDEO_MAJOR,
+		  jpeg->vfd_jpeg->minor);
 
 	platform_set_drvdata(pdev, jpeg);
 
@@ -1141,10 +1511,10 @@ static int mtk_jpeg_probe(struct platform_device *pdev)
 
 	return 0;
 
-err_dec_vdev_register:
-	video_device_release(jpeg->dec_vdev);
+err_vfd_jpeg_register:
+	video_device_release(jpeg->vfd_jpeg);
 
-err_dec_vdev_alloc:
+err_vfd_jpeg_alloc:
 	v4l2_m2m_release(jpeg->m2m_dev);
 
 err_m2m_init:
@@ -1164,8 +1534,8 @@ static int mtk_jpeg_remove(struct platform_device *pdev)
 	struct mtk_jpeg_dev *jpeg = platform_get_drvdata(pdev);
 
 	pm_runtime_disable(&pdev->dev);
-	video_unregister_device(jpeg->dec_vdev);
-	video_device_release(jpeg->dec_vdev);
+	video_unregister_device(jpeg->vfd_jpeg);
+	video_device_release(jpeg->vfd_jpeg);
 	v4l2_m2m_release(jpeg->m2m_dev);
 	v4l2_device_unregister(&jpeg->v4l2_dev);
 
@@ -1176,7 +1546,11 @@ static __maybe_unused int mtk_jpeg_pm_suspend(struct device *dev)
 {
 	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);
 
-	mtk_jpeg_dec_reset(jpeg->dec_reg_base);
+	if (jpeg->mode == MTK_JPEG_ENC)
+		mtk_jpeg_enc_reset(jpeg->reg_base);
+	else
+		mtk_jpeg_dec_reset(jpeg->reg_base);
+
 	mtk_jpeg_clk_off(jpeg);
 
 	return 0;
@@ -1187,7 +1561,10 @@ static __maybe_unused int mtk_jpeg_pm_resume(struct device *dev)
 	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);
 
 	mtk_jpeg_clk_on(jpeg);
-	mtk_jpeg_dec_reset(jpeg->dec_reg_base);
+	if (jpeg->mode == MTK_JPEG_ENC)
+		mtk_jpeg_enc_reset(jpeg->reg_base);
+	else
+		mtk_jpeg_dec_reset(jpeg->reg_base);
 
 	return 0;
 }
@@ -1223,11 +1600,15 @@ static const struct dev_pm_ops mtk_jpeg_pm_ops = {
 static const struct of_device_id mtk_jpeg_match[] = {
 	{
 		.compatible = "mediatek,mt8173-jpgdec",
-		.data       = NULL,
+		.data       = (void *)MTK_JPEG_DEC,
 	},
 	{
 		.compatible = "mediatek,mt2701-jpgdec",
-		.data       = NULL,
+		.data       = (void *)MTK_JPEG_DEC,
+	},
+	{
+		.compatible = "mediatek,mtk-jpgenc",
+		.data       = (void *)MTK_JPEG_ENC,
 	},
 	{},
 };
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
index d32a6fbaa311..02a387d8be5d 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
@@ -3,6 +3,7 @@
  * Copyright (c) 2016 MediaTek Inc.
  * Author: Ming Hsiu Tsai <minghsiu.tsai@mediatek.com>
  *         Rick Chang <rick.chang@mediatek.com>
+ *         Xia Jiang <xia.jiang@mediatek.com>
  */
 
 #ifndef _MTK_JPEG_CORE_H
@@ -19,16 +20,19 @@
 
 #define MTK_JPEG_FMT_FLAG_DEC_OUTPUT	BIT(0)
 #define MTK_JPEG_FMT_FLAG_DEC_CAPTURE	BIT(1)
+#define MTK_JPEG_FMT_FLAG_ENC_OUTPUT	BIT(2)
+#define MTK_JPEG_FMT_FLAG_ENC_CAPTURE	BIT(3)
 
 #define MTK_JPEG_FMT_TYPE_OUTPUT	1
 #define MTK_JPEG_FMT_TYPE_CAPTURE	2
 
-#define MTK_JPEG_MIN_WIDTH	32
-#define MTK_JPEG_MIN_HEIGHT	32
-#define MTK_JPEG_MAX_WIDTH	8192
-#define MTK_JPEG_MAX_HEIGHT	8192
+#define MTK_JPEG_MIN_WIDTH	32U
+#define MTK_JPEG_MIN_HEIGHT	32U
+#define MTK_JPEG_MAX_WIDTH	65535U
+#define MTK_JPEG_MAX_HEIGHT	65535U
 
 #define MTK_JPEG_DEFAULT_SIZEIMAGE	(1 * 1024 * 1024)
+#define MTK_JPEG_DEFAULT_EXIF_SIZE	(64 * 1024)
 
 /**
  * enum mtk_jpeg_ctx_state - contex state of jpeg
@@ -39,6 +43,14 @@ enum mtk_jpeg_ctx_state {
 	MTK_JPEG_SOURCE_CHANGE,
 };
 
+/**
+ * enum mtk_jpeg_mode - mode of jpeg
+ */
+enum mtk_jpeg_mode {
+	MTK_JPEG_ENC,
+	MTK_JPEG_DEC,
+};
+
 /**
  * struct mt_jpeg - JPEG IP abstraction
  * @lock:		the mutex protecting this structure
@@ -48,11 +60,12 @@ enum mtk_jpeg_ctx_state {
  * @v4l2_dev:		v4l2 device for mem2mem mode
  * @m2m_dev:		v4l2 mem2mem device data
  * @alloc_ctx:		videobuf2 memory allocator's context
- * @dec_vdev:		video device node for decoder mem2mem mode
- * @dec_reg_base:	JPEG registers mapping
- * @clk_jdec:		JPEG hw working clock
- * @clk_jdec_smi:	JPEG SMI bus clock
+ * @vfd_jpeg:		video device node for jpeg mem2mem mode
+ * @reg_base:		JPEG registers mapping
+ * @clk_jpeg:		JPEG hw working clock
+ * @clk_jpeg_smi:	JPEG SMI bus clock
  * @larb:		SMI device
+ * @mode:		compression (encode) operation or decompression (decode)
  */
 struct mtk_jpeg_dev {
 	struct mutex		lock;
@@ -62,11 +75,12 @@ struct mtk_jpeg_dev {
 	struct v4l2_device	v4l2_dev;
 	struct v4l2_m2m_dev	*m2m_dev;
 	void			*alloc_ctx;
-	struct video_device	*dec_vdev;
-	void __iomem		*dec_reg_base;
-	struct clk		*clk_jdec;
-	struct clk		*clk_jdec_smi;
+	struct video_device	*vfd_jpeg;
+	void __iomem		*reg_base;
+	struct clk		*clk_jpeg;
+	struct clk		*clk_jpeg_smi;
 	struct device		*larb;
+	enum mtk_jpeg_mode	mode;
 };
 
 /**
@@ -113,6 +127,7 @@ struct mtk_jpeg_q_data {
  * @cap_q:		destination (capture) queue queue information
  * @fh:			V4L2 file handle
  * @state:		state of the context
+ * @ctrl_hdl:		controls handler
  * @colorspace: enum v4l2_colorspace; supplemental to pixelformat
  * @ycbcr_enc: enum v4l2_ycbcr_encoding, Y'CbCr encoding
  * @quantization: enum v4l2_quantization, colorspace quantization
@@ -124,6 +139,10 @@ struct mtk_jpeg_ctx {
 	struct mtk_jpeg_q_data		cap_q;
 	struct v4l2_fh			fh;
 	enum mtk_jpeg_ctx_state		state;
+	u8				enable_exif;
+	u8				enc_quality;
+	u8				restart_interval;
+	struct v4l2_ctrl_handler	ctrl_hdl;
 
 	enum v4l2_colorspace colorspace;
 	enum v4l2_ycbcr_encoding ycbcr_enc;
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h
index 1cc37dbfc8e7..ce263db5f30a 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h
@@ -3,10 +3,11 @@
  * Copyright (c) 2016 MediaTek Inc.
  * Author: Ming Hsiu Tsai <minghsiu.tsai@mediatek.com>
  *         Rick Chang <rick.chang@mediatek.com>
+ *         Xia Jiang <xia.jiang@mediatek.com>
  */
 
-#ifndef _MTK_JPEG_HW_H
-#define _MTK_JPEG_HW_H
+#ifndef _MTK_JPEG_DEC_HW_H
+#define _MTK_JPEG_DEC_HW_H
 
 #include <media/videobuf2-core.h>
 
@@ -75,4 +76,4 @@ void mtk_jpeg_dec_set_config(void __iomem *base,
 void mtk_jpeg_dec_reset(void __iomem *dec_reg_base);
 void mtk_jpeg_dec_start(void __iomem *dec_reg_base);
 
-#endif /* _MTK_JPEG_HW_H */
+#endif /* _MTK_JPEG_DEC_HW_H */
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c
new file mode 100644
index 000000000000..da3e7a83a80a
--- /dev/null
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c
@@ -0,0 +1,273 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ * Author: Xia Jiang <xia.jiang@mediatek.com>
+ *
+ */
+
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <media/videobuf2-core.h>
+
+#include "mtk_jpeg_enc_hw.h"
+
+static struct mtk_jpeg_enc_qlt mtk_jpeg_enc_quality[] = {
+	{
+		.quality_param		= 97,
+		.hardware_value	= JPEG_ENC_QUALITY_Q97,
+	},
+	{
+		.quality_param		= 95,
+		.hardware_value	= JPEG_ENC_QUALITY_Q95,
+	},
+	{
+		.quality_param		= 92,
+		.hardware_value	= JPEG_ENC_QUALITY_Q92,
+	},
+	{
+		.quality_param		= 90,
+		.hardware_value	= JPEG_ENC_QUALITY_Q90,
+	},
+	{
+		.quality_param		= 87,
+		.hardware_value	= JPEG_ENC_QUALITY_Q87,
+	},
+	{
+		.quality_param		= 84,
+		.hardware_value	= JPEG_ENC_QUALITY_Q84,
+	},
+	{
+		.quality_param		= 82,
+		.hardware_value	= JPEG_ENC_QUALITY_Q82,
+	},
+	{
+		.quality_param		= 80,
+		.hardware_value	= JPEG_ENC_QUALITY_Q80,
+	},
+	{
+		.quality_param		= 74,
+		.hardware_value	= JPEG_ENC_QUALITY_Q74,
+	},
+	{
+		.quality_param		= 68,
+		.hardware_value	= JPEG_ENC_QUALITY_Q68,
+	},
+	{
+		.quality_param		= 64,
+		.hardware_value	= JPEG_ENC_QUALITY_Q64,
+	},
+	{
+		.quality_param		= 60,
+		.hardware_value	= JPEG_ENC_QUALITY_Q60,
+	},
+	{
+		.quality_param		= 48,
+		.hardware_value	= JPEG_ENC_QUALITY_Q48,
+	},
+	{
+		.quality_param		= 39,
+		.hardware_value	= JPEG_ENC_QUALITY_Q39,
+	},
+	{
+		.quality_param		= 34,
+		.hardware_value	= JPEG_ENC_QUALITY_Q34,
+	},
+};
+
+#define MTK_JPEG_ENC_NUM_QUALITY ARRAY_SIZE(mtk_jpeg_enc_quality)
+
+void mtk_jpeg_enc_reset(void __iomem *base)
+{
+	writel(0x00, base + JPEG_ENC_RSTB);
+	writel(JPEG_ENC_RESET_BIT, base + JPEG_ENC_RSTB);
+	writel(0x00, base + JPEG_ENC_CODEC_SEL);
+}
+
+u32 mtk_jpeg_enc_get_int_status(void __iomem *base)
+{
+	u32 ret;
+
+	ret = readl(base + JPEG_ENC_INT_STS) &
+		    JPEG_ENC_INT_STATUS_MASK_ALLIRQ;
+	if (ret)
+		writel(0, base + JPEG_ENC_INT_STS);
+
+	return ret;
+}
+
+u32 mtk_jpeg_enc_get_file_size(void __iomem *base)
+{
+	return readl(base + JPEG_ENC_DMA_ADDR0) -
+	       readl(base + JPEG_ENC_DST_ADDR0);
+}
+
+u32 mtk_jpeg_enc_enum_result(void __iomem *base, u32 irq_status)
+{
+	if (irq_status & JPEG_ENC_INT_STATUS_DONE)
+		return MTK_JPEG_ENC_RESULT_DONE;
+	else if (irq_status & JPEG_ENC_INT_STATUS_STALL)
+		return MTK_JPEG_ENC_RESULT_STALL;
+	else if (irq_status & JPEG_ENC_INT_STATUS_VCODEC_IRQ)
+		return MTK_JPEG_ENC_RESULT_VCODEC_IRQ;
+	return MTK_JPEG_ENC_RESULT_ERROR_UNKNOWN;
+}
+
+void mtk_jpeg_enc_set_img_size(void __iomem *base, u32 width, u32 height)
+{
+	u32 value;
+
+	value = JPEG_ENC_WIDTH_HEIGHT(width, height);
+	writel(value, base + JPEG_ENC_IMG_SIZE);
+}
+
+void mtk_jpeg_enc_set_enc_format(void __iomem *base, u32 enc_format)
+{
+	u32 yuv_format, value;
+
+	yuv_format = JPEG_ENC_YUV_FORMAT_YUYV;
+	switch (enc_format) {
+	case V4L2_PIX_FMT_YUYV:
+		yuv_format = JPEG_ENC_YUV_FORMAT_YUYV;
+		break;
+	case V4L2_PIX_FMT_YVYU:
+		yuv_format = JPEG_ENC_YUV_FORMAT_YVYU;
+		break;
+	case V4L2_PIX_FMT_NV12M:
+		yuv_format = JPEG_ENC_YUV_FORMAT_NV12;
+		break;
+	case V4L2_PIX_FMT_NV21M:
+		yuv_format = JPEG_ENC_YUV_FORMAT_NV12;
+		break;
+	default:
+		break;
+	}
+
+	value = readl(base + JPEG_ENC_CTRL);
+	value &= ~JPEG_ENC_CTRL_YUV_FORMAT_MASK;
+	value |= JPEG_ENC_FORMAT(yuv_format);
+	writel(value, base + JPEG_ENC_CTRL);
+}
+
+void mtk_jpeg_enc_set_blk_num(void __iomem *base, u32 enc_format, u32 width,
+			      u32 height)
+{
+	u32 blk_num;
+	u32 is_420;
+	u32 padding_width;
+	u32 padding_height;
+
+	is_420 = (enc_format == V4L2_PIX_FMT_NV12M ||
+		  enc_format == V4L2_PIX_FMT_NV21M) ? 1 : 0;
+	padding_width = round_up(width, 16);
+	padding_height = round_up(height, is_420 ? 16 : 8);
+
+	blk_num = (padding_width >> 4) * (padding_height >> (is_420 ? 4 : 3)) *
+		  (is_420 ? 6 : 4) - 1;
+
+	writel(blk_num, base + JPEG_ENC_BLK_NUM);
+}
+
+void mtk_jpeg_enc_set_stride(void __iomem *base, u32 enc_format, u32 width,
+			     u32 height, u32 bytesperline)
+{
+	u32 width_even;
+	u32 is_420;
+	u32 img_stride;
+	u32 mem_stride;
+
+	width_even = round_up(width, 2);
+	is_420 = (enc_format == V4L2_PIX_FMT_NV12M ||
+		  enc_format == V4L2_PIX_FMT_NV21M) ? 1 : 0;
+	if (!is_420)
+		width_even = width_even << 1;
+	img_stride = round_up(width_even, (is_420 ? 16 : 32));
+	mem_stride = is_420 ? bytesperline : round_up(width_even, 32);
+
+	writel(img_stride, base + JPEG_ENC_IMG_STRIDE);
+	writel(mem_stride, base + JPEG_ENC_STRIDE);
+}
+
+void mtk_jpeg_enc_set_src_addr(void __iomem *base, u32 src_addr,
+			       u32 src_addr_c)
+{
+	writel(src_addr, base + JPEG_ENC_SRC_LUMA_ADDR);
+	writel(src_addr_c, base + JPEG_ENC_SRC_CHROMA_ADDR);
+}
+
+void mtk_jpeg_enc_set_dst_addr(void __iomem *base, u32 dst_addr,
+			       u32 stall_size, u32 init_offset,
+			       u32 offset_mask)
+{
+	writel(JPEG_ENC_INIT_OFFSET(init_offset), base + JPEG_ENC_OFFSET_ADDR);
+	writel(JPEG_ENC_OFFSET_MASK(offset_mask),
+	       base + JPEG_ENC_BYTE_OFFSET_MASK);
+	writel(JPEG_ENC_DST_ADDR(dst_addr), base + JPEG_ENC_DST_ADDR0);
+	writel(JPEG_ENC_STALL_ADDR(dst_addr, stall_size),
+	       base + JPEG_ENC_STALL_ADDR0);
+}
+
+static void mtk_jpeg_enc_set_quality(void __iomem *base, u32 quality)
+{
+	u32 value;
+	u32 i, enc_quality;
+
+	enc_quality = mtk_jpeg_enc_quality[0].hardware_value;
+	for (i = 0; i < MTK_JPEG_ENC_NUM_QUALITY; i++) {
+		if (quality >= mtk_jpeg_enc_quality[i].quality_param) {
+			enc_quality = mtk_jpeg_enc_quality[i].hardware_value;
+			break;
+		}
+	}
+
+	value = readl(base + JPEG_ENC_QUALITY);
+	value = JPEG_ENC_SET_QUALITY(value, enc_quality);
+	writel(value, base + JPEG_ENC_QUALITY);
+}
+
+static void mtk_jpeg_enc_set_restart_interval(void __iomem *base,
+					      u32 restart_interval)
+{
+	u32 value;
+
+	value = readl(base + JPEG_ENC_CTRL);
+	if (restart_interval)
+		value |= JPEG_ENC_CTRL_RESTART_EN_BIT;
+	else
+		value &= ~JPEG_ENC_CTRL_RESTART_EN_BIT;
+	writel(value, base + JPEG_ENC_CTRL);
+	writel(restart_interval, base + JPEG_ENC_RST_MCU_NUM);
+}
+
+static void mtk_jpeg_enc_set_encode_mode(void __iomem *base, u32 exif_en)
+{
+	u32 value;
+
+	value = readl(base + JPEG_ENC_CTRL);
+	value &= ~JPEG_ENC_CTRL_FILE_FORMAT_BIT;
+	writel(value, base + JPEG_ENC_CTRL);
+
+	if (exif_en) {
+		value = readl(base + JPEG_ENC_CTRL);
+		value |= JPEG_ENC_EN_JFIF_EXIF;
+		writel(value, base + JPEG_ENC_CTRL);
+	}
+}
+
+void mtk_jpeg_enc_set_ctrl_cfg(void __iomem *base, u32 exif_en, u32 quality,
+			       u32 restart_interval)
+{
+	mtk_jpeg_enc_set_quality(base, quality);
+
+	mtk_jpeg_enc_set_restart_interval(base, restart_interval);
+
+	mtk_jpeg_enc_set_encode_mode(base, exif_en);
+}
+
+void mtk_jpeg_enc_start(void __iomem *base)
+{
+	u32 value;
+
+	value = readl(base + JPEG_ENC_CTRL);
+	value |= JPEG_ENC_CTRL_INT_EN_BIT | JPEG_ENC_CTRL_ENABLE_BIT;
+	writel(value, base + JPEG_ENC_CTRL);
+}
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h
new file mode 100644
index 000000000000..d0d7d218a0c2
--- /dev/null
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h
@@ -0,0 +1,86 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ * Author: Xia Jiang <xia.jiang@mediatek.com>
+ *
+ */
+
+#ifndef _MTK_JPEG_ENC_HW_H
+#define _MTK_JPEG_ENC_HW_H
+
+#include <media/videobuf2-core.h>
+
+#include "mtk_jpeg_core.h"
+#include "mtk_jpeg_enc_reg.h"
+
+enum {
+	MTK_JPEG_ENC_RESULT_DONE		= 0,
+	MTK_JPEG_ENC_RESULT_STALL,
+	MTK_JPEG_ENC_RESULT_VCODEC_IRQ,
+	MTK_JPEG_ENC_RESULT_ERROR_UNKNOWN
+};
+
+/**
+ * struct mtk_jpeg_enc_qlt - JPEG encoder quality data
+ * @quality_param:	quality value
+ * @hardware_value:hardware value of quality
+ */
+struct mtk_jpeg_enc_qlt {
+	u8	quality_param;
+	u8	hardware_value;
+};
+
+/**
+ * struct mt_jpeg_enc_bs - JPEG encoder bitstream  buffer
+ * @dma_addr:			JPEG encoder destination address
+ * @size:			JPEG encoder bistream size
+ * @dma_addr_offset:		JPEG encoder offset address
+ * @dma_addr_offsetmask:	JPEG encoder destination address offset mask
+ */
+struct mtk_jpeg_enc_bs {
+	dma_addr_t	dma_addr;
+	size_t		size;
+	u32			dma_addr_offset;
+	u32			dma_addr_offsetmask;
+};
+
+/**
+ * struct mtk_jpeg_mem - JPEG memory
+ * @dma_addr:		memory address
+ * @size:		memory size
+ */
+struct mtk_jpeg_mem {
+	dma_addr_t	dma_addr;
+	size_t		size;
+};
+
+/**
+ * struct mtk_jpeg_enc_fb - JPEG encoder frame buffer
+ * @fb_addr:		frmae buffer memory information
+ * @num_planes:		number of planes
+ */
+struct mtk_jpeg_enc_fb {
+	struct mtk_jpeg_mem	fb_addr[MTK_JPEG_COMP_MAX];
+	u32			num_planes;
+};
+
+void mtk_jpeg_enc_reset(void __iomem *base);
+u32 mtk_jpeg_enc_get_int_status(void __iomem *base);
+u32 mtk_jpeg_enc_get_file_size(void __iomem *base);
+u32 mtk_jpeg_enc_enum_result(void __iomem *base, u32 irq_status);
+void mtk_jpeg_enc_set_img_size(void __iomem *base, u32 width, u32 height);
+void mtk_jpeg_enc_set_enc_format(void __iomem *base, u32 enc_format);
+void mtk_jpeg_enc_set_blk_num(void __iomem *base, u32 enc_format, u32 width,
+			      u32 height);
+void mtk_jpeg_enc_set_stride(void __iomem *base, u32 enc_format, u32 width,
+			     u32 height, u32 bytesperline);
+void mtk_jpeg_enc_set_src_addr(void __iomem *base, u32 src_addr,
+			       u32 src_addr_c);
+void mtk_jpeg_enc_set_dst_addr(void __iomem *base, u32 dst_addr,
+			       u32 stall_size, u32 init_offset,
+			       u32 offset_mask);
+void mtk_jpeg_enc_set_ctrl_cfg(void __iomem *base, u32 exif_en, u32 quality,
+			       u32 restart_interval);
+void mtk_jpeg_enc_start(void __iomem *enc_reg_base);
+
+#endif /* _MTK_JPEG_ENC_HW_H */
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_reg.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_reg.h
new file mode 100644
index 000000000000..cec3631addc5
--- /dev/null
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_reg.h
@@ -0,0 +1,78 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ * Author: Xia Jiang <xia.jiang@mediatek.com>
+ *
+ */
+#ifndef _MTK_JPEG_ENC_REG_H
+#define _MTK_JPEG_ENC_REG_H
+
+#define JPEG_ENC_INT_STATUS_DONE			BIT(0)
+#define JPEG_ENC_INT_STATUS_STALL			BIT(1)
+#define JPEG_ENC_INT_STATUS_VCODEC_IRQ		BIT(4)
+#define JPEG_ENC_INT_STATUS_MASK_ALLIRQ		0x13
+
+#define JPEG_ENC_DST_ADDR_OFFSET_MASK GENMASK(3, 0)
+
+#define JPEG_ENC_CTRL_YUV_FORMAT_MASK 0x18
+#define JPEG_ENC_CTRL_RESTART_EN_BIT            BIT(10)
+#define JPEG_ENC_CTRL_FILE_FORMAT_BIT           BIT(5)
+#define JPEG_ENC_EN_JFIF_EXIF                   BIT(5)
+#define JPEG_ENC_CTRL_INT_EN_BIT                BIT(2)
+#define JPEG_ENC_CTRL_ENABLE_BIT                BIT(0)
+#define JPEG_ENC_RESET_BIT                      BIT(0)
+
+#define JPEG_ENC_YUV_FORMAT_YUYV 0
+#define JPEG_ENC_YUV_FORMAT_YVYU 1
+#define JPEG_ENC_YUV_FORMAT_NV12 2
+#define JEPG_ENC_YUV_FORMAT_NV21 3
+
+#define JPEG_ENC_QUALITY_Q60 0x0
+#define JPEG_ENC_QUALITY_Q80 0x1
+#define JPEG_ENC_QUALITY_Q90 0x2
+#define JPEG_ENC_QUALITY_Q95 0x3
+#define JPEG_ENC_QUALITY_Q39 0x4
+#define JPEG_ENC_QUALITY_Q68 0x5
+#define JPEG_ENC_QUALITY_Q84 0x6
+#define JPEG_ENC_QUALITY_Q92 0x7
+#define JPEG_ENC_QUALITY_Q48 0x8
+#define JPEG_ENC_QUALITY_Q74 0xa
+#define JPEG_ENC_QUALITY_Q87 0xb
+#define JPEG_ENC_QUALITY_Q34 0xc
+#define JPEG_ENC_QUALITY_Q64 0xe
+#define JPEG_ENC_QUALITY_Q82 0xf
+#define JPEG_ENC_QUALITY_Q97 0x10
+
+#define JPEG_ENC_RSTB				0x100
+#define JPEG_ENC_CTRL				0x104
+#define JPEG_ENC_QUALITY			0x108
+#define JPEG_ENC_BLK_NUM			0x10C
+#define JPEG_ENC_BLK_CNT			0x110
+#define JPEG_ENC_INT_STS			0x11c
+#define JPEG_ENC_DST_ADDR0			0x120
+#define JPEG_ENC_DMA_ADDR0			0x124
+#define JPEG_ENC_STALL_ADDR0		0x128
+#define JPEG_ENC_OFFSET_ADDR		0x138
+#define JPEG_ENC_RST_MCU_NUM		0x150
+#define JPEG_ENC_IMG_SIZE			0x154
+#define JPEG_ENC_DEBUG_INFO0		0x160
+#define JPEG_ENC_DEBUG_INFO1		0x164
+#define JPEG_ENC_TOTAL_CYCLE		0x168
+#define JPEG_ENC_BYTE_OFFSET_MASK	0x16c
+#define JPEG_ENC_SRC_LUMA_ADDR		0x170
+#define JPEG_ENC_SRC_CHROMA_ADDR	0x174
+#define JPEG_ENC_STRIDE				0x178
+#define JPEG_ENC_IMG_STRIDE			0x17c
+#define JPEG_ENC_DCM_CTRL			0x300
+#define JPEG_ENC_CODEC_SEL			0x314
+#define JPEG_ENC_ULTRA_THRES		0x318
+
+#define JPEG_ENC_FORMAT(x)		(((x) & 3) << 3)
+#define JPEG_ENC_WIDTH_HEIGHT(w, h)	(((w) << 16) | (h))
+#define JPEG_ENC_INIT_OFFSET(x)		((x) & (~0xf))
+#define JPEG_ENC_OFFSET_MASK(x)		((x) & 0xf)
+#define JPEG_ENC_DST_ADDR(x)		((x) & (~0xf))
+#define JPEG_ENC_STALL_ADDR(x, y)		(((x) + (y)) & (~0xf))
+#define JPEG_ENC_SET_QUALITY(x, y)	(((x) & 0xffff0000) | (y))
+
+#endif /* _MTK_JPEG_ENC_REG_H */
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
