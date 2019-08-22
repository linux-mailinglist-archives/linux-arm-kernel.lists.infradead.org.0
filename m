Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AE19A056
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 21:45:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7KlPjFzacfDJago3QC6r9Wdr6j9dr1TPLffFhOgTrk=; b=WS9uv9g36HU946
	IA5Z0IrXjz98P1IJfKbcmt/m9VXPzk5ZLo8kJ5PXJMurMVZwJj+4T+L74qsWt40+6RNnqfnFlDS1Q
	IQxPpoIAjZ/osT+iYoV0NF9+x7r9hWRSMedwJRyBIXbEdMB+gyFAx2HxkXh7IIviACXVpzJOt6AWT
	hUxyb4xwEAQoHnWHVLrXYhBHeoT49QyuGFMKTIVFcQ1oF52Nv/My5vtRhuD4bxiCohJZl7Y5qufDC
	IniHYcBwTREbA3U3sDZbU3UPnhXs+T249Mq//qQIdfWTboCQv0Sofg5vCiJiQ7ft09TcFzMNlUX3T
	yJy4yJStG0fpBA7jHNMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0t1Z-0007nC-6Z; Thu, 22 Aug 2019 19:45:33 +0000
Received: from mailoutvs50.siol.net ([185.57.226.241] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0t1M-0007kT-7f
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 19:45:22 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id AD1685249F0;
 Thu, 22 Aug 2019 21:45:14 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id FoNyg35v9do7; Thu, 22 Aug 2019 21:45:14 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 39C155249EB;
 Thu, 22 Aug 2019 21:45:14 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id B87B25249F0;
 Thu, 22 Aug 2019 21:45:11 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 paul.kocialkowski@bootlin.com, mripard@kernel.org
Subject: [PATCH 2/8] videodev2.h: add V4L2_DEC_CMD_FLUSH
Date: Thu, 22 Aug 2019 21:44:54 +0200
Message-Id: <20190822194500.2071-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190822194500.2071-1-jernej.skrabec@siol.net>
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_124520_438078_7938DE59 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.241 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, jernej.skrabec@siol.net, pawel@osciak.com,
 acourbot@chromium.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 wens@csie.org, tfiga@chromium.org, kyungmin.park@samsung.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 ezequiel@collabora.com, linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hans Verkuil <hverkuil-cisco@xs4all.nl>

Add this new V4L2_DEC_CMD_FLUSH decoder command and document it.

Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst | 11 ++++++++++-
 Documentation/media/videodev2.h.rst.exceptions      |  1 +
 include/uapi/linux/videodev2.h                      |  1 +
 3 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst b/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst
index 57f0066f4cff..0bffef6058f7 100644
--- a/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst
+++ b/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst
@@ -208,7 +208,16 @@ introduced in Linux 3.3. They are, however, mandatory for stateful mem2mem decod
 	been started yet, the driver will return an ``EPERM`` error code. When
 	the decoder is already running, this command does nothing. No
 	flags are defined for this command.
-
+    * - ``V4L2_DEC_CMD_FLUSH``
+      - 4
+      - Flush any held capture buffers. Only valid for stateless decoders,
+        and only if ``V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF`` was set.
+	This command is typically used when the application reached the
+	end of the stream and the last output buffer had the
+	``V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF`` flag set. This would prevent
+	dequeueing the last capture buffer containing the last decoded frame.
+	So this command can be used to explicitly flush that last decoded
+	frame.
 
 Return Value
 ============
diff --git a/Documentation/media/videodev2.h.rst.exceptions b/Documentation/media/videodev2.h.rst.exceptions
index adeb6b7a15cb..a79028e4d929 100644
--- a/Documentation/media/videodev2.h.rst.exceptions
+++ b/Documentation/media/videodev2.h.rst.exceptions
@@ -434,6 +434,7 @@ replace define V4L2_DEC_CMD_START decoder-cmds
 replace define V4L2_DEC_CMD_STOP decoder-cmds
 replace define V4L2_DEC_CMD_PAUSE decoder-cmds
 replace define V4L2_DEC_CMD_RESUME decoder-cmds
+replace define V4L2_DEC_CMD_FLUSH decoder-cmds
 
 replace define V4L2_DEC_CMD_START_MUTE_AUDIO decoder-cmds
 replace define V4L2_DEC_CMD_PAUSE_TO_BLACK decoder-cmds
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index 4fa9f543742d..91a79e16089c 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -1978,6 +1978,7 @@ struct v4l2_encoder_cmd {
 #define V4L2_DEC_CMD_STOP        (1)
 #define V4L2_DEC_CMD_PAUSE       (2)
 #define V4L2_DEC_CMD_RESUME      (3)
+#define V4L2_DEC_CMD_FLUSH       (4)
 
 /* Flags for V4L2_DEC_CMD_START */
 #define V4L2_DEC_CMD_START_MUTE_AUDIO	(1 << 0)
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
