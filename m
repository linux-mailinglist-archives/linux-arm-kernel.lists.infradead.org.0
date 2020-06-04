Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B30FA1EE613
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 15:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WAIYigVvvSm5dIoaOdTFWVLs4O+hV6PGG4DQSl8Tsvk=; b=TlbR6FxrSMR6+Q
	3/H/Szt8HejDdpwYWItBP/fE3Tl9ZSRCI1y5CIQVeq/pSAjAnctqCDRb5RYih0K6ziZtmCVZPTqFl
	hLFiRaNB8rQG8VKqDTmsa5urbtdIE8iIgTzf4URiwD6PwYsNi6E3HauddRIniiHA8852izkbfzhdq
	/DaVjNABgrVkCqa4sO4ClzlaBvlaRpRI45cmFQa4lWT83+owJgXdRHOXSBuP36mRHy60wnp4hC+RQ
	3bJ9N6BhAL2/UMZaYS9WJ5UaQC4Ck6vWmXKGA5yOX/4gXto9/gfMY9mE576LXrYcxGK5bCckCgpg7
	bl/WVWpQSxLzK70J6hEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqL5-0002Zd-P4; Thu, 04 Jun 2020 13:55:23 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqJO-00017U-I6
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 13:53:41 +0000
Received: by mail-wr1-x441.google.com with SMTP id t18so6208739wru.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 06:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lGj2UMyH8lsz5cePu8qdjRLQp4Cv58ojSEdB01leLf4=;
 b=kUvM5lhA0X5A2xJgJf7Kx6ruICrlB1Lu2504upwpyDnwS32Swa5tp1GIls0pD9VZoo
 8bLhHT+Q0pojf5xrwFfO0+nESF089bvwl3TbvCNKxyg86ytL8urGhj3NTLKIbilWTTbY
 qb+iYcoIpGXUWad0EyS4IyE58Wgg3NB2qij5dVL/CWjgPJdfycgL5rOUqU2x/nhqGOZA
 cy7vkUybM5STb8o64YfRtWFvYWjMhUTJZpqs1BhdjYKiMZmMc+oa0qINif1NtiKtLmCr
 WSPCRxYJuVzURhrZVwrwIHQ64e7xDUfPHP2DxUeF3+QB04lYG42va4p1rGSugGdjv/WB
 tS6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lGj2UMyH8lsz5cePu8qdjRLQp4Cv58ojSEdB01leLf4=;
 b=Vx5goEMTI/5LnqNkWbuDyuvZQc7YFFhE3JiozTlCRHQK5iMd2mjMysovuGVY7qgmtt
 k8bDV+flWZiJijudLORIaj+NXdhp7v8Y7zW9jUwlExH4D5Ara1W9qKiv6VJP5+aYAAux
 97Eu6lRGBmsiScLg605Tl+L7rgMof5MCIAyMI6lf/c+H9YQx2Td1NV9J+giqrk0wvYho
 smT/vYjWAtoqR2NcJW9e3G/JpM3sO4K6hqjO7PSh+oPQtcZg59Lb9iWVOM/w2Wp7mM+R
 yd4Skbz4XXUJLjXd/tBozsumkVi5lsczAdurXDCrv8y4XPVlYZYoAAoaJ4FX3KCSZAWp
 RyXQ==
X-Gm-Message-State: AOAM5314AeWVpBFUXe+6P5PAd1iVHfJ46zlWOtY5/6FXuJMs5c12KkYf
 BvrsT4CfqIchr0QIyF7g+8pttQ==
X-Google-Smtp-Source: ABdhPJyMzfHyb8pTAQmMxPrEsEYW71XUGUiF6xOTjuUJnnxbQaZcY7he/oHRn21BXafwxPrX8dtpRA==
X-Received: by 2002:adf:f6ce:: with SMTP id y14mr4801259wrp.90.1591278816084; 
 Thu, 04 Jun 2020 06:53:36 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:22:5867:d2c6:75f4])
 by smtp.gmail.com with ESMTPSA id
 i74sm8185599wri.49.2020.06.04.06.53.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 06:53:35 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: hverkuil-cisco@xs4all.nl
Subject: [PATCH 5/5] media: meson: vdec: handle compressed output pixel format
 negociation with consumer
Date: Thu,  4 Jun 2020 15:53:17 +0200
Message-Id: <20200604135317.9235-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200604135317.9235-1-narmstrong@baylibre.com>
References: <20200604135317.9235-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_065338_711138_B0D2C317 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Jourdan <mjourdan@baylibre.com>

Add the necessary to add support for negociating the compressed buffer
pixel format with the V4L2 M2M consumer, and allocating the right
buffers in this case.

Until a proper mechanism exists to pass a modifier along the pixel format,
only the generic V4L2_PIX_FMT_YUV420_8BIT and V4L2_PIX_FMT_YUV420_10BIT
format are passed in v4l2_pix_format_mplane struct for consumer.

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../media/meson/vdec/codec_hevc_common.c      |  1 -
 drivers/staging/media/meson/vdec/vdec.c       | 46 +++++++++++++++++++
 drivers/staging/media/meson/vdec/vdec.h       |  3 ++
 .../staging/media/meson/vdec/vdec_helpers.c   | 23 ++++++++++
 .../staging/media/meson/vdec/vdec_platform.c  |  9 ++--
 5 files changed, 78 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/meson/vdec/codec_hevc_common.c b/drivers/staging/media/meson/vdec/codec_hevc_common.c
index 73dae40b3319..78fada7b8fa9 100644
--- a/drivers/staging/media/meson/vdec/codec_hevc_common.c
+++ b/drivers/staging/media/meson/vdec/codec_hevc_common.c
@@ -10,7 +10,6 @@
 #include "vdec_helpers.h"
 #include "hevc_regs.h"
 
-#define MMU_COMPRESS_HEADER_SIZE 0x48000
 #define MMU_MAP_SIZE 0x4800
 
 const u16 vdec_hevc_parser_cmd[] = {
diff --git a/drivers/staging/media/meson/vdec/vdec.c b/drivers/staging/media/meson/vdec/vdec.c
index 3040136ceb77..9fb075f69cb9 100644
--- a/drivers/staging/media/meson/vdec/vdec.c
+++ b/drivers/staging/media/meson/vdec/vdec.c
@@ -192,6 +192,7 @@ static int vdec_queue_setup(struct vb2_queue *q, unsigned int *num_buffers,
 {
 	struct amvdec_session *sess = vb2_get_drv_priv(q);
 	u32 output_size = amvdec_get_output_size(sess);
+	u32 revision = sess->core->platform->revision;
 
 	if (*num_planes) {
 		switch (q->type) {
@@ -215,6 +216,12 @@ static int vdec_queue_setup(struct vb2_queue *q, unsigned int *num_buffers,
 				    sizes[2] < output_size / 4)
 					return -EINVAL;
 				break;
+			case V4L2_PIX_FMT_YUV420_8BIT:
+			case V4L2_PIX_FMT_YUV420_10BIT:
+				if (*num_planes != 1 ||
+				    sizes[0] < MMU_COMPRESS_HEADER_SIZE)
+					return -EINVAL;
+				break;
 			default:
 				return -EINVAL;
 			}
@@ -244,6 +251,24 @@ static int vdec_queue_setup(struct vb2_queue *q, unsigned int *num_buffers,
 			sizes[2] = output_size / 4;
 			*num_planes = 3;
 			break;
+		case V4L2_PIX_FMT_YUV420_8BIT:
+			if (revision >= VDEC_REVISION_G12A)
+				sizes[0] = MMU_COMPRESS_HEADER_SIZE;
+			else
+				sizes[0] = amvdec_amfbc_size(sess->width,
+							     sess->height,
+							     0, 0);
+			*num_planes = 1;
+			break;
+		case V4L2_PIX_FMT_YUV420_10BIT:
+			if (revision >= VDEC_REVISION_G12A)
+				sizes[0] = MMU_COMPRESS_HEADER_SIZE;
+			else
+				sizes[0] = amvdec_amfbc_size(sess->width,
+							     sess->height,
+							     1, 0);
+			*num_planes = 1;
+			break;
 		default:
 			return -EINVAL;
 		}
@@ -496,6 +521,7 @@ vdec_try_fmt_common(struct amvdec_session *sess, u32 size,
 	struct v4l2_plane_pix_format *pfmt = pixmp->plane_fmt;
 	const struct amvdec_format *fmts = sess->core->platform->formats;
 	const struct amvdec_format *fmt_out = NULL;
+	u32 revision = sess->core->platform->revision;
 	u32 output_size = 0;
 
 	memset(pfmt[0].reserved, 0, sizeof(pfmt[0].reserved));
@@ -548,6 +574,26 @@ vdec_try_fmt_common(struct amvdec_session *sess, u32 size,
 			pfmt[2].sizeimage = output_size / 2;
 			pfmt[2].bytesperline = ALIGN(pixmp->width, 32) / 2;
 			pixmp->num_planes = 3;
+		} else if (pixmp->pixelformat == V4L2_PIX_FMT_YUV420_8BIT) {
+			if (revision >= VDEC_REVISION_G12A) {
+				pfmt[0].sizeimage = MMU_COMPRESS_HEADER_SIZE;
+			} else {
+				pfmt[0].sizeimage =
+					amvdec_amfbc_size(pixmp->width,
+							  pixmp->height, 0, 0);
+				pfmt[0].bytesperline = pixmp->width;
+			}
+			pixmp->num_planes = 1;
+		} else if (pixmp->pixelformat == V4L2_PIX_FMT_YUV420_10BIT) {
+			if (revision >= VDEC_REVISION_G12A) {
+				pfmt[0].sizeimage = MMU_COMPRESS_HEADER_SIZE;
+			} else {
+				pfmt[0].sizeimage =
+					amvdec_amfbc_size(pixmp->width,
+							  pixmp->height, 1, 0);
+				pfmt[0].bytesperline = pixmp->width;
+			}
+			pixmp->num_planes = 1;
 		}
 	}
 
diff --git a/drivers/staging/media/meson/vdec/vdec.h b/drivers/staging/media/meson/vdec/vdec.h
index e3e4af73447a..1412054a70c4 100644
--- a/drivers/staging/media/meson/vdec/vdec.h
+++ b/drivers/staging/media/meson/vdec/vdec.h
@@ -17,6 +17,9 @@
 
 #include "vdec_platform.h"
 
+/* MMU header size for codecs using the IOMMU + FBC */
+#define MMU_COMPRESS_HEADER_SIZE 0x48000
+
 /* 32 buffers in 3-plane YUV420 */
 #define MAX_CANVAS (32 * 3)
 
diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.c b/drivers/staging/media/meson/vdec/vdec_helpers.c
index 320cac1ed03e..7166605b89ae 100644
--- a/drivers/staging/media/meson/vdec/vdec_helpers.c
+++ b/drivers/staging/media/meson/vdec/vdec_helpers.c
@@ -299,6 +299,22 @@ static void dst_buf_done(struct amvdec_session *sess,
 		vbuf->vb2_buf.planes[1].bytesused = output_size / 4;
 		vbuf->vb2_buf.planes[2].bytesused = output_size / 4;
 		break;
+	case V4L2_PIX_FMT_YUV420_8BIT:
+		if (sess->core->platform->revision >= VDEC_REVISION_G12A)
+			vbuf->vb2_buf.planes[0].bytesused =
+				MMU_COMPRESS_HEADER_SIZE;
+		else
+			vbuf->vb2_buf.planes[0].bytesused =
+			   amvdec_amfbc_size(sess->width, sess->height, 0, 0);
+		break;
+	case V4L2_PIX_FMT_YUV420_10BIT:
+		if (sess->core->platform->revision >= VDEC_REVISION_G12A)
+			vbuf->vb2_buf.planes[0].bytesused =
+				MMU_COMPRESS_HEADER_SIZE;
+		else
+			vbuf->vb2_buf.planes[0].bytesused =
+			   amvdec_amfbc_size(sess->width, sess->height, 1, 0);
+		break;
 	}
 
 	vbuf->vb2_buf.timestamp = timestamp;
@@ -478,6 +494,13 @@ void amvdec_src_change(struct amvdec_session *sess, u32 width,
 	sess->status = STATUS_NEEDS_RESUME;
 	sess->bitdepth = bitdepth;
 
+	if (sess->pixfmt_cap == V4L2_PIX_FMT_YUV420_8BIT &&
+	    bitdepth == 10)
+		sess->pixfmt_cap = V4L2_PIX_FMT_YUV420_10BIT;
+	else if (sess->pixfmt_cap == V4L2_PIX_FMT_YUV420_10BIT &&
+		 bitdepth == 8)
+		sess->pixfmt_cap = V4L2_PIX_FMT_YUV420_8BIT;
+
 	dev_dbg(sess->core->dev, "Res. changed (%ux%u), DPB %u, bitdepth %u\n",
 		width, height, dpb_size, bitdepth);
 	v4l2_event_queue_fh(&sess->fh, &ev);
diff --git a/drivers/staging/media/meson/vdec/vdec_platform.c b/drivers/staging/media/meson/vdec/vdec_platform.c
index eabbebab2da2..efc090d2a3bb 100644
--- a/drivers/staging/media/meson/vdec/vdec_platform.c
+++ b/drivers/staging/media/meson/vdec/vdec_platform.c
@@ -61,7 +61,8 @@ static const struct amvdec_format vdec_formats_gxl[] = {
 		.vdec_ops = &vdec_hevc_ops,
 		.codec_ops = &codec_vp9_ops,
 		.firmware_path = "meson/vdec/gxl_vp9.bin",
-		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, 0 },
+		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, V4L2_PIX_FMT_YUV420_8BIT,
+				 V4L2_PIX_FMT_YUV420_10BIT, 0 },
 		.flags = V4L2_FMT_FLAG_COMPRESSED |
 			 V4L2_FMT_FLAG_DYN_RESOLUTION,
 	}, {
@@ -149,7 +150,8 @@ static const struct amvdec_format vdec_formats_g12a[] = {
 		.vdec_ops = &vdec_hevc_ops,
 		.codec_ops = &codec_vp9_ops,
 		.firmware_path = "meson/vdec/g12a_vp9.bin",
-		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, 0 },
+		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, V4L2_PIX_FMT_YUV420_8BIT,
+				 V4L2_PIX_FMT_YUV420_10BIT, 0 },
 		.flags = V4L2_FMT_FLAG_COMPRESSED |
 			 V4L2_FMT_FLAG_DYN_RESOLUTION,
 	}, {
@@ -199,7 +201,8 @@ static const struct amvdec_format vdec_formats_sm1[] = {
 		.vdec_ops = &vdec_hevc_ops,
 		.codec_ops = &codec_vp9_ops,
 		.firmware_path = "meson/vdec/sm1_vp9_mmu.bin",
-		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, 0 },
+		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, V4L2_PIX_FMT_YUV420_8BIT,
+				 V4L2_PIX_FMT_YUV420_10BIT, 0 },
 		.flags = V4L2_FMT_FLAG_COMPRESSED |
 			 V4L2_FMT_FLAG_DYN_RESOLUTION,
 	}, {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
