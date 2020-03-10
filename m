Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D054117FEEF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 14:43:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYHcYPCTalxgrPT8dLIwb4ZpJn3Xw0QwFTVdPI9G8S4=; b=HMoVbRrkMGYTwN
	OOXaC+iuB2ksv/H1o+NzhP8F1UxIdF6vHwuyWTquAfqLyr8fqd+fxDcKdXY2mFAzFMuyvvJU/Y9u3
	SS+gKHDGMqgIHJ5dMKaGB6qHmVv0Dij9Oje8rCcf/iEJC7gpV49IfR/SMHZhb9tEKrHlqBVKwu/lI
	dZ800IJERWhw9bxlAVm9aJHYgCQ/MH5SFwJwQZOS/PtsZWZ3we77paL7pLUCPBHjccdp7tVTdGs6a
	HaClk9mW0/tJ5cm7CrFB1TKJdUVNM9CCCsbR+cG3RPD4jNzoGqHgeJdWu2RDw8xg45646tfgvPz/p
	rW8gy6K50c1/vAjvbXpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBfAR-0001SK-9p; Tue, 10 Mar 2020 13:43:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBfAE-0001QQ-F7
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 13:43:21 +0000
Received: from mail.kernel.org (ip5f5ad4e9.dynamic.kabel-deutschland.de
 [95.90.212.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 68419246AA;
 Tue, 10 Mar 2020 13:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583847797;
 bh=E8QkjHVkzOcpMzAbxGJQTzkpHIqmt5HiFJokGy90umg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1fsorBq9m4u8TSGUhgE7YDg4bocLSDsZCkOBBLiKF7xc0o4IUXDlUrth4mwUpCTB7
 nwDVR3Og3/3jap8Yq4/BNLay6ifrDiRXwDqSDHFVH5RR7pMJl14Xs8sjkriSZqjYu2
 zIIQSbKzlahHqKg2MDkaNZiXku9SpxfJCKf3GJlY=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jBfAB-0005wK-EA; Tue, 10 Mar 2020 14:43:15 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH v2 15/22] media: docs: split uAPI info from imx.rst
Date: Tue, 10 Mar 2020 14:43:06 +0100
Message-Id: <da5a18aa27c564cdb4fa6f84026be1c72c1a877c.1583847556.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1583847556.git.mchehab+huawei@kernel.org>
References: <cover.1583847556.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_064318_554959_D06B9417 
X-CRM114-Status: GOOD (  21.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This file contains both driver develompent documentation and
userspace API.

Split on two, as they're usually read by different audiences.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/media/v4l-drivers/imx-uapi.rst | 125 +++++++++++++++++++
 Documentation/media/v4l-drivers/imx.rst      |  88 +------------
 Documentation/media/v4l-drivers/index.rst    |   1 +
 3 files changed, 128 insertions(+), 86 deletions(-)
 create mode 100644 Documentation/media/v4l-drivers/imx-uapi.rst

diff --git a/Documentation/media/v4l-drivers/imx-uapi.rst b/Documentation/media/v4l-drivers/imx-uapi.rst
new file mode 100644
index 000000000000..8d47712dea9f
--- /dev/null
+++ b/Documentation/media/v4l-drivers/imx-uapi.rst
@@ -0,0 +1,125 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+=========================
+i.MX Video Capture Driver
+=========================
+
+Events
+======
+
+.. _imx_api_ipuX_csiY:
+
+ipuX_csiY
+---------
+
+This subdev can generate the following event when enabling the second
+IDMAC source pad:
+
+- V4L2_EVENT_IMX_FRAME_INTERVAL_ERROR
+
+The user application can subscribe to this event from the ipuX_csiY
+subdev node. This event is generated by the Frame Interval Monitor
+(see below for more on the FIM).
+
+Controls
+========
+
+.. _imx_api_FIM:
+
+Frame Interval Monitor in ipuX_csiY
+-----------------------------------
+
+The adv718x decoders can occasionally send corrupt fields during
+NTSC/PAL signal re-sync (too little or too many video lines). When
+this happens, the IPU triggers a mechanism to re-establish vertical
+sync by adding 1 dummy line every frame, which causes a rolling effect
+from image to image, and can last a long time before a stable image is
+recovered. Or sometimes the mechanism doesn't work at all, causing a
+permanent split image (one frame contains lines from two consecutive
+captured images).
+
+From experiment it was found that during image rolling, the frame
+intervals (elapsed time between two EOF's) drop below the nominal
+value for the current standard, by about one frame time (60 usec),
+and remain at that value until rolling stops.
+
+While the reason for this observation isn't known (the IPU dummy
+line mechanism should show an increase in the intervals by 1 line
+time every frame, not a fixed value), we can use it to detect the
+corrupt fields using a frame interval monitor. If the FIM detects a
+bad frame interval, the ipuX_csiY subdev will send the event
+V4L2_EVENT_IMX_FRAME_INTERVAL_ERROR. Userland can register with
+the FIM event notification on the ipuX_csiY subdev device node.
+Userland can issue a streaming restart when this event is received
+to correct the rolling/split image.
+
+The ipuX_csiY subdev includes custom controls to tweak some dials for
+FIM. If one of these controls is changed during streaming, the FIM will
+be reset and will continue at the new settings.
+
+- V4L2_CID_IMX_FIM_ENABLE
+
+Enable/disable the FIM.
+
+- V4L2_CID_IMX_FIM_NUM
+
+How many frame interval measurements to average before comparing against
+the nominal frame interval reported by the sensor. This can reduce noise
+caused by interrupt latency.
+
+- V4L2_CID_IMX_FIM_TOLERANCE_MIN
+
+If the averaged intervals fall outside nominal by this amount, in
+microseconds, the V4L2_EVENT_IMX_FRAME_INTERVAL_ERROR event is sent.
+
+- V4L2_CID_IMX_FIM_TOLERANCE_MAX
+
+If any intervals are higher than this value, those samples are
+discarded and do not enter into the average. This can be used to
+discard really high interval errors that might be due to interrupt
+latency from high system load.
+
+- V4L2_CID_IMX_FIM_NUM_SKIP
+
+How many frames to skip after a FIM reset or stream restart before
+FIM begins to average intervals.
+
+- V4L2_CID_IMX_FIM_ICAP_CHANNEL / V4L2_CID_IMX_FIM_ICAP_EDGE
+
+These controls will configure an input capture channel as the method
+for measuring frame intervals. This is superior to the default method
+of measuring frame intervals via EOF interrupt, since it is not subject
+to uncertainty errors introduced by interrupt latency.
+
+Input capture requires hardware support. A VSYNC signal must be routed
+to one of the i.MX6 input capture channel pads.
+
+V4L2_CID_IMX_FIM_ICAP_CHANNEL configures which i.MX6 input capture
+channel to use. This must be 0 or 1.
+
+V4L2_CID_IMX_FIM_ICAP_EDGE configures which signal edge will trigger
+input capture events. By default the input capture method is disabled
+with a value of IRQ_TYPE_NONE. Set this control to IRQ_TYPE_EDGE_RISING,
+IRQ_TYPE_EDGE_FALLING, or IRQ_TYPE_EDGE_BOTH to enable input capture,
+triggered on the given signal edge(s).
+
+When input capture is disabled, frame intervals will be measured via
+EOF interrupt.
+
+
+File list
+---------
+
+drivers/staging/media/imx/
+include/media/imx.h
+include/linux/imx-media.h
+
+
+Authors
+-------
+
+- Steve Longerbeam <steve_longerbeam@mentor.com>
+- Philipp Zabel <kernel@pengutronix.de>
+- Russell King <linux@armlinux.org.uk>
+
+Copyright (C) 2012-2017 Mentor Graphics Inc.
diff --git a/Documentation/media/v4l-drivers/imx.rst b/Documentation/media/v4l-drivers/imx.rst
index 1246573c1019..3182951c7651 100644
--- a/Documentation/media/v4l-drivers/imx.rst
+++ b/Documentation/media/v4l-drivers/imx.rst
@@ -191,14 +191,7 @@ or unqualified interlaced). The capture interface will enforce the same
 field order as the source pad field order (interlaced-bt if source pad
 is seq-bt, interlaced-tb if source pad is seq-tb).
 
-This subdev can generate the following event when enabling the second
-IDMAC source pad:
-
-- V4L2_EVENT_IMX_FRAME_INTERVAL_ERROR
-
-The user application can subscribe to this event from the ipuX_csiY
-subdev node. This event is generated by the Frame Interval Monitor
-(see below for more on the FIM).
+For events produced by ipuX_csiY, see ref:`imx_api_ipuX_csiY`.
 
 Cropping in ipuX_csiY
 ---------------------
@@ -247,84 +240,7 @@ rate by half at the IDMAC output source pad:
 Frame Interval Monitor in ipuX_csiY
 -----------------------------------
 
-The adv718x decoders can occasionally send corrupt fields during
-NTSC/PAL signal re-sync (too little or too many video lines). When
-this happens, the IPU triggers a mechanism to re-establish vertical
-sync by adding 1 dummy line every frame, which causes a rolling effect
-from image to image, and can last a long time before a stable image is
-recovered. Or sometimes the mechanism doesn't work at all, causing a
-permanent split image (one frame contains lines from two consecutive
-captured images).
-
-From experiment it was found that during image rolling, the frame
-intervals (elapsed time between two EOF's) drop below the nominal
-value for the current standard, by about one frame time (60 usec),
-and remain at that value until rolling stops.
-
-While the reason for this observation isn't known (the IPU dummy
-line mechanism should show an increase in the intervals by 1 line
-time every frame, not a fixed value), we can use it to detect the
-corrupt fields using a frame interval monitor. If the FIM detects a
-bad frame interval, the ipuX_csiY subdev will send the event
-V4L2_EVENT_IMX_FRAME_INTERVAL_ERROR. Userland can register with
-the FIM event notification on the ipuX_csiY subdev device node.
-Userland can issue a streaming restart when this event is received
-to correct the rolling/split image.
-
-The ipuX_csiY subdev includes custom controls to tweak some dials for
-FIM. If one of these controls is changed during streaming, the FIM will
-be reset and will continue at the new settings.
-
-- V4L2_CID_IMX_FIM_ENABLE
-
-Enable/disable the FIM.
-
-- V4L2_CID_IMX_FIM_NUM
-
-How many frame interval measurements to average before comparing against
-the nominal frame interval reported by the sensor. This can reduce noise
-caused by interrupt latency.
-
-- V4L2_CID_IMX_FIM_TOLERANCE_MIN
-
-If the averaged intervals fall outside nominal by this amount, in
-microseconds, the V4L2_EVENT_IMX_FRAME_INTERVAL_ERROR event is sent.
-
-- V4L2_CID_IMX_FIM_TOLERANCE_MAX
-
-If any intervals are higher than this value, those samples are
-discarded and do not enter into the average. This can be used to
-discard really high interval errors that might be due to interrupt
-latency from high system load.
-
-- V4L2_CID_IMX_FIM_NUM_SKIP
-
-How many frames to skip after a FIM reset or stream restart before
-FIM begins to average intervals.
-
-- V4L2_CID_IMX_FIM_ICAP_CHANNEL
-- V4L2_CID_IMX_FIM_ICAP_EDGE
-
-These controls will configure an input capture channel as the method
-for measuring frame intervals. This is superior to the default method
-of measuring frame intervals via EOF interrupt, since it is not subject
-to uncertainty errors introduced by interrupt latency.
-
-Input capture requires hardware support. A VSYNC signal must be routed
-to one of the i.MX6 input capture channel pads.
-
-V4L2_CID_IMX_FIM_ICAP_CHANNEL configures which i.MX6 input capture
-channel to use. This must be 0 or 1.
-
-V4L2_CID_IMX_FIM_ICAP_EDGE configures which signal edge will trigger
-input capture events. By default the input capture method is disabled
-with a value of IRQ_TYPE_NONE. Set this control to IRQ_TYPE_EDGE_RISING,
-IRQ_TYPE_EDGE_FALLING, or IRQ_TYPE_EDGE_BOTH to enable input capture,
-triggered on the given signal edge(s).
-
-When input capture is disabled, frame intervals will be measured via
-EOF interrupt.
-
+See ref:`imx_api_FIM`.
 
 ipuX_vdic
 ---------
diff --git a/Documentation/media/v4l-drivers/index.rst b/Documentation/media/v4l-drivers/index.rst
index 364c65ea86fb..67665a8abe02 100644
--- a/Documentation/media/v4l-drivers/index.rst
+++ b/Documentation/media/v4l-drivers/index.rst
@@ -75,5 +75,6 @@ For more details see the file COPYING in the source distribution of Linux.
 	vimc-devel
 
 	cx2341x-uapi
+	imx-uapi
 	meye-uapi
 	omap3isp-uapi
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
