Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D38E1F2212
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xU5RT0etDPe3WzaG6plE92ED0vjwoGdBEW6FTLZTJ+I=; b=rd8/IEvLytwnW5
	lv3PI+Xp1xjMInO9pCE8bxHYNlAiGpYdpG/CsUm1KZHwDTzvzWagdpfGfk4uzVoDamxCV0jXomD69
	X9hZ1JhbimZwBKWIYz+oOarkOMAVe9rx7IEWtUoYDmMIxC7S06b5hlm5pfUnzWvEIKx6zdxwneISN
	GymCG5KmJ1tUeeILPOOzubOf/tgX06Flxd8lluWk/tkWphoiLYR2xqPoIveNKGrbHEIVoJBZ/7ZSV
	OGdE91ComLqWVXfmPh18AImNJWFbZBVbM5ynLEcJSpYhBSHQQx6yFFlapZBf2DUd5dCenn1mp5cyH
	YXvMxXhMwRDtnsFbAJdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiQqY-0006K9-Ov; Mon, 08 Jun 2020 23:06:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQqQ-0006J2-ST
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:06:20 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 83AF82078B;
 Mon,  8 Jun 2020 23:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657578;
 bh=Mo/LmzV2QH5IQjVnMsc7iY/hSjl6NooGCziyrango3A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PaZI19HqaswJ2RRRfF6TMBox4I5+8A9tCnSqXso92wcV+bTthSBYnR8N4jlrXOGrm
 +qK4Z82ucPg1pQqh4rwciI61DEpr+JnSvOQUbxGW8/NrnpS5vWMmT3Ec0/NWAim8uu
 ndu3d3CjJfQLVuuTdLlf8hyOCGV1oFRLHY69EwlI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 008/274] media: imx: imx7-mipi-csis: Cleanup and
 fix subdev pad format handling
Date: Mon,  8 Jun 2020 19:01:41 -0400
Message-Id: <20200608230607.3361041-8-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_160618_964715_CEE3CE26 
X-CRM114-Status: GOOD (  15.31  )
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
 Rui Miguel Silva <rmfrfs@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

[ Upstream commit d321dd233b9f2bb407b8e6b4759408f09ec207c3 ]

The subdev set pad format operation currently misbehaves in multiple ways:

- mipi_csis_try_format() unconditionally stores the format in the device
  state, even for V4L2_SUBDEV_FORMAT_TRY.

- The format is never stored in the pad cfg, but the pad cfg format
  always overwrites the format requested by the user.

- The sink format is not propagated to the source.

Fix all this by reworking the set format operation as follows:

1. For the source pad, turn set() into get() as the source format is not
   modifiable.
2. Validate the requested format and updated the stored format
   accordingly.
3. Return the format actually set.
4. Propagate the format from sink to source.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Acked-by: Rui Miguel Silva <rmfrfs@gmail.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 82 ++++++++++------------
 1 file changed, 37 insertions(+), 45 deletions(-)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index fbc1a924652a..6318f0aebb4b 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -669,28 +669,6 @@ static int mipi_csis_init_cfg(struct v4l2_subdev *mipi_sd,
 	return 0;
 }
 
-static struct csis_pix_format const *
-mipi_csis_try_format(struct v4l2_subdev *mipi_sd, struct v4l2_mbus_framefmt *mf)
-{
-	struct csi_state *state = mipi_sd_to_csis_state(mipi_sd);
-	struct csis_pix_format const *csis_fmt;
-
-	csis_fmt = find_csis_format(mf->code);
-	if (!csis_fmt)
-		csis_fmt = &mipi_csis_formats[0];
-
-	v4l_bound_align_image(&mf->width, 1, CSIS_MAX_PIX_WIDTH,
-			      csis_fmt->pix_width_alignment,
-			      &mf->height, 1, CSIS_MAX_PIX_HEIGHT, 1,
-			      0);
-
-	state->format_mbus.code = csis_fmt->code;
-	state->format_mbus.width = mf->width;
-	state->format_mbus.height = mf->height;
-
-	return csis_fmt;
-}
-
 static struct v4l2_mbus_framefmt *
 mipi_csis_get_format(struct csi_state *state,
 		     struct v4l2_subdev_pad_config *cfg,
@@ -703,53 +681,67 @@ mipi_csis_get_format(struct csi_state *state,
 	return &state->format_mbus;
 }
 
-static int mipi_csis_set_fmt(struct v4l2_subdev *mipi_sd,
+static int mipi_csis_get_fmt(struct v4l2_subdev *mipi_sd,
 			     struct v4l2_subdev_pad_config *cfg,
 			     struct v4l2_subdev_format *sdformat)
 {
 	struct csi_state *state = mipi_sd_to_csis_state(mipi_sd);
-	struct csis_pix_format const *csis_fmt;
 	struct v4l2_mbus_framefmt *fmt;
 
-	if (sdformat->pad >= CSIS_PADS_NUM)
-		return -EINVAL;
-
-	fmt = mipi_csis_get_format(state, cfg, sdformat->which, sdformat->pad);
-
 	mutex_lock(&state->lock);
-	if (sdformat->pad == CSIS_PAD_SOURCE) {
-		sdformat->format = *fmt;
-		goto unlock;
-	}
-
-	csis_fmt = mipi_csis_try_format(mipi_sd, &sdformat->format);
-
+	fmt = mipi_csis_get_format(state, cfg, sdformat->which, sdformat->pad);
 	sdformat->format = *fmt;
-
-	if (csis_fmt && sdformat->which == V4L2_SUBDEV_FORMAT_ACTIVE)
-		state->csis_fmt = csis_fmt;
-	else
-		cfg->try_fmt = sdformat->format;
-
-unlock:
 	mutex_unlock(&state->lock);
 
 	return 0;
 }
 
-static int mipi_csis_get_fmt(struct v4l2_subdev *mipi_sd,
+static int mipi_csis_set_fmt(struct v4l2_subdev *mipi_sd,
 			     struct v4l2_subdev_pad_config *cfg,
 			     struct v4l2_subdev_format *sdformat)
 {
 	struct csi_state *state = mipi_sd_to_csis_state(mipi_sd);
+	struct csis_pix_format const *csis_fmt;
 	struct v4l2_mbus_framefmt *fmt;
 
-	mutex_lock(&state->lock);
+	/*
+	 * The CSIS can't transcode in any way, the source format can't be
+	 * modified.
+	 */
+	if (sdformat->pad == CSIS_PAD_SOURCE)
+		return mipi_csis_get_fmt(mipi_sd, cfg, sdformat);
+
+	if (sdformat->pad != CSIS_PAD_SINK)
+		return -EINVAL;
 
 	fmt = mipi_csis_get_format(state, cfg, sdformat->which, sdformat->pad);
 
+	mutex_lock(&state->lock);
+
+	/* Validate the media bus code and clamp the size. */
+	csis_fmt = find_csis_format(sdformat->format.code);
+	if (!csis_fmt)
+		csis_fmt = &mipi_csis_formats[0];
+
+	fmt->code = csis_fmt->code;
+	fmt->width = sdformat->format.width;
+	fmt->height = sdformat->format.height;
+
+	v4l_bound_align_image(&fmt->width, 1, CSIS_MAX_PIX_WIDTH,
+			      csis_fmt->pix_width_alignment,
+			      &fmt->height, 1, CSIS_MAX_PIX_HEIGHT, 1, 0);
+
 	sdformat->format = *fmt;
 
+	/* Propagate the format from sink to source. */
+	fmt = mipi_csis_get_format(state, cfg, sdformat->which,
+				   CSIS_PAD_SOURCE);
+	*fmt = sdformat->format;
+
+	/* Store the CSIS format descriptor for active formats. */
+	if (sdformat->which == V4L2_SUBDEV_FORMAT_ACTIVE)
+		state->csis_fmt = csis_fmt;
+
 	mutex_unlock(&state->lock);
 
 	return 0;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
