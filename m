Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDB37C271
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:57:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TopPWi2ZWz2Pdp02GI2D6fprFaQx+hbOGhq9mbPIct4=; b=UmlCbQOrPbJJDe
	zgzcanfahxec6Ha/4W9A+vzXtIw6F81MAiNfTx9tSPPTCL4NFFQpDV8gLQFaImpUuq0rm0qmkB8t0
	kxCMRZ4JmLD2hlybuej0nYV8cP6INePwZZX6ozB3uyJRMksRizMOTBlMn+OVkL/de8y+sSlc+nmzr
	JG3gTGM9iuTYtIlEK/dNGP/0igR2z5bVf0rlQKn1gnj5aIeGE/cwb9nYd7q7HITOkAkc2dq4O63rz
	Rf9H9B4cDiaIaa9hvY3nvNGyG51IfNa9vM1I1tlUIMdmeDKE/vnPWPnT+m+hrIH4jIbsoeaNRO8zB
	tEbu+znLG9AbkSi9ervw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsoAV-00071z-Q8; Wed, 31 Jul 2019 12:57:23 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hso9p-0006By-SF
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:56:45 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6VCpVPr016879; Wed, 31 Jul 2019 14:56:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=l4zw4V4w7qNu66n2QrAKlPhl+SZ7Dhkjeg1kI5fKuLM=;
 b=SONtbAmQvSK3nIGgRd81+EKpWp2KU4bjM08kIb4n3FTUn4/as67wkpHHrnODiE8ICv5q
 pw1UnzeWpmsA56GsAoxOdVmnBE7SifNCIVuVFOMorGLdsyOiiR+doVCIF0DToHaUyOL9
 bQ9y5TDIagG5VP4Higl/8JHzia+kIVmNDhHPRL+7GLgWm1iMHFjxsSc5kAWgrn18BXGe
 2RQflI0WEcVrOTlmHUXkpOOSCjpyoxvzyE8lBgFZ9i439eEJKC8PzSWqdvynHacY+KZ3
 FO+F69j0fwqqKTfyhffnoRfekN2R3lSaTRM0xDROcr1Ws3wGf786okd4a9dyVZbePHKF tA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2u0bra4m22-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 31 Jul 2019 14:56:30 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 87C0834;
 Wed, 31 Jul 2019 12:56:29 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7B650CB312;
 Wed, 31 Jul 2019 14:56:29 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 31 Jul
 2019 14:56:29 +0200
Received: from localhost (10.201.23.19) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 31 Jul 2019 14:56:29
 +0200
From: Hugues Fruchet <hugues.fruchet@st.com>
To: Alexandre Torgue <alexandre.torgue@st.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Sakari Ailus
 <sakari.ailus@linux.intel.com>
Subject: [PATCH v4 3/3] media: stm32-dcmi: add support of several sub-devices
Date: Wed, 31 Jul 2019 14:56:23 +0200
Message-ID: <1564577783-18627-4-git-send-email-hugues.fruchet@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564577783-18627-1-git-send-email-hugues.fruchet@st.com>
References: <1564577783-18627-1-git-send-email-hugues.fruchet@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.19]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-31_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_055642_302371_C59EAEBC 
X-CRM114-Status: GOOD (  24.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mickael GUENE <mickael.guene@st.com>, linux-kernel@vger.kernel.org,
 Philippe CORNU <philippe.cornu@st.com>, Yannick Fertre <yannick.fertre@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, Hugues
 Fruchet <hugues.fruchet@st.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support of several sub-devices within pipeline instead
of a single one.
This allows to support a CSI-2 camera sensor connected
through a CSI-2 to parallel bridge.

Signed-off-by: Hugues Fruchet <hugues.fruchet@st.com>
---
 drivers/media/platform/stm32/stm32-dcmi.c | 195 +++++++++++++++++++++++++++---
 1 file changed, 177 insertions(+), 18 deletions(-)

diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
index 6f37617..7c21805 100644
--- a/drivers/media/platform/stm32/stm32-dcmi.c
+++ b/drivers/media/platform/stm32/stm32-dcmi.c
@@ -172,6 +172,7 @@ struct stm32_dcmi {
 
 	struct media_device		mdev;
 	struct media_pad		vid_cap_pad;
+	struct media_pipeline		pipeline;
 };
 
 static inline struct stm32_dcmi *notifier_to_dcmi(struct v4l2_async_notifier *n)
@@ -583,6 +584,131 @@ static void dcmi_buf_queue(struct vb2_buffer *vb)
 	spin_unlock_irq(&dcmi->irqlock);
 }
 
+static struct media_entity *dcmi_find_source(struct stm32_dcmi *dcmi)
+{
+	struct media_entity *entity = &dcmi->vdev->entity;
+	struct media_pad *pad;
+
+	/* Walk searching for entity having no sink */
+	while (1) {
+		pad = &entity->pads[0];
+		if (!(pad->flags & MEDIA_PAD_FL_SINK))
+			break;
+
+		pad = media_entity_remote_pad(pad);
+		if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
+			break;
+
+		entity = pad->entity;
+	}
+
+	return entity;
+}
+
+static int dcmi_pipeline_s_fmt(struct stm32_dcmi *dcmi,
+			       struct v4l2_subdev_pad_config *pad_cfg,
+			       struct v4l2_subdev_format *format)
+{
+	struct media_entity *entity = &dcmi->entity.source->entity;
+	struct v4l2_subdev *subdev;
+	struct media_pad *sink_pad = NULL;
+	struct media_pad *src_pad = NULL;
+	struct media_pad *pad = NULL;
+	struct v4l2_subdev_format fmt = *format;
+	bool found = false;
+	int ret;
+
+	/*
+	 * Starting from sensor subdevice, walk within
+	 * pipeline and set format on each subdevice
+	 */
+	while (1) {
+		unsigned int i;
+
+		/* Search if current entity has a source pad */
+		for (i = 0; i < entity->num_pads; i++) {
+			pad = &entity->pads[i];
+			if (pad->flags & MEDIA_PAD_FL_SOURCE) {
+				src_pad = pad;
+				found = true;
+				break;
+			}
+		}
+		if (!found)
+			break;
+
+		subdev = media_entity_to_v4l2_subdev(entity);
+
+		/* Propagate format on sink pad if any, otherwise source pad */
+		if (sink_pad)
+			pad = sink_pad;
+
+		dev_dbg(dcmi->dev, "%s[%d] pad format set to 0x%x %ux%u\n",
+			subdev->name, pad->index, format->format.code,
+			format->format.width, format->format.height);
+
+		fmt.pad = pad->index;
+		ret = v4l2_subdev_call(subdev, pad, set_fmt, pad_cfg, &fmt);
+		if (ret < 0)
+			return ret;
+
+		/* Walk to next entity */
+		sink_pad = media_entity_remote_pad(src_pad);
+		if (!sink_pad || !is_media_entity_v4l2_subdev(sink_pad->entity))
+			break;
+
+		entity = sink_pad->entity;
+	}
+	*format = fmt;
+
+	return 0;
+}
+
+static int dcmi_pipeline_s_stream(struct stm32_dcmi *dcmi, int state)
+{
+	struct media_entity *entity = &dcmi->vdev->entity;
+	struct v4l2_subdev *subdev;
+	struct media_pad *pad;
+	int ret;
+
+	/* Start/stop all entities within pipeline */
+	while (1) {
+		pad = &entity->pads[0];
+		if (!(pad->flags & MEDIA_PAD_FL_SINK))
+			break;
+
+		pad = media_entity_remote_pad(pad);
+		if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
+			break;
+
+		entity = pad->entity;
+		subdev = media_entity_to_v4l2_subdev(entity);
+
+		ret = v4l2_subdev_call(subdev, video, s_stream, state);
+		if (ret < 0 && ret != -ENOIOCTLCMD) {
+			dev_err(dcmi->dev, "%s: %s failed to %s streaming (%d)\n",
+				__func__, subdev->name,
+				state ? "start" : "stop", ret);
+			return ret;
+		}
+
+		dev_dbg(dcmi->dev, "%s is %s\n",
+			subdev->name, state ? "started" : "stopped");
+	}
+
+	return 0;
+}
+
+static int dcmi_pipeline_start(struct stm32_dcmi *dcmi)
+{
+	return dcmi_pipeline_s_stream(dcmi, 1);
+}
+
+static void dcmi_pipeline_stop(struct stm32_dcmi *dcmi)
+{
+	dcmi_pipeline_s_stream(dcmi, 0);
+}
+
 static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
 {
 	struct stm32_dcmi *dcmi = vb2_get_drv_priv(vq);
@@ -597,14 +723,17 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
 		goto err_release_buffers;
 	}
 
-	/* Enable stream on the sub device */
-	ret = v4l2_subdev_call(dcmi->entity.source, video, s_stream, 1);
-	if (ret && ret != -ENOIOCTLCMD) {
-		dev_err(dcmi->dev, "%s: Failed to start streaming, subdev streamon error",
-			__func__);
+	ret = media_pipeline_start(&dcmi->vdev->entity, &dcmi->pipeline);
+	if (ret < 0) {
+		dev_err(dcmi->dev, "%s: Failed to start streaming, media pipeline start error (%d)\n",
+			__func__, ret);
 		goto err_pm_put;
 	}
 
+	ret = dcmi_pipeline_start(dcmi);
+	if (ret)
+		goto err_media_pipeline_stop;
+
 	spin_lock_irq(&dcmi->irqlock);
 
 	/* Set bus width */
@@ -676,7 +805,7 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
 	if (ret) {
 		dev_err(dcmi->dev, "%s: Start streaming failed, cannot start capture\n",
 			__func__);
-		goto err_subdev_streamoff;
+		goto err_pipeline_stop;
 	}
 
 	/* Enable interruptions */
@@ -687,8 +816,11 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
 
 	return 0;
 
-err_subdev_streamoff:
-	v4l2_subdev_call(dcmi->entity.source, video, s_stream, 0);
+err_pipeline_stop:
+	dcmi_pipeline_stop(dcmi);
+
+err_media_pipeline_stop:
+	media_pipeline_stop(&dcmi->vdev->entity);
 
 err_pm_put:
 	pm_runtime_put(dcmi->dev);
@@ -713,13 +845,10 @@ static void dcmi_stop_streaming(struct vb2_queue *vq)
 {
 	struct stm32_dcmi *dcmi = vb2_get_drv_priv(vq);
 	struct dcmi_buf *buf, *node;
-	int ret;
 
-	/* Disable stream on the sub device */
-	ret = v4l2_subdev_call(dcmi->entity.source, video, s_stream, 0);
-	if (ret && ret != -ENOIOCTLCMD)
-		dev_err(dcmi->dev, "%s: Failed to stop streaming, subdev streamoff error (%d)\n",
-			__func__, ret);
+	dcmi_pipeline_stop(dcmi);
+
+	media_pipeline_stop(&dcmi->vdev->entity);
 
 	spin_lock_irq(&dcmi->irqlock);
 
@@ -937,8 +1066,7 @@ static int dcmi_set_fmt(struct stm32_dcmi *dcmi, struct v4l2_format *f)
 	mf->width = sd_framesize.width;
 	mf->height = sd_framesize.height;
 
-	ret = v4l2_subdev_call(dcmi->entity.source, pad,
-			       set_fmt, NULL, &format);
+	ret = dcmi_pipeline_s_fmt(dcmi, NULL, &format);
 	if (ret < 0)
 		return ret;
 
@@ -1529,7 +1657,20 @@ static int dcmi_graph_notify_complete(struct v4l2_async_notifier *notifier)
 	struct stm32_dcmi *dcmi = notifier_to_dcmi(notifier);
 	int ret;
 
+	/*
+	 * Now that the graph is complete,
+	 * we search for the source subdevice
+	 * in order to expose it through V4L2 interface
+	 */
+	dcmi->entity.source =
+		media_entity_to_v4l2_subdev(dcmi_find_source(dcmi));
+	if (!dcmi->entity.source) {
+		dev_err(dcmi->dev, "Source subdevice not found\n");
+		return -ENODEV;
+	}
+
 	dcmi->vdev->ctrl_handler = dcmi->entity.source->ctrl_handler;
+
 	ret = dcmi_formats_init(dcmi);
 	if (ret) {
 		dev_err(dcmi->dev, "No supported mediabus format found\n");
@@ -1574,12 +1715,30 @@ static int dcmi_graph_notify_bound(struct v4l2_async_notifier *notifier,
 				   struct v4l2_async_subdev *asd)
 {
 	struct stm32_dcmi *dcmi = notifier_to_dcmi(notifier);
+	unsigned int ret;
+	int src_pad;
 
 	dev_dbg(dcmi->dev, "Subdev %s bound\n", subdev->name);
 
-	dcmi->entity.source = subdev;
+	/*
+	 * Link this sub-device to DCMI, it could be
+	 * a parallel camera sensor or a bridge
+	 */
+	src_pad = media_entity_get_fwnode_pad(&subdev->entity,
+					      subdev->fwnode,
+					      MEDIA_PAD_FL_SOURCE);
+
+	ret = media_create_pad_link(&subdev->entity, src_pad,
+				    &dcmi->vdev->entity, 0,
+				    MEDIA_LNK_FL_IMMUTABLE |
+				    MEDIA_LNK_FL_ENABLED);
+	if (ret)
+		dev_err(dcmi->dev, "Failed to create media pad link with subdev %s\n",
+			subdev->name);
+	else
+		dev_dbg(dcmi->dev, "DCMI is now linked to %s\n", subdev->name);
 
-	return 0;
+	return ret;
 }
 
 static const struct v4l2_async_notifier_operations dcmi_graph_notify_ops = {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
