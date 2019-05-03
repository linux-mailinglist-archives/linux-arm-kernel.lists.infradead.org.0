Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A75135D3
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 00:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qOUYamvww7rO4PvPyjJlBFEDqKcXr2DMoLGrrvdoEn0=; b=Jg48isWvZC3hAJ6ahTEjfawA7j
	Bh/e6lPDT7U4hhSSHnHcLk5QUqC+Wpb+tAH4z6STq2QWw+V2zOiOpFqVQoBuc7baEQpC5oRxK31vN
	sw2b2fDjgZCDtatHSIQPHMyK1dYcMQ/ZyL9cHk0wMaBNOT6YPKRLxjzAfHO8g0zgFuPNKsepdbJYg
	QO7DnseBokOoXOncomDQ6kUTrYAxwowT2ER+IsAMfyQUwTbT+nOMGh1APzNhud2gUpHHv5TdoBjNe
	z+UsgrFckp/L/47pJw/R4pa1EElyMjBDCesROS2kBb6xA4R5fAwnaKl7BWGHa+gQvCzt0FtdtCMnT
	4Urmx+YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMgvE-0000Yo-PK; Fri, 03 May 2019 22:44:52 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMguE-0007pm-0s
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 22:43:56 +0000
Received: by mail-pl1-x643.google.com with SMTP id w20so3363430plq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 15:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HM8iB4CzObwG2SEPGqDToLb7gQBrHKKFyiCMsrsHU3Y=;
 b=mm7sdVx6f2OEyOlk42Jw8HFX6fxKqEPe3irB1UsEQqPzp89d3+kSzdDq0fWSWwBHyf
 duXJdPyZEtNdgrPv+ip2oSYATqkxMXonj3AAcXPMQhLlqrhtdYoniWGsdxc7MhZfxMut
 gNmpGrwtDJaqEYrc3MB7yjckdLdkHSDdabxra8tlNP5hbeL8Hx7BxBuVZCVibXlKdQdE
 HA/Y6kVC9sh4/Miq+EYQvT/ltxs5hMm58GwVVL361XmOaquZtiz3Ens5Zy8VieGaK/z8
 mnK5WcVN0tjmj+0AKTLtGlh7nDy1VluqQVWgy/zjFncgIhbTjrbRJSFazUebMPUkfvSq
 9WVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HM8iB4CzObwG2SEPGqDToLb7gQBrHKKFyiCMsrsHU3Y=;
 b=Eho1d2v2Nf11OM2PkGrdM9h2OR6YsSo1tHbSMIbkd1s0SFE3+R2nhAG5snYRgqJ/6d
 J+9vBtXrNL48qVsZxno/oOJOpk7//NFqnFIU6iUzZv+Pasu7qhdTzPTKRkCVoX4Zfr5K
 uOSLyU89VcbFClGPMDl38nfkUqb6tI8ZimwyzzrEdnN5+w+rlbjmbQFWgZw1n4Hn+WJe
 HZwnZ9MDvwQoumg+AmOLkILCYCS517qh9k4uU7Nq0d2pXO0FivbgWLrr9gA263VilNdx
 0PGQ+X52+sIrDJy1IJ1616kqpMWsZQQxbj9suL1MNx4/kIkEW3jHOY8UqPnrBt6wecY+
 DLdg==
X-Gm-Message-State: APjAAAW0UMGU97bqr6fLdRWAbYaevh2zrjobpsA98L3t8zdvfWG+OH5K
 +UmDyBUM251Sp/qoi0CspBU=
X-Google-Smtp-Source: APXvYqwLjaVOhyMKWnhVjw4/hXIu+HbUJy3eNp9/wbSTaU7dfZGxnJdwBqHfrpl5viIUsQ79HxXQlw==
X-Received: by 2002:a17:902:1e2:: with SMTP id
 b89mr13646101plb.278.1556923428992; 
 Fri, 03 May 2019 15:43:48 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id e62sm4793871pfa.50.2019.05.03.15.43.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 15:43:48 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 8/8] media: staging/imx: Don't set driver data for v4l2_dev
Date: Fri,  3 May 2019 15:43:26 -0700
Message-Id: <20190503224326.21039-9-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190503224326.21039-1-slongerbeam@gmail.com>
References: <20190503224326.21039-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_154350_906440_7FB105F4 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The media device is already available via multiple methods, there is no
need to set driver data for v4l2_dev to the media device.

In imx_media_link_notify(), get media device from link->graph_obj.mdev.

In imx_media_capture_device_register(), get media device from
v4l2_dev->mdev.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-capture.c    | 5 +++--
 drivers/staging/media/imx/imx-media-dev-common.c | 7 ++-----
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
index 8a908c3e5e60..ea7f2decfc16 100644
--- a/drivers/staging/media/imx/imx-media-capture.c
+++ b/drivers/staging/media/imx/imx-media-capture.c
@@ -735,15 +735,16 @@ int imx_media_capture_device_register(struct imx_media_video_dev *vdev)
 {
 	struct capture_priv *priv = to_capture_priv(vdev);
 	struct v4l2_subdev *sd = priv->src_sd;
+	struct v4l2_device *v4l2_dev = sd->v4l2_dev;
 	struct video_device *vfd = vdev->vfd;
 	struct vb2_queue *vq = &priv->q;
 	struct v4l2_subdev_format fmt_src;
 	int ret;
 
 	/* get media device */
-	priv->md = dev_get_drvdata(sd->v4l2_dev->dev);
+	priv->md = container_of(v4l2_dev->mdev, struct imx_media_dev, md);
 
-	vfd->v4l2_dev = sd->v4l2_dev;
+	vfd->v4l2_dev = v4l2_dev;
 
 	ret = video_register_device(vfd, VFL_TYPE_GRABBER, -1);
 	if (ret) {
diff --git a/drivers/staging/media/imx/imx-media-dev-common.c b/drivers/staging/media/imx/imx-media-dev-common.c
index 89dc4ec8dadb..66b505f7e8df 100644
--- a/drivers/staging/media/imx/imx-media-dev-common.c
+++ b/drivers/staging/media/imx/imx-media-dev-common.c
@@ -260,10 +260,11 @@ static int imx_media_inherit_controls(struct imx_media_dev *imxmd,
 static int imx_media_link_notify(struct media_link *link, u32 flags,
 				 unsigned int notification)
 {
+	struct imx_media_dev *imxmd = container_of(link->graph_obj.mdev,
+						   struct imx_media_dev, md);
 	struct media_entity *source = link->source->entity;
 	struct imx_media_pad_vdev *pad_vdev;
 	struct list_head *pad_vdev_list;
-	struct imx_media_dev *imxmd;
 	struct video_device *vfd;
 	struct v4l2_subdev *sd;
 	int pad_idx, ret;
@@ -279,8 +280,6 @@ static int imx_media_link_notify(struct media_link *link, u32 flags,
 	sd = media_entity_to_v4l2_subdev(source);
 	pad_idx = link->source->index;
 
-	imxmd = dev_get_drvdata(sd->v4l2_dev->dev);
-
 	pad_vdev_list = to_pad_vdev_list(sd, pad_idx);
 	if (!pad_vdev_list) {
 		/* nothing to do if source sd has no pad vdev list */
@@ -384,8 +383,6 @@ struct imx_media_dev *imx_media_dev_init(struct device *dev,
 		goto cleanup;
 	}
 
-	dev_set_drvdata(imxmd->v4l2_dev.dev, imxmd);
-
 	INIT_LIST_HEAD(&imxmd->vdev_list);
 
 	v4l2_async_notifier_init(&imxmd->notifier);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
