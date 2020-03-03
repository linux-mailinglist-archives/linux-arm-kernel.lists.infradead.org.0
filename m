Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9834177656
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 13:47:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lVzPzcEDawyIHueZtM6qhWIw3k1br85kFZy5J/x6tds=; b=YB6Pvopp1gHHnX
	iT4dIdN9QE5JFz4s9arWz1IxL654JXA1au6hm7kx8/FoOXaMuDzuBan7XjRiqEw/4aY0CvIrtk2ps
	QSrgPTYXKMsVvsWdenHvOG47jCj7guAg0V/0H4qNgxFtxcn7OrGFtQjoTNTTUGb/PWkQRpqan6gwf
	J33S8uD97fxthYPuw7uweycWO1GgH8xDm0O7y77sMFMwULQ+IXKLcW3twzumKvz11+33nDTbiuthM
	4pL2VLKnEzaD4uW5Ru/gxGND8BLv8O9oBdjRu/6lre17qrakzODKkpSTXs3NciQ1gnzn695AHvD+G
	RF2oQVne202oq8oaz4Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j96wr-0001PT-Ux; Tue, 03 Mar 2020 12:46:57 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j96v9-0007Uz-9e; Tue, 03 Mar 2020 12:45:13 +0000
X-UUID: 368110217fed44dba42874720fc3ecd2-20200303
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=lH1GxrrBmjcQZs+IZ5Gs3RNfRgwZkD+ZkgKeH4PktnM=; 
 b=fEJrdJ6moLK/dZX658utmY/SvMNjYwSlEsuuRz8c34nZrR81gaD5a4hD7xnMMpJDuLlN9VoUJ9xPV5B5RtM4ZEVh5R+Y9tUQcnCLF5lz0saHmONCBLhQAFRV7SLbKdbwmy9c+80sR/0W9G2+xaW3TwkJu3YeATfPwAKpYw1v+F0=;
X-UUID: 368110217fed44dba42874720fc3ecd2-20200303
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1678892120; Tue, 03 Mar 2020 04:45:03 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Mar 2020 04:36:17 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Mar 2020 20:34:04 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 3 Mar 2020 20:35:40 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v7 04/11] media: platform: Use kernel native functions for
 improving code quality
Date: Tue, 3 Mar 2020 20:34:39 +0800
Message-ID: <20200303123446.20095-5-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200303123446.20095-1-xia.jiang@mediatek.com>
References: <20200303123446.20095-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_044511_473976_A1F78D06 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Use clamp() to replace mtk_jpeg_bound_align_image() and round() to
replace mtk_jpeg_align().

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
 .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 41 +++++--------------
 .../media/platform/mtk-jpeg/mtk_jpeg_core.h   |  8 ++--
 drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.c |  8 ++--
 drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.h |  5 ---
 4 files changed, 19 insertions(+), 43 deletions(-)

diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
index fb2c8d026580..4e9ff1f9732e 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
@@ -157,25 +157,6 @@ static struct mtk_jpeg_fmt *mtk_jpeg_find_format(struct mtk_jpeg_ctx *ctx,
 	return NULL;
 }
 
-static void mtk_jpeg_bound_align_image(u32 *w, unsigned int wmin,
-				       unsigned int wmax, unsigned int walign,
-				       u32 *h, unsigned int hmin,
-				       unsigned int hmax, unsigned int halign)
-{
-	int width, height, w_step, h_step;
-
-	width = *w;
-	height = *h;
-	w_step = 1 << walign;
-	h_step = 1 << halign;
-
-	v4l_bound_align_image(w, wmin, wmax, walign, h, hmin, hmax, halign, 0);
-	if (*w < width && (*w + w_step) <= wmax)
-		*w += w_step;
-	if (*h < height && (*h + h_step) <= hmax)
-		*h += h_step;
-}
-
 static void mtk_jpeg_adjust_fmt_mplane(struct mtk_jpeg_ctx *ctx,
 				       struct v4l2_format *f)
 {
@@ -218,25 +199,25 @@ static int mtk_jpeg_try_fmt_mplane(struct v4l2_format *f,
 	if (q_type == MTK_JPEG_FMT_TYPE_OUTPUT) {
 		struct v4l2_plane_pix_format *pfmt = &pix_mp->plane_fmt[0];
 
-		mtk_jpeg_bound_align_image(&pix_mp->width, MTK_JPEG_MIN_WIDTH,
-					   MTK_JPEG_MAX_WIDTH, 0,
-					   &pix_mp->height, MTK_JPEG_MIN_HEIGHT,
-					   MTK_JPEG_MAX_HEIGHT, 0);
+		pix_mp->height = clamp(pix_mp->height, MTK_JPEG_MIN_HEIGHT,
+				       MTK_JPEG_MAX_HEIGHT);
+		pix_mp->width = clamp(pix_mp->width, MTK_JPEG_MIN_WIDTH,
+				      MTK_JPEG_MAX_WIDTH);
 
 		memset(pfmt->reserved, 0, sizeof(pfmt->reserved));
 		pfmt->bytesperline = 0;
 		/* Source size must be aligned to 128 */
-		pfmt->sizeimage = mtk_jpeg_align(pfmt->sizeimage, 128);
+		pfmt->sizeimage = round_up(pfmt->sizeimage, 128);
 		if (pfmt->sizeimage == 0)
 			pfmt->sizeimage = MTK_JPEG_DEFAULT_SIZEIMAGE;
 		goto end;
 	}
 
 	/* type is MTK_JPEG_FMT_TYPE_CAPTURE */
-	mtk_jpeg_bound_align_image(&pix_mp->width, MTK_JPEG_MIN_WIDTH,
-				   MTK_JPEG_MAX_WIDTH, fmt->h_align,
-				   &pix_mp->height, MTK_JPEG_MIN_HEIGHT,
-				   MTK_JPEG_MAX_HEIGHT, fmt->v_align);
+	pix_mp->height = clamp(round_up(pix_mp->height, fmt->v_align),
+			       MTK_JPEG_MIN_HEIGHT, MTK_JPEG_MAX_HEIGHT);
+	pix_mp->width = clamp(round_up(pix_mp->width, fmt->h_align),
+			      MTK_JPEG_MIN_WIDTH, MTK_JPEG_MAX_WIDTH);
 
 	for (i = 0; i < fmt->colplanes; i++) {
 		struct v4l2_plane_pix_format *pfmt = &pix_mp->plane_fmt[i];
@@ -771,8 +752,8 @@ static void mtk_jpeg_set_dec_src(struct mtk_jpeg_ctx *ctx,
 {
 	bs->str_addr = vb2_dma_contig_plane_dma_addr(src_buf, 0);
 	bs->end_addr = bs->str_addr +
-			 mtk_jpeg_align(vb2_get_plane_payload(src_buf, 0), 16);
-	bs->size = mtk_jpeg_align(vb2_plane_size(src_buf, 0), 128);
+		       round_up(vb2_get_plane_payload(src_buf, 0), 16);
+	bs->size = round_up(vb2_plane_size(src_buf, 0), 128);
 }
 
 static int mtk_jpeg_set_dec_dst(struct mtk_jpeg_ctx *ctx,
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
index 999bd1427809..28e9b30ad5c3 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
@@ -21,10 +21,10 @@
 #define MTK_JPEG_FMT_TYPE_OUTPUT	1
 #define MTK_JPEG_FMT_TYPE_CAPTURE	2
 
-#define MTK_JPEG_MIN_WIDTH	32
-#define MTK_JPEG_MIN_HEIGHT	32
-#define MTK_JPEG_MAX_WIDTH	8192
-#define MTK_JPEG_MAX_HEIGHT	8192
+#define MTK_JPEG_MIN_WIDTH	32U
+#define MTK_JPEG_MIN_HEIGHT	32U
+#define MTK_JPEG_MAX_WIDTH	8192U
+#define MTK_JPEG_MAX_HEIGHT	8192U
 
 #define MTK_JPEG_DEFAULT_SIZEIMAGE	(1 * 1024 * 1024)
 
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.c
index ddf0dfa78e20..68abcfd7494d 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.c
@@ -153,10 +153,10 @@ static int mtk_jpeg_calc_dst_size(struct mtk_jpeg_dec_param *param)
 				param->sampling_w[i];
 		/* output format is 420/422 */
 		param->comp_w[i] = padding_w >> brz_w[i];
-		param->comp_w[i] = mtk_jpeg_align(param->comp_w[i],
-						  MTK_JPEG_DCTSIZE);
-		param->img_stride[i] = i ? mtk_jpeg_align(param->comp_w[i], 16)
-					: mtk_jpeg_align(param->comp_w[i], 32);
+		param->comp_w[i] = round_up(param->comp_w[i],
+					    MTK_JPEG_DCTSIZE);
+		param->img_stride[i] = i ? round_up(param->comp_w[i], 16)
+					: round_up(param->comp_w[i], 32);
 		ds_row_h[i] = (MTK_JPEG_DCTSIZE * param->sampling_h[i]);
 	}
 	param->dec_w = param->img_stride[0];
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.h
index 9c6584eaad99..7b0687f8f4b6 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.h
@@ -54,11 +54,6 @@ struct mtk_jpeg_dec_param {
 	u8 uv_brz_w;
 };
 
-static inline u32 mtk_jpeg_align(u32 val, u32 align)
-{
-	return (val + align - 1) & ~(align - 1);
-}
-
 struct mtk_jpeg_bs {
 	dma_addr_t	str_addr;
 	dma_addr_t	end_addr;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
