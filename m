Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 510BD2947B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 11:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MFgkbYJa7Z6QzPtM1u7kcMSBbSBnDm1guFj/D5egqF4=; b=cVZwNlncNuoDv8
	Ex5nfsTKhZuX4j3bY2HxuMiNcGYcWVmDJ5Eh/swIvZXJqbWk7XYUzYj7nnVHeY79YlfvOJKHgQTXJ
	nwRuVnELfhVbswbuzLPB41k29wPu9NmSoXHDWnsGEpYV4jG8sgK8OVRN6aztG5OM/Rm0dU9nac0wm
	z5iI36jOQ2eRGzE/kY/9dSZM+Pd4ulbZ4S0G3YHk0rjk20nyF8Me7Eo2crP+WYrWT3P6ofQ4G/Owd
	cRTZz9fs1zkL2Ns8pFYRPGMGAzR4C/MCryvsbe5kuMTPljeg5gO/68Zb8R2/b4wdEyAKevNNbClMH
	i+ZYO0yRyTW4NxERYXlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU6O4-00055M-Vm; Fri, 24 May 2019 09:21:17 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU6Nx-00052o-9v
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 09:21:10 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost.localdomain
 (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr [90.88.147.134])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 833891C001A;
 Fri, 24 May 2019 09:21:02 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v11 3/4] media: pixfmt: Add H264_SLICE_RAW format documentation
Date: Fri, 24 May 2019 11:20:30 +0200
Message-Id: <20190524092031.619-4-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190524092031.619-1-paul.kocialkowski@bootlin.com>
References: <20190524092031.619-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_022109_491307_34D81A1C 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Boris Brezillon <boris.brezillon@collabora.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The H264_SLICE_RAW format introduced before is meant for stateless
decoders that will need the H264 parsed slice data without the start code.

Let's document it.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
---
 .../media/uapi/v4l/pixfmt-compressed.rst      | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/media/uapi/v4l/pixfmt-compressed.rst b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
index 6c961cfb74da..4b701fc7653e 100644
--- a/Documentation/media/uapi/v4l/pixfmt-compressed.rst
+++ b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
@@ -52,6 +52,31 @@ Compressed Formats
       - ``V4L2_PIX_FMT_H264_MVC``
       - 'M264'
       - H264 MVC video elementary stream.
+    * .. _V4L2-PIX-FMT-H264-SLICE-RAW:
+
+      - ``V4L2_PIX_FMT_H264_SLICE_RAW``
+      - 'S264'
+      - H264 parsed slice data, without the start code and as
+	extracted from the H264 bitstream.  This format is adapted for
+	stateless video decoders that implement an H264 pipeline
+	(using the :ref:`mem2mem` and :ref:`media-request-api`).
+	Metadata associated with the frame to decode are required to
+	be passed through the ``V4L2_CID_MPEG_VIDEO_H264_SPS``,
+	``V4L2_CID_MPEG_VIDEO_H264_PPS``,
+	``V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX``,
+	``V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS`` and
+	``V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS`` controls.  See the
+	:ref:`associated Codec Control IDs <v4l2-mpeg-h264>`.  Exactly
+	one output and one capture buffer must be provided for use
+	with this pixel format. The output buffer must contain the
+	appropriate number of macroblocks to decode a full
+	corresponding frame to the matching capture buffer.
+
+	.. note::
+
+	   This format is not yet part of the public kernel API and it
+	   is expected to change.
+
     * .. _V4L2-PIX-FMT-H263:
 
       - ``V4L2_PIX_FMT_H263``
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
