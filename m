Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 904DD9BEDA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 18:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ra9ijfh/PKBWNt0FIolCTliq+Oj7IEN85p6xMTr7aSQ=; b=JpVVh9jY6g85CjhU6IY0lu0e2o
	6FV6rSjGZo5I5YtTw3ufBBYR8abjius57Y2lXh+4fb270HVLd/zeuCMzTtzZgmUrIX9uJ8HM6/tkG
	eFd12aSmBfbasZrKeaSGhxbJaSDUCGTfhqcw7eBIEbbAUgMGcBF2MLo7xVsRkJbN3lmFpeYKP3FSA
	BHWg+/67vsvL4+38IeQCrOAn15VeR1DtiX7KHVRkzVz4zqaIAqWcpgFb4qbRUHoIKxZNMS6Cv6Kx0
	N9vmOoC+eG2da3A+cCv1HpXYbLDZ61TaKjxcg0jzd3VeeGpIjdLIAxsAEDz3iLJWq1bcpFK5E21uD
	IyuMU1/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1YzV-0007wo-Bm; Sat, 24 Aug 2019 16:34:13 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Yz4-0007nL-N0
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 16:33:48 +0000
Received: by mail-pf1-x443.google.com with SMTP id v12so8756851pfn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 24 Aug 2019 09:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Y2pNRxpBXv4EPioyvtKi+BMt5i9vPsPZ/rrPRKvUY9M=;
 b=hFanz7AiVDe1Vm31R4aT0e3IwyTVgm1ao5r+UFb/2br/gnPs+VRKBAUCS1guSBnbGS
 gaHDYQ4uGXFYvAfnV92SETj6zbXJ0TYIJX4yuVufuTF6artx1Zsm8dX37GnNKi10hxEi
 xJ9cDlQV9VM7LS7t6jEhzPt12ETP2EJ48Xy4Qh4PV/P08O91oO0P3ZysJrr4/4WmyNgR
 XjJEPmY2+/sPH/BK4N4448T3wBESDJhYsV39u1gU2fo5qooO25lb5oSc165o+mYuo1H0
 1bvow0UUi6zCQ9T4cSmPdhurnD4Ags3K1/Obh67Zi0ZxLmSdNqNy934UGTI25u6sUGQ2
 Ayhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Y2pNRxpBXv4EPioyvtKi+BMt5i9vPsPZ/rrPRKvUY9M=;
 b=SjSuIk+T1WN7Hv0CpTK360KSMjczZmUnT29XU3tU5FIKRjo8rzA2P6riQRIXCntz38
 I7N+eJPkt7DUKoORkAwwXQ2yM7eJDKEZuTdoB48fJQwreKal2M8wACQLbAoBuqL5nY1L
 C1lixf15OOEEHwFiubFBP/ei4oP8E/RebcTBpfzXEsT5N5fky8zl87Zec0SM2SfYpajT
 yUzHh+kUcmnGmCtrMmTt7noCZDrNZWMm1dKEVmFlLLvZH/qoLPwW59d+J1O/Yi8zwkTA
 DoU5puQxA+I2XorKX5bju6EEYkRPasufQL1WoqzrWQWISkrdAqRESbK8Lm+Sc3//VS9R
 /t4A==
X-Gm-Message-State: APjAAAXQCdyDVeSHNVfLAKcRQE3TMxgjrxbJOHXjsG/jcUa9yKWWMv1Y
 mAPQsFq6C1lkbLkEZDldTs8=
X-Google-Smtp-Source: APXvYqy7XM7SHNJg1g5xp5EUfXRXtTecgbURbV5VyHM3klp4MmfBTUULeprEiiw7Fh+iXCdgOA4k3A==
X-Received: by 2002:a17:90a:2e86:: with SMTP id
 r6mr9086391pjd.67.1566664426066; 
 Sat, 24 Aug 2019 09:33:46 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id k3sm5733018pjo.3.2019.08.24.09.33.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Aug 2019 09:33:45 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 2/2] media: imx: Move pads init to probe
Date: Sat, 24 Aug 2019 09:33:37 -0700
Message-Id: <20190824163337.8260-3-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190824163337.8260-1-slongerbeam@gmail.com>
References: <20190824163337.8260-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_093346_754918_BDB0B597 
X-CRM114-Status: GOOD (  22.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

If a subdevice is unregistered and then registered again without the
driver being removed and re-probed (which will happen when the media
device is removed and re-probed without also removing/re-probing the
subdevice), media_device_register_entity() is called with a non-zero
entity->num_pads, and then the subdevice's .registered callback calls
media_entity_pads_init(). Thus the subdevice's pad objects are added
to the media device pad list twice, causing list corruption.

One way to fix this would be to create media_entity_pads_destroy(),
and call it in the subdevice's .unregistered callback. But calling
media_entity_pads_init() in the .registered callbacks was done for
legacy reasons and is no longer necessary, so move the call to
media_entity_pads_init() into the subdevice's probe functions. This
fixes the duplicate pad obejcts in the media device pad list.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-ic-prp.c        | 25 ++++++-----------
 drivers/staging/media/imx/imx-ic-prpencvf.c   | 28 +++++++++----------
 drivers/staging/media/imx/imx-media-capture.c | 15 +++++-----
 drivers/staging/media/imx/imx-media-csi.c     | 21 +++++++-------
 drivers/staging/media/imx/imx-media-vdic.c    | 27 ++++++++----------
 drivers/staging/media/imx/imx6-mipi-csi2.c    | 27 ++++++++----------
 drivers/staging/media/imx/imx7-media-csi.c    | 18 ++++++------
 drivers/staging/media/imx/imx7-mipi-csis.c    | 23 +++++----------
 8 files changed, 81 insertions(+), 103 deletions(-)

diff --git a/drivers/staging/media/imx/imx-ic-prp.c b/drivers/staging/media/imx/imx-ic-prp.c
index 35e60a120dc1..2a4f77e83ed3 100644
--- a/drivers/staging/media/imx/imx-ic-prp.c
+++ b/drivers/staging/media/imx/imx-ic-prp.c
@@ -428,32 +428,19 @@ static int prp_s_frame_interval(struct v4l2_subdev *sd,
 	return 0;
 }
 
-/*
- * retrieve our pads parsed from the OF graph by the media device
- */
 static int prp_registered(struct v4l2_subdev *sd)
 {
 	struct prp_priv *priv = sd_to_priv(sd);
-	int i, ret;
 	u32 code;
 
-	for (i = 0; i < PRP_NUM_PADS; i++) {
-		priv->pad[i].flags = (i == PRP_SINK_PAD) ?
-			MEDIA_PAD_FL_SINK : MEDIA_PAD_FL_SOURCE;
-	}
-
 	/* init default frame interval */
 	priv->frame_interval.numerator = 1;
 	priv->frame_interval.denominator = 30;
 
 	/* set a default mbus format  */
 	imx_media_enum_ipu_format(&code, 0, CS_SEL_YUV);
-	ret = imx_media_init_mbus_fmt(&priv->format_mbus, 640, 480, code,
-				      V4L2_FIELD_NONE, NULL);
-	if (ret)
-		return ret;
-
-	return media_entity_pads_init(&sd->entity, PRP_NUM_PADS, priv->pad);
+	return imx_media_init_mbus_fmt(&priv->format_mbus, 640, 480, code,
+				       V4L2_FIELD_NONE, NULL);
 }
 
 static const struct v4l2_subdev_pad_ops prp_pad_ops = {
@@ -487,6 +474,7 @@ static const struct v4l2_subdev_internal_ops prp_internal_ops = {
 static int prp_init(struct imx_ic_priv *ic_priv)
 {
 	struct prp_priv *priv;
+	int i;
 
 	priv = devm_kzalloc(ic_priv->ipu_dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -496,7 +484,12 @@ static int prp_init(struct imx_ic_priv *ic_priv)
 	ic_priv->task_priv = priv;
 	priv->ic_priv = ic_priv;
 
-	return 0;
+	for (i = 0; i < PRP_NUM_PADS; i++)
+		priv->pad[i].flags = (i == PRP_SINK_PAD) ?
+			MEDIA_PAD_FL_SINK : MEDIA_PAD_FL_SOURCE;
+
+	return media_entity_pads_init(&ic_priv->sd.entity, PRP_NUM_PADS,
+				      priv->pad);
 }
 
 static void prp_remove(struct imx_ic_priv *ic_priv)
diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
index f8a0b21fcd02..09c4e3f33807 100644
--- a/drivers/staging/media/imx/imx-ic-prpencvf.c
+++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
@@ -1240,9 +1240,6 @@ static int prp_s_frame_interval(struct v4l2_subdev *sd,
 	return 0;
 }
 
-/*
- * retrieve our pads parsed from the OF graph by the media device
- */
 static int prp_registered(struct v4l2_subdev *sd)
 {
 	struct prp_priv *priv = sd_to_priv(sd);
@@ -1250,12 +1247,9 @@ static int prp_registered(struct v4l2_subdev *sd)
 	int i, ret;
 	u32 code;
 
+	/* set a default mbus format  */
+	imx_media_enum_ipu_format(&code, 0, CS_SEL_YUV);
 	for (i = 0; i < PRPENCVF_NUM_PADS; i++) {
-		priv->pad[i].flags = (i == PRPENCVF_SINK_PAD) ?
-			MEDIA_PAD_FL_SINK : MEDIA_PAD_FL_SOURCE;
-
-		/* set a default mbus format  */
-		imx_media_enum_ipu_format(&code, 0, CS_SEL_YUV);
 		ret = imx_media_init_mbus_fmt(&priv->format_mbus[i],
 					      640, 480, code, V4L2_FIELD_NONE,
 					      &priv->cc[i]);
@@ -1267,11 +1261,6 @@ static int prp_registered(struct v4l2_subdev *sd)
 	priv->frame_interval.numerator = 1;
 	priv->frame_interval.denominator = 30;
 
-	ret = media_entity_pads_init(&sd->entity, PRPENCVF_NUM_PADS,
-				     priv->pad);
-	if (ret)
-		return ret;
-
 	priv->vdev = imx_media_capture_device_init(ic_priv->ipu_dev,
 						   &ic_priv->sd,
 						   PRPENCVF_SRC_PAD);
@@ -1337,6 +1326,7 @@ static const struct v4l2_subdev_internal_ops prp_internal_ops = {
 static int prp_init(struct imx_ic_priv *ic_priv)
 {
 	struct prp_priv *priv;
+	int i, ret;
 
 	priv = devm_kzalloc(ic_priv->ipu_dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -1350,7 +1340,17 @@ static int prp_init(struct imx_ic_priv *ic_priv)
 
 	mutex_init(&priv->lock);
 
-	return 0;
+	for (i = 0; i < PRPENCVF_NUM_PADS; i++) {
+		priv->pad[i].flags = (i == PRPENCVF_SINK_PAD) ?
+			MEDIA_PAD_FL_SINK : MEDIA_PAD_FL_SOURCE;
+	}
+
+	ret = media_entity_pads_init(&ic_priv->sd.entity, PRPENCVF_NUM_PADS,
+				     priv->pad);
+	if (ret)
+		mutex_destroy(&priv->lock);
+
+	return ret;
 }
 
 static void prp_remove(struct imx_ic_priv *ic_priv)
diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
index b33a07bc9105..c95d2c330a76 100644
--- a/drivers/staging/media/imx/imx-media-capture.c
+++ b/drivers/staging/media/imx/imx-media-capture.c
@@ -765,13 +765,6 @@ int imx_media_capture_device_register(struct imx_media_video_dev *vdev)
 
 	INIT_LIST_HEAD(&priv->ready_q);
 
-	priv->vdev_pad.flags = MEDIA_PAD_FL_SINK;
-	ret = media_entity_pads_init(&vfd->entity, 1, &priv->vdev_pad);
-	if (ret) {
-		v4l2_err(sd, "failed to init dev pad\n");
-		goto unreg;
-	}
-
 	/* create the link from the src_sd devnode pad to device node */
 	ret = media_create_pad_link(&sd->entity, priv->src_sd_pad,
 				    &vfd->entity, 0, 0);
@@ -834,6 +827,7 @@ imx_media_capture_device_init(struct device *dev, struct v4l2_subdev *src_sd,
 {
 	struct capture_priv *priv;
 	struct video_device *vfd;
+	int ret;
 
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -858,6 +852,13 @@ imx_media_capture_device_init(struct device *dev, struct v4l2_subdev *src_sd,
 	vfd->queue = &priv->q;
 	priv->vdev.vfd = vfd;
 
+	priv->vdev_pad.flags = MEDIA_PAD_FL_SINK;
+	ret = media_entity_pads_init(&vfd->entity, 1, &priv->vdev_pad);
+	if (ret) {
+		video_device_release(vfd);
+		return ERR_PTR(ret);
+	}
+
 	INIT_LIST_HEAD(&priv->vdev.list);
 
 	video_set_drvdata(vfd, priv);
diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index b3f1cf08a102..0b320d6e5037 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1740,9 +1740,6 @@ static int csi_unsubscribe_event(struct v4l2_subdev *sd, struct v4l2_fh *fh,
 	return v4l2_event_unsubscribe(fh, sub);
 }
 
-/*
- * retrieve our pads parsed from the OF graph by the media device
- */
 static int csi_registered(struct v4l2_subdev *sd)
 {
 	struct csi_priv *priv = v4l2_get_subdevdata(sd);
@@ -1759,9 +1756,6 @@ static int csi_registered(struct v4l2_subdev *sd)
 	priv->csi = csi;
 
 	for (i = 0; i < CSI_NUM_PADS; i++) {
-		priv->pad[i].flags = (i == CSI_SINK_PAD) ?
-			MEDIA_PAD_FL_SINK : MEDIA_PAD_FL_SOURCE;
-
 		code = 0;
 		if (i != CSI_SINK_PAD)
 			imx_media_enum_ipu_format(&code, 0, CS_SEL_YUV);
@@ -1793,10 +1787,6 @@ static int csi_registered(struct v4l2_subdev *sd)
 		goto put_csi;
 	}
 
-	ret = media_entity_pads_init(&sd->entity, CSI_NUM_PADS, priv->pad);
-	if (ret)
-		goto free_fim;
-
 	priv->vdev = imx_media_capture_device_init(priv->sd.dev,
 						   &priv->sd,
 						   CSI_SRC_PAD_IDMAC);
@@ -1934,7 +1924,7 @@ static int imx_csi_probe(struct platform_device *pdev)
 	struct ipu_client_platformdata *pdata;
 	struct pinctrl *pinctrl;
 	struct csi_priv *priv;
-	int ret;
+	int i, ret;
 
 	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -1974,6 +1964,15 @@ static int imx_csi_probe(struct platform_device *pdev)
 	imx_media_grp_id_to_sd_name(priv->sd.name, sizeof(priv->sd.name),
 				    priv->sd.grp_id, ipu_get_num(priv->ipu));
 
+	for (i = 0; i < CSI_NUM_PADS; i++)
+		priv->pad[i].flags = (i == CSI_SINK_PAD) ?
+			MEDIA_PAD_FL_SINK : MEDIA_PAD_FL_SOURCE;
+
+	ret = media_entity_pads_init(&priv->sd.entity, CSI_NUM_PADS,
+				     priv->pad);
+	if (ret)
+		return ret;
+
 	mutex_init(&priv->lock);
 
 	v4l2_ctrl_handler_init(&priv->ctrl_hdlr, 0);
diff --git a/drivers/staging/media/imx/imx-media-vdic.c b/drivers/staging/media/imx/imx-media-vdic.c
index cfad65a16917..0d83c2c41606 100644
--- a/drivers/staging/media/imx/imx-media-vdic.c
+++ b/drivers/staging/media/imx/imx-media-vdic.c
@@ -841,9 +841,6 @@ static int vdic_s_frame_interval(struct v4l2_subdev *sd,
 	return ret;
 }
 
-/*
- * retrieve our pads parsed from the OF graph by the media device
- */
 static int vdic_registered(struct v4l2_subdev *sd)
 {
 	struct vdic_priv *priv = v4l2_get_subdevdata(sd);
@@ -851,9 +848,6 @@ static int vdic_registered(struct v4l2_subdev *sd)
 	u32 code;
 
 	for (i = 0; i < VDIC_NUM_PADS; i++) {
-		priv->pad[i].flags = (i == VDIC_SRC_PAD_DIRECT) ?
-			MEDIA_PAD_FL_SOURCE : MEDIA_PAD_FL_SINK;
-
 		code = 0;
 		if (i != VDIC_SINK_PAD_IDMAC)
 			imx_media_enum_ipu_format(&code, 0, CS_SEL_YUV);
@@ -874,15 +868,7 @@ static int vdic_registered(struct v4l2_subdev *sd)
 
 	priv->active_input_pad = VDIC_SINK_PAD_DIRECT;
 
-	ret = vdic_init_controls(priv);
-	if (ret)
-		return ret;
-
-	ret = media_entity_pads_init(&sd->entity, VDIC_NUM_PADS, priv->pad);
-	if (ret)
-		v4l2_ctrl_handler_free(&priv->ctrl_hdlr);
-
-	return ret;
+	return vdic_init_controls(priv);
 }
 
 static void vdic_unregistered(struct v4l2_subdev *sd)
@@ -927,7 +913,7 @@ struct v4l2_subdev *imx_media_vdic_register(struct v4l2_device *v4l2_dev,
 					    u32 grp_id)
 {
 	struct vdic_priv *priv;
-	int ret;
+	int i, ret;
 
 	priv = devm_kzalloc(ipu_dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -949,6 +935,15 @@ struct v4l2_subdev *imx_media_vdic_register(struct v4l2_device *v4l2_dev,
 
 	mutex_init(&priv->lock);
 
+	for (i = 0; i < VDIC_NUM_PADS; i++)
+		priv->pad[i].flags = (i == VDIC_SRC_PAD_DIRECT) ?
+			MEDIA_PAD_FL_SOURCE : MEDIA_PAD_FL_SINK;
+
+	ret = media_entity_pads_init(&priv->sd.entity, VDIC_NUM_PADS,
+				     priv->pad);
+	if (ret)
+		goto free;
+
 	ret = v4l2_device_register_subdev(v4l2_dev, &priv->sd);
 	if (ret)
 		goto free;
diff --git a/drivers/staging/media/imx/imx6-mipi-csi2.c b/drivers/staging/media/imx/imx6-mipi-csi2.c
index bfa4b254c4e4..cd3dd6e33ef0 100644
--- a/drivers/staging/media/imx/imx6-mipi-csi2.c
+++ b/drivers/staging/media/imx/imx6-mipi-csi2.c
@@ -497,26 +497,13 @@ static int csi2_set_fmt(struct v4l2_subdev *sd,
 	return ret;
 }
 
-/*
- * retrieve our pads parsed from the OF graph by the media device
- */
 static int csi2_registered(struct v4l2_subdev *sd)
 {
 	struct csi2_dev *csi2 = sd_to_dev(sd);
-	int i, ret;
-
-	for (i = 0; i < CSI2_NUM_PADS; i++) {
-		csi2->pad[i].flags = (i == CSI2_SINK_PAD) ?
-		MEDIA_PAD_FL_SINK : MEDIA_PAD_FL_SOURCE;
-	}
 
 	/* set a default mbus format  */
-	ret = imx_media_init_mbus_fmt(&csi2->format_mbus,
+	return imx_media_init_mbus_fmt(&csi2->format_mbus,
 				      640, 480, 0, V4L2_FIELD_NONE, NULL);
-	if (ret)
-		return ret;
-
-	return media_entity_pads_init(&sd->entity, CSI2_NUM_PADS, csi2->pad);
 }
 
 static const struct media_entity_operations csi2_entity_ops = {
@@ -573,7 +560,7 @@ static int csi2_probe(struct platform_device *pdev)
 	unsigned int sink_port = 0;
 	struct csi2_dev *csi2;
 	struct resource *res;
-	int ret;
+	int i, ret;
 
 	csi2 = devm_kzalloc(&pdev->dev, sizeof(*csi2), GFP_KERNEL);
 	if (!csi2)
@@ -592,6 +579,16 @@ static int csi2_probe(struct platform_device *pdev)
 	csi2->sd.entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
 	csi2->sd.grp_id = IMX_MEDIA_GRP_ID_CSI2;
 
+	for (i = 0; i < CSI2_NUM_PADS; i++) {
+		csi2->pad[i].flags = (i == CSI2_SINK_PAD) ?
+		MEDIA_PAD_FL_SINK : MEDIA_PAD_FL_SOURCE;
+	}
+
+	ret = media_entity_pads_init(&csi2->sd.entity, CSI2_NUM_PADS,
+				     csi2->pad);
+	if (ret)
+		return ret;
+
 	csi2->pllref_clk = devm_clk_get(&pdev->dev, "ref");
 	if (IS_ERR(csi2->pllref_clk)) {
 		v4l2_err(&csi2->sd, "failed to get pll reference clock\n");
diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index b61ab16a337a..0fe302b89770 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -1100,9 +1100,6 @@ static int imx7_csi_registered(struct v4l2_subdev *sd)
 	int i;
 
 	for (i = 0; i < IMX7_CSI_PADS_NUM; i++) {
-		csi->pad[i].flags = (i == IMX7_CSI_PAD_SINK) ?
-			MEDIA_PAD_FL_SINK : MEDIA_PAD_FL_SOURCE;
-
 		/* set a default mbus format  */
 		ret = imx_media_init_mbus_fmt(&csi->format_mbus[i],
 					      800, 600, 0, V4L2_FIELD_NONE,
@@ -1115,10 +1112,6 @@ static int imx7_csi_registered(struct v4l2_subdev *sd)
 		csi->frame_interval[i].denominator = 30;
 	}
 
-	ret = media_entity_pads_init(&sd->entity, IMX7_CSI_PADS_NUM, csi->pad);
-	if (ret < 0)
-		return ret;
-
 	csi->vdev = imx_media_capture_device_init(csi->sd.dev, &csi->sd,
 						  IMX7_CSI_PAD_SRC);
 	if (IS_ERR(csi->vdev))
@@ -1199,7 +1192,7 @@ static int imx7_csi_probe(struct platform_device *pdev)
 	struct device_node *node = dev->of_node;
 	struct imx_media_dev *imxmd;
 	struct imx7_csi *csi;
-	int ret;
+	int i, ret;
 
 	csi = devm_kzalloc(&pdev->dev, sizeof(*csi), GFP_KERNEL);
 	if (!csi)
@@ -1266,6 +1259,15 @@ static int imx7_csi_probe(struct platform_device *pdev)
 	v4l2_ctrl_handler_init(&csi->ctrl_hdlr, 0);
 	csi->sd.ctrl_handler = &csi->ctrl_hdlr;
 
+	for (i = 0; i < IMX7_CSI_PADS_NUM; i++)
+		csi->pad[i].flags = (i == IMX7_CSI_PAD_SINK) ?
+			MEDIA_PAD_FL_SINK : MEDIA_PAD_FL_SOURCE;
+
+	ret = media_entity_pads_init(&csi->sd.entity, IMX7_CSI_PADS_NUM,
+				     csi->pad);
+	if (ret < 0)
+		goto free;
+
 	ret = v4l2_async_register_fwnode_subdev(&csi->sd,
 						sizeof(struct v4l2_async_subdev),
 						NULL, 0,
diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index d1cdf011c8f1..cdf7d0d85042 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -780,17 +780,6 @@ static irqreturn_t mipi_csis_irq_handler(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static int mipi_csis_registered(struct v4l2_subdev *mipi_sd)
-{
-	struct csi_state *state = mipi_sd_to_csis_state(mipi_sd);
-
-	state->pads[CSIS_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
-	state->pads[CSIS_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;
-
-	return media_entity_pads_init(&state->mipi_sd.entity, CSIS_PADS_NUM,
-				      state->pads);
-}
-
 static const struct v4l2_subdev_core_ops mipi_csis_core_ops = {
 	.log_status	= mipi_csis_log_status,
 };
@@ -816,10 +805,6 @@ static const struct v4l2_subdev_ops mipi_csis_subdev_ops = {
 	.pad	= &mipi_csis_pad_ops,
 };
 
-static const struct v4l2_subdev_internal_ops mipi_csis_internal_ops = {
-	.registered = mipi_csis_registered,
-};
-
 static int mipi_csis_parse_dt(struct platform_device *pdev,
 			      struct csi_state *state)
 {
@@ -880,7 +865,6 @@ static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
 
 	mipi_sd->entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
 	mipi_sd->entity.ops = &mipi_csis_entity_ops;
-	mipi_sd->internal_ops = &mipi_csis_internal_ops;
 
 	mipi_sd->dev = &pdev->dev;
 
@@ -892,6 +876,13 @@ static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
 
 	v4l2_set_subdevdata(mipi_sd, &pdev->dev);
 
+	state->pads[CSIS_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
+	state->pads[CSIS_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;
+	ret = media_entity_pads_init(&mipi_sd->entity, CSIS_PADS_NUM,
+				     state->pads);
+	if (ret)
+		return ret;
+
 	ret = v4l2_async_register_fwnode_subdev(mipi_sd,
 						sizeof(struct v4l2_async_subdev),
 						&sink_port, 1,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
