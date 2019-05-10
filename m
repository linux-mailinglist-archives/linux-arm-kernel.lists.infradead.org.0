Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E24F51A4CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 23:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZtPh4JWjzhMrZuH4B0cfBW4oNPj9+tfYTBt8AV5OYIw=; b=H4JnkC/Y49JrD+1nQFkDqb7YhN
	QbnuisEvr9/ljBm85s0L7RJ/ILDDAJsmiv+909UxdQ3VoI3FwhrORwsbagV/I4AMBJlawC0+IbYxT
	kcfroZ1NRoNN8gbhw87i4VIF6zWRdiW1E9/rOoWbJAjvUJFDTZdqjYtugnwjzbh+Od8r3kwPbBwVX
	G3hcQa602y5oZOmhnxDptGRTi3xSi8SiL9erKC21aBf6ymLqPnkT50jiQc3FMhGUSBwxwjvz9JrrV
	Ui/MBFpctSn9cc0/YnVJP9+us3WWKn5yV5Gxxw5lkfKZ5QhKHt6a9nxdS5KnDdyXRx042Qy22/pv/
	vEb6B7Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPDPW-0006rH-HH; Fri, 10 May 2019 21:50:34 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPDPO-0006qc-6c
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 21:50:27 +0000
Received: by mail-pf1-x444.google.com with SMTP id g3so3893867pfi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 14:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ILFENIjP3pNWcBKSRP9eS47C60iumECdMiBouSjU6so=;
 b=I8EBxrb4hQF/HSjVAZ0eX7cqdImmzwpA3qZcWlY5J2qRLntWR6PFM5K78S3hQJZfJS
 kxG157XHFOBnJa/z2didiEjDqhpbMxmPCHOuUo7T2HCmcNED9Z9IKsopKIrbLIHxXNJz
 ILpQQs1NFcRsLNrJy1iTllpA2zyb2LQ/B8bTQaqK5C2GwbaxTk52zsz2A65Ms7ORJnVS
 tf+2X8dszuwdO/2iTA+QIxc441zuMjN9umjxNCZZeSoDzQpkK5hqe5q3hrPT9r1Pa9B6
 Fz+kIRQilBs0OWeOwyp0ac9tHtav93sXvMT/u8+CYvwPW8MgsIhu5tF5vvL5TTnAad2x
 hTww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ILFENIjP3pNWcBKSRP9eS47C60iumECdMiBouSjU6so=;
 b=sqEVvh3ADyhA0hNmOK1T9QenNfEOIGiXSO0okKE/bLYphOBLIgCQ0mqeyibDK+mehg
 y+fcFjiBZKZhSPzRp67Pom4WJOueh5QN0jrv8WM+31AOcfRbheXB1ZhpFughzXVQeIVM
 5rBTwLT8FZtmkDnSFu2/i58HilN8tNyh2a4Tw7Kl8xZSGKwoLcwWkTEMOrkWeHSM2Q2R
 hVYp1AfvvcWwpGUCBnYgEbK98/QXO6QUtS4jgf1xlOEV7Z2UXQW6IhKfHH5omtTB6kIR
 urchLbdcB3GUZf1p3BpUarCBZmD9vtW7XPND6nehHLuK3pqg6ygryYh3jHv4iRnuYwQZ
 NPaw==
X-Gm-Message-State: APjAAAXtJhBVf/oWMq5+Ow+yV9y25dkCIZhcb+V/ra2V+jncjPInKTul
 KEH1HE1VwzZxve7yrvCPJm4=
X-Google-Smtp-Source: APXvYqzaJ6rfIHRoopXu6KSUaSoTGT0Dcukd0y1BznTi/uh/wLgpQfhBydkA1OoqzeaoXG8sz0DNLA==
X-Received: by 2002:a65:500d:: with SMTP id f13mr17052699pgo.250.1557525024766; 
 Fri, 10 May 2019 14:50:24 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id e14sm1524108pff.60.2019.05.10.14.50.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 14:50:23 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v5 1/9] Revert "media: staging/imx: add media device to
 capture register"
Date: Fri, 10 May 2019 14:50:04 -0700
Message-Id: <20190510215012.13881-2-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190510215012.13881-1-slongerbeam@gmail.com>
References: <20190510215012.13881-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_145026_293004_431AA901 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

The imx6-specific subdevs that register a capture device will no
longer hold a reference to the media device, so this commit must be
reverted.

This reverts commit 16204b8a1c1af77725533b77936e6c73953486ae.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-ic-prpencvf.c   | 2 +-
 drivers/staging/media/imx/imx-media-capture.c | 6 +++---
 drivers/staging/media/imx/imx-media-csi.c     | 2 +-
 drivers/staging/media/imx/imx-media.h         | 3 +--
 drivers/staging/media/imx/imx7-media-csi.c    | 2 +-
 5 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
index 3ca1422f6154..5c8e6ad8c025 100644
--- a/drivers/staging/media/imx/imx-ic-prpencvf.c
+++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
@@ -1270,7 +1270,7 @@ static int prp_registered(struct v4l2_subdev *sd)
 	if (ret)
 		return ret;
 
-	ret = imx_media_capture_device_register(priv->md, priv->vdev);
+	ret = imx_media_capture_device_register(priv->vdev);
 	if (ret)
 		return ret;
 
diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
index 7688238a3396..9703c85b19c4 100644
--- a/drivers/staging/media/imx/imx-media-capture.c
+++ b/drivers/staging/media/imx/imx-media-capture.c
@@ -706,8 +706,7 @@ void imx_media_capture_device_error(struct imx_media_video_dev *vdev)
 }
 EXPORT_SYMBOL_GPL(imx_media_capture_device_error);
 
-int imx_media_capture_device_register(struct imx_media_dev *md,
-				      struct imx_media_video_dev *vdev)
+int imx_media_capture_device_register(struct imx_media_video_dev *vdev)
 {
 	struct capture_priv *priv = to_capture_priv(vdev);
 	struct v4l2_subdev *sd = priv->src_sd;
@@ -716,7 +715,8 @@ int imx_media_capture_device_register(struct imx_media_dev *md,
 	struct v4l2_subdev_format fmt_src;
 	int ret;
 
-	priv->md = md;
+	/* get media device */
+	priv->md = dev_get_drvdata(sd->v4l2_dev->dev);
 
 	vfd->v4l2_dev = sd->v4l2_dev;
 
diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index c33d714ed953..41965d8b56c4 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1816,7 +1816,7 @@ static int csi_registered(struct v4l2_subdev *sd)
 	if (ret)
 		goto free_fim;
 
-	ret = imx_media_capture_device_register(priv->md, priv->vdev);
+	ret = imx_media_capture_device_register(priv->vdev);
 	if (ret)
 		goto free_fim;
 
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index fc5d969ded79..dd603a6b3a70 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -272,8 +272,7 @@ int imx_media_of_add_csi(struct imx_media_dev *imxmd,
 struct imx_media_video_dev *
 imx_media_capture_device_init(struct v4l2_subdev *src_sd, int pad);
 void imx_media_capture_device_remove(struct imx_media_video_dev *vdev);
-int imx_media_capture_device_register(struct imx_media_dev *md,
-				      struct imx_media_video_dev *vdev);
+int imx_media_capture_device_register(struct imx_media_video_dev *vdev);
 void imx_media_capture_device_unregister(struct imx_media_video_dev *vdev);
 struct imx_media_buffer *
 imx_media_capture_device_next_buf(struct imx_media_video_dev *vdev);
diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index a708a0340eb1..18eb5d3ecf10 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -1126,7 +1126,7 @@ static int imx7_csi_registered(struct v4l2_subdev *sd)
 	if (ret < 0)
 		return ret;
 
-	ret = imx_media_capture_device_register(csi->imxmd, csi->vdev);
+	ret = imx_media_capture_device_register(csi->vdev);
 	if (ret < 0)
 		return ret;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
