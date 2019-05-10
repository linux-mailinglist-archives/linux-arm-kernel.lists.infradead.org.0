Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AFC1A4E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 23:51:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qOUYamvww7rO4PvPyjJlBFEDqKcXr2DMoLGrrvdoEn0=; b=mSViNfGRK8HJcXcJr+VjOD7B2a
	VBRsoWck2HE39KTo91vj5GTcrN7bVZcdy3kwbb3IG36r7IP/RC9VeGfa6+1IDASdR0+NzDnX2O3Ez
	QKsGCeKThLG+MI9raKbAV2bPByCaCXNpZjYb2lkNmKnoMxAZXf6OA/N6V9M8UVqCtXdxBaebEzFdp
	ZlQdRwHcGF2hgwEmuZJ/hR4c5tmzaUukgW67BYE5nxX/vI70auAj9V8oLHQKhktw8q2DhcdWX1WDV
	wp1nchfT/kkEEynmgAAT2xuRAG0Y9LnVVTwtt5iFlPbuPqcMGiRgU2ieiR91Xy4YKg/KIBLJfsfeG
	MNwGkNoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPDQZ-0008CX-FS; Fri, 10 May 2019 21:51:39 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPDPd-0007Cx-7X
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 21:50:46 +0000
Received: by mail-pl1-x642.google.com with SMTP id f12so1386880plt.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 14:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HM8iB4CzObwG2SEPGqDToLb7gQBrHKKFyiCMsrsHU3Y=;
 b=NgXXGSE9dUt5C/NqrKnCc2UqY9QJJYvFLuj2267CRjQO49pJWLXHbQS1IqB+yFALMG
 k9sTKqAHSFlRQpxcGNnmQGvb9FwJHfOeuijjzpnMUSsmiXq1owLbVbTi2QD337nU2gWV
 qqXtEtb9dzEWiHffUE5BcKhbYT8FnpmbPWpsWLAegbsdaBX/NKst26rNV32GqVa+u9NB
 ITszyXft/DO4qYjn0pkuO5q8pfhD147urgycJgQuYX1zv6etn66n66cZa/M9JWnjJONl
 c3++HHYtN84InhNRX7vFq4prmWlbkg05rrC6gl9eOOUsoLu9BFHVVMzYFZ1VV5DX4DQ5
 aMbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HM8iB4CzObwG2SEPGqDToLb7gQBrHKKFyiCMsrsHU3Y=;
 b=R+sFVM91bRxqhsBmBkQMMX80pQhaqnA4nA+bJ+vASyDeuV+yulLzVlLjUKa0DzsERj
 vqjNJZNMEg9MXkRhXhxdo+YLY6BgNaXxALBIcNLcjP1JqM5XDISiahHg5ab5D6VBIchU
 hzAqxMlkl9HxQ9BB+G6PrEsjH7Vc6CUDZfeLjvSE3Ljac5aXqB7iEoHBN52cLpjx3FmH
 kd0u3DapfhtBaGxNCv5qID6/zQRyj+U8w4S6qKkfHNCn0szvM7+WBEbVuOdfgS0z7hAg
 RNuDdMiDD9H0ae90tsPNipENV5WtXcPMk62suvvjvQwKLqzMX4Gm4bkmgx22c9WVtS4a
 a52g==
X-Gm-Message-State: APjAAAVXANgan3KCalT4UUL7VONFnQnFm9yNYtVmfjY+H7zX1LlCHVrf
 WoojzQU67Zn/jurJHtprDAA=
X-Google-Smtp-Source: APXvYqzeA56o0lX0C5kucO+TP19p5SLh1xvQ90ckb1eSEgmgse3i7wnFyVr4AFouuna3FP2qlWPwxQ==
X-Received: by 2002:a17:902:7406:: with SMTP id
 g6mr15440315pll.328.1557525040632; 
 Fri, 10 May 2019 14:50:40 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id e14sm1524108pff.60.2019.05.10.14.50.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 14:50:39 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v5 9/9] media: staging/imx: Don't set driver data for v4l2_dev
Date: Fri, 10 May 2019 14:50:12 -0700
Message-Id: <20190510215012.13881-10-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190510215012.13881-1-slongerbeam@gmail.com>
References: <20190510215012.13881-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_145041_709557_149FDD2E 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
