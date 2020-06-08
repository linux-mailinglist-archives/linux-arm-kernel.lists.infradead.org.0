Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DFD1F22E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:12:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7zu4SBacHeXoTRjd8smWjHlQrW1qY/Si+Q13kvU7muI=; b=qrv/feJQe7yBSj
	U8junNFJk0WCoCkJ6TSQ5WOBtQv4fkt5LCP2DZKwY7X5gC8KXPYN9NxuK0dkxrsvXH4MvI7AO3olS
	7KAPBJrtOrdzhoRTE/TVs4LcKxHlv60HSpq/wmL4BfTLoK2rwBO+cZBPTeGqTwbvfst1IrQKHr9h4
	5urCa2i/er8SOPMkKdGZ0glueUgV2Sv56dRawP5HRG4hlCp1f7PO71w+5rYWKjZXlscJr37XcmlAb
	UgduHbEq9NaWgE0/hI41yLUlTDbsw9kEqlX/YPV5guwqeCASnJ29O14ysVqj5GYPvMNsGnQQYjF/l
	a5M6/XBavNzhgmdAle2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiQwU-0005pk-9L; Mon, 08 Jun 2020 23:12:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQsc-0008Of-WA
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:08:38 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A0EA20B80;
 Mon,  8 Jun 2020 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657714;
 bh=kaP/FO0bXL5pXYHZnRhTIm3f8R07p05FwcCbUeZnhno=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sVNj062oTiDVLNly3Qcf/hbj4KDG/+7c0VGUHGoCmbFIljRpx67bjOdMdp1Q9CH1E
 cItvYMto46MklAlfarXuOgjlIqVtFhLXZSwcGrsrpJw9zLu6tXI0A7Z9Plvy/KFxgr
 VWDzk6n6PO2d+SAfRUbH2zU/7XH6Up8Z/4yLDTqU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 109/274] media: imx: utils: fix and simplify pixel
 format enumeration
Date: Mon,  8 Jun 2020 19:03:22 -0400
Message-Id: <20200608230607.3361041-109-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_160835_191736_4D89EB1D 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Philipp Zabel <p.zabel@pengutronix.de>

[ Upstream commit f2267d7ed803add8820c7a6537c12a6d8732f570 ]

Merge yuv_formats and rgb_formats into a single array. Always loop over
all entries, skipping those that do not match the requested search
criteria. This simplifies the code, lets us get rid of the manual
counting of array entries, and stops accidentally ignoring some non-mbus
RGB formats.

Before:

  $ v4l2-ctl -d /dev/video14 --list-formats-out
  ioctl: VIDIOC_ENUM_FMT
	Type: Video Output

	[0]: 'UYVY' (UYVY 4:2:2)
	[1]: 'YUYV' (YUYV 4:2:2)
	[2]: 'YU12' (Planar YUV 4:2:0)
	[3]: 'YV12' (Planar YVU 4:2:0)
	[4]: '422P' (Planar YUV 4:2:2)
	[5]: 'NV12' (Y/CbCr 4:2:0)
	[6]: 'NV16' (Y/CbCr 4:2:2)
	[7]: 'RGBP' (16-bit RGB 5-6-5)
	[8]: 'RGB3' (24-bit RGB 8-8-8)
	[9]: 'BX24' (32-bit XRGB 8-8-8-8)

After:

  $ v4l2-ctl -d /dev/video14 --list-formats-out
  ioctl: VIDIOC_ENUM_FMT
	Type: Video Output

	[0]: 'UYVY' (UYVY 4:2:2)
	[1]: 'YUYV' (YUYV 4:2:2)
	[2]: 'YU12' (Planar YUV 4:2:0)
	[3]: 'YV12' (Planar YVU 4:2:0)
	[4]: '422P' (Planar YUV 4:2:2)
	[5]: 'NV12' (Y/CbCr 4:2:0)
	[6]: 'NV16' (Y/CbCr 4:2:2)
	[7]: 'RGBP' (16-bit RGB 5-6-5)
	[8]: 'RGB3' (24-bit RGB 8-8-8)
	[9]: 'BGR3' (24-bit BGR 8-8-8)
	[10]: 'BX24' (32-bit XRGB 8-8-8-8)
	[11]: 'XR24' (32-bit BGRX 8-8-8-8)
	[12]: 'RX24' (32-bit XBGR 8-8-8-8)
	[13]: 'XB24' (32-bit RGBX 8-8-8-8)

Tested on a imx6q-sabresd.

[laurent.pinchart@ideasonboard.com: Make loop counters unsigned]
[laurent.pinchart@ideasonboard.com: Decrement index instead of adding a counter]
[laurent.pinchart@ideasonboard.com: Return directly from within loop instead of breaking]
[slongerbeam@gmail.com: Fix colorspace comparison error]

Fixes: e130291212df5 ("[media] media: Add i.MX media core driver")
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Tested-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/imx/imx-media-utils.c | 193 ++++++--------------
 1 file changed, 59 insertions(+), 134 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
index fae981698c49..39469031e510 100644
--- a/drivers/staging/media/imx/imx-media-utils.c
+++ b/drivers/staging/media/imx/imx-media-utils.c
@@ -9,12 +9,9 @@
 
 /*
  * List of supported pixel formats for the subdevs.
- *
- * In all of these tables, the non-mbus formats (with no
- * mbus codes) must all fall at the end of the table.
  */
-
-static const struct imx_media_pixfmt yuv_formats[] = {
+static const struct imx_media_pixfmt pixel_formats[] = {
+	/*** YUV formats start here ***/
 	{
 		.fourcc	= V4L2_PIX_FMT_UYVY,
 		.codes  = {
@@ -31,12 +28,7 @@ static const struct imx_media_pixfmt yuv_formats[] = {
 		},
 		.cs     = IPUV3_COLORSPACE_YUV,
 		.bpp    = 16,
-	},
-	/***
-	 * non-mbus YUV formats start here. NOTE! when adding non-mbus
-	 * formats, NUM_NON_MBUS_YUV_FORMATS must be updated below.
-	 ***/
-	{
+	}, {
 		.fourcc	= V4L2_PIX_FMT_YUV420,
 		.cs     = IPUV3_COLORSPACE_YUV,
 		.bpp    = 12,
@@ -62,13 +54,7 @@ static const struct imx_media_pixfmt yuv_formats[] = {
 		.bpp    = 16,
 		.planar = true,
 	},
-};
-
-#define NUM_NON_MBUS_YUV_FORMATS 5
-#define NUM_YUV_FORMATS ARRAY_SIZE(yuv_formats)
-#define NUM_MBUS_YUV_FORMATS (NUM_YUV_FORMATS - NUM_NON_MBUS_YUV_FORMATS)
-
-static const struct imx_media_pixfmt rgb_formats[] = {
+	/*** RGB formats start here ***/
 	{
 		.fourcc	= V4L2_PIX_FMT_RGB565,
 		.codes  = {MEDIA_BUS_FMT_RGB565_2X8_LE},
@@ -83,12 +69,28 @@ static const struct imx_media_pixfmt rgb_formats[] = {
 		},
 		.cs     = IPUV3_COLORSPACE_RGB,
 		.bpp    = 24,
+	}, {
+		.fourcc	= V4L2_PIX_FMT_BGR24,
+		.cs     = IPUV3_COLORSPACE_RGB,
+		.bpp    = 24,
 	}, {
 		.fourcc	= V4L2_PIX_FMT_XRGB32,
 		.codes  = {MEDIA_BUS_FMT_ARGB8888_1X32},
 		.cs     = IPUV3_COLORSPACE_RGB,
 		.bpp    = 32,
 		.ipufmt = true,
+	}, {
+		.fourcc	= V4L2_PIX_FMT_XBGR32,
+		.cs     = IPUV3_COLORSPACE_RGB,
+		.bpp    = 32,
+	}, {
+		.fourcc	= V4L2_PIX_FMT_BGRX32,
+		.cs     = IPUV3_COLORSPACE_RGB,
+		.bpp    = 32,
+	}, {
+		.fourcc	= V4L2_PIX_FMT_RGBX32,
+		.cs     = IPUV3_COLORSPACE_RGB,
+		.bpp    = 32,
 	},
 	/*** raw bayer and grayscale formats start here ***/
 	{
@@ -182,33 +184,8 @@ static const struct imx_media_pixfmt rgb_formats[] = {
 		.bpp    = 16,
 		.bayer  = true,
 	},
-	/***
-	 * non-mbus RGB formats start here. NOTE! when adding non-mbus
-	 * formats, NUM_NON_MBUS_RGB_FORMATS must be updated below.
-	 ***/
-	{
-		.fourcc	= V4L2_PIX_FMT_BGR24,
-		.cs     = IPUV3_COLORSPACE_RGB,
-		.bpp    = 24,
-	}, {
-		.fourcc	= V4L2_PIX_FMT_XBGR32,
-		.cs     = IPUV3_COLORSPACE_RGB,
-		.bpp    = 32,
-	}, {
-		.fourcc	= V4L2_PIX_FMT_BGRX32,
-		.cs     = IPUV3_COLORSPACE_RGB,
-		.bpp    = 32,
-	}, {
-		.fourcc	= V4L2_PIX_FMT_RGBX32,
-		.cs     = IPUV3_COLORSPACE_RGB,
-		.bpp    = 32,
-	},
 };
 
-#define NUM_NON_MBUS_RGB_FORMATS 2
-#define NUM_RGB_FORMATS ARRAY_SIZE(rgb_formats)
-#define NUM_MBUS_RGB_FORMATS (NUM_RGB_FORMATS - NUM_NON_MBUS_RGB_FORMATS)
-
 static const struct imx_media_pixfmt ipu_yuv_formats[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_YUV32,
@@ -246,21 +223,24 @@ static void init_mbus_colorimetry(struct v4l2_mbus_framefmt *mbus,
 					      mbus->ycbcr_enc);
 }
 
-static const
-struct imx_media_pixfmt *__find_format(u32 fourcc,
-				       u32 code,
-				       bool allow_non_mbus,
-				       bool allow_bayer,
-				       const struct imx_media_pixfmt *array,
-				       u32 array_size)
+static const struct imx_media_pixfmt *find_format(u32 fourcc,
+						  u32 code,
+						  enum codespace_sel cs_sel,
+						  bool allow_non_mbus,
+						  bool allow_bayer)
 {
-	const struct imx_media_pixfmt *fmt;
-	int i, j;
+	unsigned int i;
 
-	for (i = 0; i < array_size; i++) {
-		fmt = &array[i];
+	for (i = 0; i < ARRAY_SIZE(pixel_formats); i++) {
+		const struct imx_media_pixfmt *fmt = &pixel_formats[i];
+		enum codespace_sel fmt_cs_sel;
+		unsigned int j;
 
-		if ((!allow_non_mbus && !fmt->codes[0]) ||
+		fmt_cs_sel = (fmt->cs == IPUV3_COLORSPACE_YUV) ?
+			CS_SEL_YUV : CS_SEL_RGB;
+
+		if ((cs_sel != CS_SEL_ANY && fmt_cs_sel != cs_sel) ||
+		    (!allow_non_mbus && !fmt->codes[0]) ||
 		    (!allow_bayer && fmt->bayer))
 			continue;
 
@@ -270,39 +250,13 @@ struct imx_media_pixfmt *__find_format(u32 fourcc,
 		if (!code)
 			continue;
 
-		for (j = 0; fmt->codes[j]; j++) {
+		for (j = 0; j < ARRAY_SIZE(fmt->codes) && fmt->codes[j]; j++) {
 			if (code == fmt->codes[j])
 				return fmt;
 		}
 	}
-	return NULL;
-}
 
-static const struct imx_media_pixfmt *find_format(u32 fourcc,
-						  u32 code,
-						  enum codespace_sel cs_sel,
-						  bool allow_non_mbus,
-						  bool allow_bayer)
-{
-	const struct imx_media_pixfmt *ret;
-
-	switch (cs_sel) {
-	case CS_SEL_YUV:
-		return __find_format(fourcc, code, allow_non_mbus, allow_bayer,
-				     yuv_formats, NUM_YUV_FORMATS);
-	case CS_SEL_RGB:
-		return __find_format(fourcc, code, allow_non_mbus, allow_bayer,
-				     rgb_formats, NUM_RGB_FORMATS);
-	case CS_SEL_ANY:
-		ret = __find_format(fourcc, code, allow_non_mbus, allow_bayer,
-				    yuv_formats, NUM_YUV_FORMATS);
-		if (ret)
-			return ret;
-		return __find_format(fourcc, code, allow_non_mbus, allow_bayer,
-				     rgb_formats, NUM_RGB_FORMATS);
-	default:
-		return NULL;
-	}
+	return NULL;
 }
 
 static int enum_format(u32 *fourcc, u32 *code, u32 index,
@@ -310,61 +264,32 @@ static int enum_format(u32 *fourcc, u32 *code, u32 index,
 		       bool allow_non_mbus,
 		       bool allow_bayer)
 {
-	const struct imx_media_pixfmt *fmt;
-	u32 mbus_yuv_sz = NUM_MBUS_YUV_FORMATS;
-	u32 mbus_rgb_sz = NUM_MBUS_RGB_FORMATS;
-	u32 yuv_sz = NUM_YUV_FORMATS;
-	u32 rgb_sz = NUM_RGB_FORMATS;
+	unsigned int i;
 
-	switch (cs_sel) {
-	case CS_SEL_YUV:
-		if (index >= yuv_sz ||
-		    (!allow_non_mbus && index >= mbus_yuv_sz))
-			return -EINVAL;
-		fmt = &yuv_formats[index];
-		break;
-	case CS_SEL_RGB:
-		if (index >= rgb_sz ||
-		    (!allow_non_mbus && index >= mbus_rgb_sz))
-			return -EINVAL;
-		fmt = &rgb_formats[index];
-		if (!allow_bayer && fmt->bayer)
-			return -EINVAL;
-		break;
-	case CS_SEL_ANY:
-		if (!allow_non_mbus) {
-			if (index >= mbus_yuv_sz) {
-				index -= mbus_yuv_sz;
-				if (index >= mbus_rgb_sz)
-					return -EINVAL;
-				fmt = &rgb_formats[index];
-				if (!allow_bayer && fmt->bayer)
-					return -EINVAL;
-			} else {
-				fmt = &yuv_formats[index];
-			}
-		} else {
-			if (index >= yuv_sz + rgb_sz)
-				return -EINVAL;
-			if (index >= yuv_sz) {
-				fmt = &rgb_formats[index - yuv_sz];
-				if (!allow_bayer && fmt->bayer)
-					return -EINVAL;
-			} else {
-				fmt = &yuv_formats[index];
-			}
+	for (i = 0; i < ARRAY_SIZE(pixel_formats); i++) {
+		const struct imx_media_pixfmt *fmt = &pixel_formats[i];
+		enum codespace_sel fmt_cs_sel;
+
+		fmt_cs_sel = (fmt->cs == IPUV3_COLORSPACE_YUV) ?
+			CS_SEL_YUV : CS_SEL_RGB;
+
+		if ((cs_sel != CS_SEL_ANY && fmt_cs_sel != cs_sel) ||
+		    (!allow_non_mbus && !fmt->codes[0]) ||
+		    (!allow_bayer && fmt->bayer))
+			continue;
+
+		if (index == 0) {
+			if (fourcc)
+				*fourcc = fmt->fourcc;
+			if (code)
+				*code = fmt->codes[0];
+			return 0;
 		}
-		break;
-	default:
-		return -EINVAL;
-	}
 
-	if (fourcc)
-		*fourcc = fmt->fourcc;
-	if (code)
-		*code = fmt->codes[0];
+		index--;
+	}
 
-	return 0;
+	return -EINVAL;
 }
 
 const struct imx_media_pixfmt *
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
