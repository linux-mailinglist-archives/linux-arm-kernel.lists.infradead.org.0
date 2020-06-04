Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F3F1EDE92
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 09:35:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6QXvggfDRiKUIX0weDj3SiafjjeqJBC/QiGP8oQQct8=; b=uYrj8bYDP4N+e5
	qsuAnQWzhuY1rPNeCjcXexLz7kCucKmNA2ETIhuYaBHDw5zNozUATZJ6IvSROjxxDQyS/yQw7HOA4
	v133U3hVmDcPSZbXl2Ppi3yqBCkhrdwPqulDUo0Eu6z056EqWAEodmwpf9PArmnjMKL4OwbKRUF6C
	WSx/w2uSkWRJjPt0YaziDzmAUJa0TmsziWswalnYMUMQ7ozKjCFw3jBmQ2gr/v7dt75BSCYCbyOwO
	YC49qTlcCbxUMQEmjGs1UsLCGBFB967w6HJvbMgZI84jo6BhBpxF9w0txRBdQMBpADpra6+jL4rQH
	FKYforxJSOBQ7pPwfOQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgkPl-0004me-CA; Thu, 04 Jun 2020 07:35:49 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgkOX-00019U-Ib; Thu, 04 Jun 2020 07:34:37 +0000
X-UUID: d9f7d9d849cc4069b99104bb8bb729ef-20200603
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=5ePcRgV/lHp7UcC/6PvykABEajI6oWw2EQVEmJvp6Qk=; 
 b=XWRJZ79qurUYOGv7zQqThfrx2z6j7HZtZgzz+jmgVKmlu9sOoKBz69Dra3hKEzgDu4q/PZvP0spQn/6doXEJJlv2xLgZhDh8tVFIv8BJvEJLGzrkgIUlHa8ndDGMfYODANYB1SngG8ZveAwfEBryfdmnmsYd7KfVSd3HVSl5tPQ=;
X-UUID: d9f7d9d849cc4069b99104bb8bb729ef-20200603
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1814189525; Wed, 03 Jun 2020 23:34:18 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 00:29:30 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 15:29:29 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 4 Jun 2020 15:29:28 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v9 13/18] media: platform: Delete redundant code and add
 annotation for an enum
Date: Thu, 4 Jun 2020 15:27:03 +0800
Message-ID: <20200604072708.9468-14-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200604072708.9468-1-xia.jiang@mediatek.com>
References: <20200604072708.9468-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_003433_800909_F43AC3FA 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: maoguang.meng@mediatek.com, devicetree@vger.kernel.org,
 mojahsu@chromium.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 senozhatsky@chromium.org, sj.huang@mediatek.com, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, Xia Jiang <xia.jiang@mediatek.com>,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Delete unused member variables annotation.
Delete unused variable definition.
Delete redundant log print, because V4L2 debug logs already print it.
Add annotation for enum mtk_jpeg_ctx_state.

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
v9: add annotation for enum mtk_jpeg_ctx_state
---
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 15 ++-------------
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h |  8 ++++++--
 2 files changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
index c9c0357b2d6c..6c82134d6b3d 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
@@ -176,14 +176,13 @@ static int mtk_jpeg_try_fmt_mplane(struct v4l2_format *f,
 				   struct mtk_jpeg_ctx *ctx, int q_type)
 {
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
-	struct mtk_jpeg_dev *jpeg = ctx->jpeg;
 	int i;
 
 	pix_mp->field = V4L2_FIELD_NONE;
 
 	if (ctx->state != MTK_JPEG_INIT) {
 		mtk_jpeg_adjust_fmt_mplane(ctx, f);
-		goto end;
+		return 0;
 	}
 
 	pix_mp->num_planes = fmt->colplanes;
@@ -202,7 +201,7 @@ static int mtk_jpeg_try_fmt_mplane(struct v4l2_format *f,
 		pfmt->sizeimage = round_up(pfmt->sizeimage, 128);
 		if (pfmt->sizeimage == 0)
 			pfmt->sizeimage = MTK_JPEG_DEFAULT_SIZEIMAGE;
-		goto end;
+		return 0;
 	}
 
 	/* type is MTK_JPEG_FMT_TYPE_CAPTURE */
@@ -219,16 +218,6 @@ static int mtk_jpeg_try_fmt_mplane(struct v4l2_format *f,
 		pfmt->bytesperline = stride;
 		pfmt->sizeimage = stride * h;
 	}
-end:
-	v4l2_dbg(2, debug, &jpeg->v4l2_dev, "wxh:%ux%u\n",
-		 pix_mp->width, pix_mp->height);
-	for (i = 0; i < pix_mp->num_planes; i++) {
-		v4l2_dbg(2, debug, &jpeg->v4l2_dev,
-			 "plane[%d] bpl=%u, size=%u\n",
-			 i,
-			 pix_mp->plane_fmt[i].bytesperline,
-			 pix_mp->plane_fmt[i].sizeimage);
-	}
 	return 0;
 }
 
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
index 64a731261214..5fcdf6950782 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
@@ -30,6 +30,12 @@
 
 #define MTK_JPEG_DEFAULT_SIZEIMAGE	(1 * 1024 * 1024)
 
+/**
+ * enum mtk_jpeg_ctx_state - states of the context state machine
+ * @MTK_JPEG_INIT:		current state is initialized
+ * @MTK_JPEG_RUNNING:		current state is running
+ * @MTK_JPEG_SOURCE_CHANGE:	current state is source resolution change
+ */
 enum mtk_jpeg_ctx_state {
 	MTK_JPEG_INIT = 0,
 	MTK_JPEG_RUNNING,
@@ -109,9 +115,7 @@ struct mtk_jpeg_q_data {
  * @out_q:		source (output) queue information
  * @cap_q:		destination (capture) queue queue information
  * @fh:			V4L2 file handle
- * @dec_param		parameters for HW decoding
  * @state:		state of the context
- * @header_valid:	set if header has been parsed and valid
  * @colorspace: enum v4l2_colorspace; supplemental to pixelformat
  * @ycbcr_enc: enum v4l2_ycbcr_encoding, Y'CbCr encoding
  * @quantization: enum v4l2_quantization, colorspace quantization
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
