Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7990C1EE603
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 15:54:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQk/dQoVvId5JFfHBFtLsM12Pv1nlM19Ufq98mJGFNM=; b=iQ8lq76bbn+qgQ
	gqDX9qhO+FrYXJP+6aNw6JUINk2ZxenO+VOYDGCyYO2s16nX9vH/7Bzy1BFB767t2ZQYLYN1+0m37
	fTFLOlnfznlx3HlE+QH/gA2L6c78et59hRkisFw/TcJHChR5MeAsAdzM/uqVs9v2MnR5b4oZE0KoH
	yf3XB+q4saK/z0RgdPemjlivIEILioIVEhU+7TAhDzV5GznAfZdk+xNXFD8SSmvzwE5eEqGPja5U0
	AV7j4MiQGI5XmTZXG2QnpYLXJmAjRgZ5PQyyvsxsjeW4lqbKWMqKlyCFt5wDlK3eK4UkB3PPKsS7U
	zBidWaLy03Pl5EJyGVsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqJl-0001Kl-3S; Thu, 04 Jun 2020 13:54:01 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqJG-00012D-RA
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 13:53:33 +0000
Received: by mail-wr1-x443.google.com with SMTP id c3so6171641wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 06:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Fs26md6QbBGAquJwpk095GGSGBX/m/yeaPP+lwPf4x8=;
 b=bTpVL1yfwhHL564oV9oXTuVi5bwYohXzTpcKvqoytnCDbbMUIAeZsrdq92E0qwRRSg
 UfSDj3lzKt+diIWgtJqYc2UKsOBY/ArWO+KMdr64+3lR8Puu98hTn/h1lbs8pZD3z0a5
 6ShQ9QS2p4Zr3km9dLUyszhnICzksvQjbCrHKAfOpH8DBiP7RsMzrXzBw1bJT3KiwTm3
 9xZUp0uS871oMpIXbSrQ/0KnqXJ/ZEg8yRFTESmOv1jd2O4crFzKduVGLDXRc8vcZgCD
 uUtou4MeMzMCIRxtSYLva3dOgaRLMh0YBcvkdPYbchEEWfISZiUqH0diRmCqtZ42LoKm
 G+jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Fs26md6QbBGAquJwpk095GGSGBX/m/yeaPP+lwPf4x8=;
 b=tJt56QbYLc4Yn+mwAJ03BNRKyLhArpkAHjc0YmJzotaKVzewYRl8wkrSu9z1ZNOfv8
 RHvnbruqp8MXTRN1paCEmiyI3S31NIIz1UApTS1fD9ic+ypAw4lNjJt2M/niWp/r9dq/
 RAeBfdwWeBe966+xsYfX4rW3S37xKcsloHT2nmQmGpIiOViKXW/Qs+U03+gAJ26/+9JK
 JVqwj+R5uzBM+IZt5CfRZ2DZUGWzZ+uQ4ABDfkLAVtmk2sxh1faFagU6UjyXJH7fEMgw
 inQ2NXYxJ3OyOihJo3BfcGzZuR/TSXkpYeYG213DHJh80tlj2m/VbO4lxGGc85L2U4bo
 Cg3Q==
X-Gm-Message-State: AOAM533Gar2pDRxJ+76Nl728UyxtcruBKBi67HOS6v1g/OBMWiar195Z
 jyYn777VP2xtk2AURAYRquL95A==
X-Google-Smtp-Source: ABdhPJwqpOH22rRrTWj54Pu3JjP2wensOE1kRwQ6BI5hptsY6t27TXlnHJBKfdM8GJs/L3uqecz/Pw==
X-Received: by 2002:a5d:4dc9:: with SMTP id f9mr4441675wru.407.1591278809353; 
 Thu, 04 Jun 2020 06:53:29 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:22:5867:d2c6:75f4])
 by smtp.gmail.com with ESMTPSA id
 i74sm8185599wri.49.2020.06.04.06.53.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 06:53:28 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: hverkuil-cisco@xs4all.nl
Subject: [PATCH 1/5] media: videodev2: add Compressed Framebuffer pixel formats
Date: Thu,  4 Jun 2020 15:53:13 +0200
Message-Id: <20200604135317.9235-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200604135317.9235-1-narmstrong@baylibre.com>
References: <20200604135317.9235-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_065330_879876_46E30662 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

Add two generic Compressed Framebuffer pixel formats to be used
with a modifier when imported back in another subsystem like DRM/KMS.

These pixel formats represents generic 8bits and 10bits compressed buffers
with a vendor specific layout.

These are aligned with the DRM_FORMAT_YUV420_8BIT and DRM_FORMAT_YUV420_10BIT
used to describe the underlying compressed buffers used for ARM Framebuffer
Compression. In the Amlogic case, the compression is different but the
underlying buffer components is the same.

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/media/v4l2-core/v4l2-ioctl.c | 2 ++
 include/uapi/linux/videodev2.h       | 9 +++++++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index 2322f08a98be..8f14adfd5bc5 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -1447,6 +1447,8 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
 		case V4L2_PIX_FMT_S5C_UYVY_JPG:	descr = "S5C73MX interleaved UYVY/JPEG"; break;
 		case V4L2_PIX_FMT_MT21C:	descr = "Mediatek Compressed Format"; break;
 		case V4L2_PIX_FMT_SUNXI_TILED_NV12: descr = "Sunxi Tiled NV12 Format"; break;
+		case V4L2_PIX_FMT_YUV420_8BIT:	descr = "Compressed YUV 4:2:0 8-bit Format"; break;
+		case V4L2_PIX_FMT_YUV420_10BIT:	descr = "Compressed YUV 4:2:0 10-bit Format"; break;
 		default:
 			if (fmt->description[0])
 				return;
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index c3a1cf1c507f..90b9949acb8a 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -705,6 +705,15 @@ struct v4l2_pix_format {
 #define V4L2_PIX_FMT_FWHT     v4l2_fourcc('F', 'W', 'H', 'T') /* Fast Walsh Hadamard Transform (vicodec) */
 #define V4L2_PIX_FMT_FWHT_STATELESS     v4l2_fourcc('S', 'F', 'W', 'H') /* Stateless FWHT (vicodec) */
 
+/*
+ * Compressed Luminance+Chrominance meta-formats
+ * In these formats, the component ordering is specified (Y, followed by U
+ * then V), but the exact Linear layout is undefined.
+ * These formats can only be used with a non-Linear modifier.
+ */
+#define V4L2_PIX_FMT_YUV420_8BIT	v4l2_fourcc('Y', 'U', '0', '8') /* 1-plane YUV 4:2:0 8-bit */
+#define V4L2_PIX_FMT_YUV420_10BIT	v4l2_fourcc('Y', 'U', '1', '0') /* 1-plane YUV 4:2:0 10-bit */
+
 /*  Vendor-specific formats   */
 #define V4L2_PIX_FMT_CPIA1    v4l2_fourcc('C', 'P', 'I', 'A') /* cpia1 YUV */
 #define V4L2_PIX_FMT_WNVA     v4l2_fourcc('W', 'N', 'V', 'A') /* Winnov hw compress */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
