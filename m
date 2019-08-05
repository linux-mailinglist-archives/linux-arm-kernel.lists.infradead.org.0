Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E2D82830
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 01:37:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ja2X5WxIBhb/878sqP4aETyI28L2jxdjpaB8jmIMvUM=; b=o26yNNcqcIHo0cqRBtLnIw3ecd
	he3CWIZr3W1P3J8gQJBqX2+5chiJwfmEndjEpslPsGbHTNgnrOaXznfleRskafqNMzBX44h9UHWLo
	mT3K7KWONbhTbul5A4/HI7o6MioKDrz6lIqBuDUKOeyfzkfsIYgMxT9OMhIhEzqjdKQYxdZz4qxMD
	mmW/R9IwrwgCagK69ixK5Zt3gke/1b9rZTMvHzUpWTLUZ1gXyDFILwkYTQSkbGQL86pycW3FZPDN/
	KbY1AH32VKXlnoraBgI6KiJOIKW9Qvfa/NMMt27SXLcZrokfCSbPSAPqgKCbz1gF/yVORhXPb3o5S
	UNDOhfIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1humXM-0006ZI-8t; Mon, 05 Aug 2019 23:37:08 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1humVr-0004yP-Te
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 23:35:37 +0000
Received: by mail-pl1-x641.google.com with SMTP id c14so36974809plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 16:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bCNueNWeJXTLrTZ3Gue5cMu55WsUG1STmKF9FRV9s+k=;
 b=rIpRcB1BhG0BVBiNb6PGBxOSF1DpSDhe84KSk3pvLNQv3cUbn/23W6D3K/Zmjox+vX
 foyZFaKt89ShO7Iz6ACajUVuOCsCH0aKrxZ3R7i2U27rwESg+mXZuj+B1n/eUYZ9cXM9
 0kf1MgdxKLGEZb8fNcGz/zndSK5NAH4hNFqoCzv4ZO5ijR7C5LbnW6dfz0+AsXsdOj9A
 D6f83KMbyH6LX6ey0ZnClcPUmBVhLZsk2C2VpPfz6p3mH+PZvDUPMXF22lbiFL2hLmuE
 xOACOyVKgVhiqvrzjqdpSalDnRxmDUDB+0SzcsgrxwOMjR6i0wUxoT++O9I0zM6nIWMx
 0YJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bCNueNWeJXTLrTZ3Gue5cMu55WsUG1STmKF9FRV9s+k=;
 b=YXhd9aAFbb1D4yIn0O0R2gsrsNhNxulhYtBOHuUgVEkdx1Qkj4ND13KDXEoJz0LfVX
 P+wa+l1vEEci1s8lWkf7FYcjAqJZuGviTJvW5CZ/Z6x4kBX4qw6T5XkAGFUXBWdfVbv7
 L/wwry0zaHCbHm+QrK38gNgysZcZqfPcU1qTcfRHRM8r9XXXVRNfyJkS8uydYIVGOk+l
 2coyxOqq+zZ4wcyfnXZLQoWJqpSx74o3GKCaFutHvVirl5CjiQLhAY+2cQndhokfYffc
 xVHcDollGJPzRxR+LGN5R8ipBOugI++L8n6Zd8sQF9rEA1lXfXN164KAYcJzXtGCw6lC
 IUOA==
X-Gm-Message-State: APjAAAWkPf6M9ntPoTZeBW82IiQE1h+V9PumbXDvKdVfytaiGI4zkF8q
 sUeJnVHvHiFSxIY8HN4kVBg=
X-Google-Smtp-Source: APXvYqxpbMjWVmnzuUM113Irj8RV4B5McZoB/4/bm7rnZLncgrGREH4kOM/mJnNymVLlq9X+TkbBzA==
X-Received: by 2002:a17:902:820c:: with SMTP id
 x12mr272388pln.216.1565048134995; 
 Mon, 05 Aug 2019 16:35:34 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:34 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 17/22] media: imx: csi: Embed notifier in struct csi_priv
Date: Mon,  5 Aug 2019 16:35:00 -0700
Message-Id: <20190805233505.21167-18-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805233505.21167-1-slongerbeam@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_163535_989813_D25E9221 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Embed the notifier in 'struct csi_priv', instead of dynamically allocating
it, to make it possible to retrieve csi_priv in a notifier callback op.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-csi.c | 25 +++++++++--------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index e193f66fa230..b39d79e63ac2 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -58,6 +58,8 @@ struct csi_priv {
 	struct ipu_soc *ipu;
 	struct v4l2_subdev sd;
 	struct media_pad pad[CSI_NUM_PADS];
+	struct v4l2_async_notifier notifier;
+
 	/* the video device at IDMAC output pad */
 	struct imx_media_video_dev *vdev;
 	struct imx_media_fim *fim;
@@ -1895,31 +1897,28 @@ static int imx_csi_parse_endpoint(struct device *dev,
 
 static int imx_csi_async_register(struct csi_priv *priv)
 {
-	struct v4l2_async_notifier *notifier;
 	struct fwnode_handle *fwnode;
 	unsigned int port;
 	int ret;
 
-	notifier = kzalloc(sizeof(*notifier), GFP_KERNEL);
-	if (!notifier)
-		return -ENOMEM;
-
-	v4l2_async_notifier_init(notifier);
+	v4l2_async_notifier_init(&priv->notifier);
 
 	fwnode = dev_fwnode(priv->dev);
 
 	/* get this CSI's port id */
 	ret = fwnode_property_read_u32(fwnode, "reg", &port);
 	if (ret < 0)
-		goto out_free;
+		return ret;
 
 	ret = v4l2_async_notifier_parse_fwnode_endpoints_by_port(
-		priv->dev->parent, notifier, sizeof(struct v4l2_async_subdev),
+		priv->dev->parent, &priv->notifier,
+		sizeof(struct v4l2_async_subdev),
 		port, imx_csi_parse_endpoint);
 	if (ret < 0)
 		goto out_cleanup;
 
-	ret = v4l2_async_subdev_notifier_register(&priv->sd, notifier);
+	ret = v4l2_async_subdev_notifier_register(&priv->sd,
+						  &priv->notifier);
 	if (ret < 0)
 		goto out_cleanup;
 
@@ -1927,16 +1926,12 @@ static int imx_csi_async_register(struct csi_priv *priv)
 	if (ret < 0)
 		goto out_unregister;
 
-	priv->sd.subdev_notifier = notifier;
-
 	return 0;
 
 out_unregister:
-	v4l2_async_notifier_unregister(notifier);
+	v4l2_async_notifier_unregister(&priv->notifier);
 out_cleanup:
-	v4l2_async_notifier_cleanup(notifier);
-out_free:
-	kfree(notifier);
+	v4l2_async_notifier_cleanup(&priv->notifier);
 
 	return ret;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
