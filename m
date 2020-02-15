Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A3D16004C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 20:45:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q/Mxf+aZmVZ0VQF4pLZQYOvn/jrVprJWts6Hl9vUuuU=; b=LY9jOVxOpiZE0QB5Sd86pNztYX
	w4m9/Lm0B5Bx8DrcXxDfBeA1OA1MeF0d+wjMFyYJkNjZQV+4uqBOmn369yfGPJrT5ahlrURqFHZ4Q
	S9BQB7lwxcIryPOfNx8CrgS/4ERe53PcCxUo+Q3NoHnnA/7CjivBo4ked81i0fuut6xUSHYBP5HJN
	6PMRYq+lwYAb4Z40ZAq9Re4Cge4j66fu1T7SeUhkPyDro4KaNBLOWSHWiLLcOMmiOw52SxuDT1SVM
	mDxBXFaLxiO2XoUvE4I6L67kvZciloYZHyEN55++dC3Ii04r2RuwXJ5tOlRq9/noJ9NGbQon4Pmz2
	0D0i/JvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j33Mx-0001wh-9f; Sat, 15 Feb 2020 19:44:51 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j33Kt-0000CW-SA
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 19:42:47 +0000
Received: by mail-pl1-x644.google.com with SMTP id t6so5138283plj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Feb 2020 11:42:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=J4a12SBTuMD7atLLATUCugE0dEUcvKzeYrZ9OjbRkuY=;
 b=o75oGSh6E0XVjA4LESDf8tAB+lWr3cpyJkllsXdLva6u+vxUPhSlBWaLo/x/P+coQ0
 ziHUMQE9mSHFbUqXNpueAU7rYdwQZcsotuBJ1vGWh5WG0+OKUyH3HHZE2XTSyHuRVfor
 xH1n+a+FB59ZD/4z0PMtQcKXSESzOsanihg72Dk1h72kmQxvTH3GLSkigEdt12b9D68v
 TgChzQjAdc/kh8S+v80oM171rQprxqHMoo2vza9Wc44hPW9e3dX/7tSSdmIGl0QT5Q2x
 FNBoVb77Gp/0iXKR2q2f9O9HcqDOa6eK0Uetm+qJN8pFihgZuow4TQ4O1fmPAf7wdOH/
 6MdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=J4a12SBTuMD7atLLATUCugE0dEUcvKzeYrZ9OjbRkuY=;
 b=ujhhilgj54wPQ+UzOZZIJ/x9qB9jZ2WVqxhqq1gL5DL/VLm4YjtOJOzvSr0AsNeyfJ
 6cQl323eC5W/1kU4ThaCIWyFAt+KVlXDBpO2Y0xtEYsWhOFfiS7FDSGzbgxym7pE8qBA
 RPRlF1GKGiP1LbNSnYSaVV1nPgSx7W2yLz+be9AqVmId54gh5gSWTiHE0m9u8me9igJx
 X4LGLfr0bSqU6A0FVoiACFG2TzXxySPKOG3L1SUU5Es6/WiekplcMt7PDd+9PQzZDHtD
 fx1YR9CVMXKA6poQBpsbmgNbZbytf7k7KQgxFO3dul8gXDJk/v3J9YBOsCuUvjkk94nR
 wzBw==
X-Gm-Message-State: APjAAAXV/sRK7Pg8HZR/5L67sX5nMG8iPtK2/yvriEqZNGA7qb+PhF2O
 VgBbqkg2Pciw8I/v2iU8Az4=
X-Google-Smtp-Source: APXvYqwBQtTLbOCGEG6HDKeQQZqiXvk/KUtfD8Y/2evFbOxbwzS7XJFE9cf5Z4O10CVmJ4jiy5D9aw==
X-Received: by 2002:a17:90a:9dc3:: with SMTP id
 x3mr10971588pjv.45.1581795762862; 
 Sat, 15 Feb 2020 11:42:42 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id q4sm11802751pfl.175.2020.02.15.11.42.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Feb 2020 11:42:42 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [RESEND PATCH v3 13/17] media: imx: csi: Create media links in bound
 notifier
Date: Sat, 15 Feb 2020 11:41:32 -0800
Message-Id: <20200215194136.10131-14-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200215194136.10131-1-slongerbeam@gmail.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_114244_004785_AC43599C 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [slongerbeam[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement a notifier bound op to register media links from the remote
sub-device's source pad(s) to the CSI sink pad.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
Changes in v3:
- call a local imx-media utility imx_media_create_fwnode_pad_link().
---
 drivers/staging/media/imx/imx-media-csi.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index bea6a70cc353..2a8f01375f78 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -120,6 +120,11 @@ static inline struct csi_priv *sd_to_dev(struct v4l2_subdev *sdev)
 	return container_of(sdev, struct csi_priv, sd);
 }
 
+static inline struct csi_priv *notifier_to_dev(struct v4l2_async_notifier *n)
+{
+	return container_of(n, struct csi_priv, notifier);
+}
+
 static inline bool is_parallel_bus(struct v4l2_fwnode_endpoint *ep)
 {
 	return ep->bus_type != V4L2_MBUS_CSI2_DPHY;
@@ -1896,6 +1901,20 @@ static int imx_csi_parse_endpoint(struct device *dev,
 	return fwnode_device_is_available(asd->match.fwnode) ? 0 : -ENOTCONN;
 }
 
+static int imx_csi_notify_bound(struct v4l2_async_notifier *notifier,
+				struct v4l2_subdev *sd,
+				struct v4l2_async_subdev *asd)
+{
+	struct csi_priv *priv = notifier_to_dev(notifier);
+	struct media_pad *sink = &priv->sd.entity.pads[CSI_SINK_PAD];
+
+	return imx_media_create_fwnode_pad_link(sd, sink);
+}
+
+static const struct v4l2_async_notifier_operations csi_notify_ops = {
+	.bound = imx_csi_notify_bound,
+};
+
 static int imx_csi_async_register(struct csi_priv *priv)
 {
 	struct fwnode_handle *fwnode;
@@ -1904,6 +1923,8 @@ static int imx_csi_async_register(struct csi_priv *priv)
 
 	v4l2_async_notifier_init(&priv->notifier);
 
+	priv->notifier.ops = &csi_notify_ops;
+
 	fwnode = dev_fwnode(priv->dev);
 
 	/* get this CSI's port id */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
