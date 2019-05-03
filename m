Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E97AA135BB
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 00:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pBo0gJfw6UA+XgDvaT2v0H1KD4fr2YXpbO4IooXQmS8=; b=c3PzlvY+1YfZpT05yJfqx1JwE3
	PctOwMT3PqlZgfBqcesLJYx9TYLVN7Ipq9EeWbPbuv9OfhGuWnXb/8MH2p5q49ZogcbE0Q5fIEv3f
	/B9J6rXsuc1VfCDIgpDyy29NotQKA2cdvi0QjxFlOkDqw0pHnH+YxROy9xv+DlfmencfjqrfyHET4
	6Oeqf4/42iPc9M8Upre/aGPlB7v09i065OVlSunjrFHHwkQlo3m88ibsdL1VAiS5FFLbNNHFgfcPW
	V21sO+Uo9VR+RqVFBivhwUdhd62duqkeQTGpprDNwxzj6oxN041TK4yg8iZQZUY4yqpx7oOj8VHOT
	+3nA16Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMguD-0007ia-0D; Fri, 03 May 2019 22:43:49 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMgu5-0007hG-3B
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 22:43:42 +0000
Received: by mail-pg1-x543.google.com with SMTP id d31so3379242pgl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 15:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AAMozjG2W0PZy93LSAs4zDJPg/GRcksOW95uh6hbVyE=;
 b=Fi62tX9rpW2xxFI1jMVKih2RQts9yBWQUOylw0PTNXe/mEMl8G7AnrYDL1SQsr6xG4
 jZD4BcVHT7MrBhqt7E4hKaaBgBpWdoBwQArEDEn8DxSpsYdGrKMlmHQwJYDWekei6Smf
 /WZlwkTE3TYpiu1plG01Uw7q4Bt6m8zyiEsI0XAhgmsI8eX7KLbsDR+L2nbeN1dlXNzu
 Aho9Zc6u6S90unQrDG3uQk17HwmLJyoHl2l6CBrF6QqaAhWzIC17xzD+RJwmplSnlyDD
 OqlglcNXk8v7UToAiAIVU2ESeGy82bkEEYuT1IslCvyKIkplNMz1QcL1TDuJMeXF3xnO
 /9oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AAMozjG2W0PZy93LSAs4zDJPg/GRcksOW95uh6hbVyE=;
 b=s67XLok9pRzCRj0VbNVhnWoWdINm9D3DjotERDXPRvLv6NICvpVnyxbvxisp+P+bEw
 k3SiHpQjjRTBwAK2lOlRy+ctNH8Bab2OKrnc/qpWqoxQ1dCIIWxakyIbRWKJ/u3iumqK
 P9QinJSnh+TRK5Opjs4jP/QS8zyqlt/sY5k+gccGIaBvZuKBOBCZwj08m9YnVHNx3Hdt
 sh6IPzKP4StWS07tAXTifdjrtinhBGUFS/cQrI0flc3Z/iV37n2DCP7HZb8Jyudi1Lv4
 d7H7RSFGNeX0OWCA07I3+wQyETq7CEw4vsC3mE4AK3R7NJM0PKukh4srFZZAHjlopIKl
 XFhg==
X-Gm-Message-State: APjAAAXvf0sOzaJJYRLnnnec6kqgLCOlRzeRnw6VI5HGSQVeu37oNRV6
 KIXENtWe5XPGq3XQ5GplqxY=
X-Google-Smtp-Source: APXvYqy1PuRNJ537V9mU26GDwfGtXQ3NljGsEJemvizZOrry6CET3KRnr4m+Ke+ukNxPknQRzH0EWg==
X-Received: by 2002:a62:69c2:: with SMTP id
 e185mr14574382pfc.119.1556923419883; 
 Fri, 03 May 2019 15:43:39 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id e62sm4793871pfa.50.2019.05.03.15.43.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 15:43:39 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 3/8] media: staging/imx: Move add_video_device into
 capture_device_register
Date: Fri,  3 May 2019 15:43:21 -0700
Message-Id: <20190503224326.21039-4-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190503224326.21039-1-slongerbeam@gmail.com>
References: <20190503224326.21039-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_154341_137715_E0669F4A 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
 open list <linux-kernel@vger.kernel.org>, Rui Miguel Silva <rmfrfs@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move imx_media_add_video_device() into imx_media_capture_device_register().
Also the former has no error conditions to convert to void.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-ic-prpencvf.c   |  5 -----
 drivers/staging/media/imx/imx-media-capture.c |  3 +++
 drivers/staging/media/imx/imx-media-csi.c     |  7 +------
 drivers/staging/media/imx/imx-media-utils.c   |  9 ++++-----
 drivers/staging/media/imx/imx-media.h         |  4 ++--
 drivers/staging/media/imx/imx7-media-csi.c    | 12 +-----------
 6 files changed, 11 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
index ddcd87a17c71..8242d88dfb82 100644
--- a/drivers/staging/media/imx/imx-ic-prpencvf.c
+++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
@@ -1241,7 +1241,6 @@ static int prp_s_frame_interval(struct v4l2_subdev *sd,
 static int prp_registered(struct v4l2_subdev *sd)
 {
 	struct prp_priv *priv = sd_to_priv(sd);
-	struct imx_ic_priv *ic_priv = priv->ic_priv;
 	int i, ret;
 	u32 code;
 
@@ -1271,10 +1270,6 @@ static int prp_registered(struct v4l2_subdev *sd)
 	if (ret)
 		return ret;
 
-	ret = imx_media_add_video_device(ic_priv->md, priv->vdev);
-	if (ret)
-		goto unreg;
-
 	ret = prp_init_controls(priv);
 	if (ret)
 		goto unreg;
diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
index 211ec4df2066..335084a6b0cd 100644
--- a/drivers/staging/media/imx/imx-media-capture.c
+++ b/drivers/staging/media/imx/imx-media-capture.c
@@ -780,6 +780,9 @@ int imx_media_capture_device_register(struct imx_media_video_dev *vdev)
 
 	vfd->ctrl_handler = &priv->ctrl_hdlr;
 
+	/* add vdev to the video device list */
+	imx_media_add_video_device(priv->md, vdev);
+
 	return 0;
 unreg:
 	video_unregister_device(vfd);
diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index ea3d13103c91..c70fa6b509ae 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1820,13 +1820,8 @@ static int csi_registered(struct v4l2_subdev *sd)
 	if (ret)
 		goto free_fim;
 
-	ret = imx_media_add_video_device(priv->md, priv->vdev);
-	if (ret)
-		goto unreg;
-
 	return 0;
-unreg:
-	imx_media_capture_device_unregister(priv->vdev);
+
 free_fim:
 	if (priv->fim)
 		imx_media_fim_free(priv->fim);
diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
index c52aa59acd05..8a6e57652402 100644
--- a/drivers/staging/media/imx/imx-media-utils.c
+++ b/drivers/staging/media/imx/imx-media-utils.c
@@ -767,18 +767,17 @@ imx_media_find_subdev_by_devname(struct imx_media_dev *imxmd,
 EXPORT_SYMBOL_GPL(imx_media_find_subdev_by_devname);
 
 /*
- * Adds a video device to the master video device list. This is called by
- * an async subdev that owns a video device when it is registered.
+ * Adds a video device to the master video device list. This is called
+ * when a video device is registered.
  */
-int imx_media_add_video_device(struct imx_media_dev *imxmd,
-			       struct imx_media_video_dev *vdev)
+void imx_media_add_video_device(struct imx_media_dev *imxmd,
+				struct imx_media_video_dev *vdev)
 {
 	mutex_lock(&imxmd->mutex);
 
 	list_add_tail(&vdev->list, &imxmd->vdev_list);
 
 	mutex_unlock(&imxmd->mutex);
-	return 0;
 }
 EXPORT_SYMBOL_GPL(imx_media_add_video_device);
 
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index ba2d75bcc4c9..71e20f53ed7b 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -189,8 +189,8 @@ imx_media_find_subdev_by_fwnode(struct imx_media_dev *imxmd,
 struct v4l2_subdev *
 imx_media_find_subdev_by_devname(struct imx_media_dev *imxmd,
 				 const char *devname);
-int imx_media_add_video_device(struct imx_media_dev *imxmd,
-			       struct imx_media_video_dev *vdev);
+void imx_media_add_video_device(struct imx_media_dev *imxmd,
+				struct imx_media_video_dev *vdev);
 int imx_media_find_mipi_csi2_channel(struct imx_media_dev *imxmd,
 				     struct media_entity *start_entity);
 struct media_pad *
diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index 96d01d8af874..f2037aba6e0e 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -1126,17 +1126,7 @@ static int imx7_csi_registered(struct v4l2_subdev *sd)
 	if (ret < 0)
 		return ret;
 
-	ret = imx_media_capture_device_register(csi->vdev);
-	if (ret < 0)
-		return ret;
-
-	ret = imx_media_add_video_device(csi->imxmd, csi->vdev);
-	if (ret < 0) {
-		imx_media_capture_device_unregister(csi->vdev);
-		return ret;
-	}
-
-	return 0;
+	return imx_media_capture_device_register(csi->vdev);
 }
 
 static void imx7_csi_unregistered(struct v4l2_subdev *sd)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
