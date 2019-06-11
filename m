Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA8B3C67E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QTupvH4o8PYw5aXJkGci5YxliL3iZ3ZBk20sklUkgj8=; b=Xp3FOvTSesgo1z
	AlEUrIsYXPs0rBY3pqzHMurJgorm3jv5uQXJdFwAZfs7Z0NDlV40/joNpXpjBmYbSisvd3NxUtg1O
	qX8VlEXu7KCB3czUvQiCGq0lHKDtdbQnRnpkqHUBs7dqGJ+GV5nK9N0NyuSNT5N2cLUXSXU91XnU1
	Logqit0Rw5l4OCQu9y1DU9bZZdMq5ku1uq86W4q9Kp/xlLa6QKIJzR6BUGiIb3cYDahWnv623b/Vw
	9GUxGHrK/XYlpNx9vGZTUziH9BapQYjWJhUtuTlzV6pLpBM93kDwCjJ7GKJExrZgKNgeMX2XXmtAK
	iXuVm+vS+NUs+sGDx7IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hacUk-0007Yx-SJ; Tue, 11 Jun 2019 08:51:06 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacSy-0005AG-68
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 08:49:19 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5B8fPJe018926; Tue, 11 Jun 2019 10:49:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=9AbO49MjgUceqcdV8z8o4qDhmBQpzXQsokcdpfbVHAk=;
 b=gZvmEBUPaSQwxkeDVVAwPx0GrcwcqgrfGzG3DVcw8F9K9nJcYEJQN5t72JzScebxOiqA
 LNPui5CQ4KFx7OTTdFGRbHOl9VCaalkg86DOND2tFRUuSMrU4lcm+GmCeV77o2KLSup3
 XFLtCEYRQAkR/bp3WixE++WGBrJ7xXS7CwgE+5fO5XAjXKlm0nNhC6eYHeLbITWbY03d
 PkJmoFFG0Zb7syVRvrZR7dUaIZ/DWwRPlHXYqsBWIZHETqfnOBauCASB8x1EynmWVFZ1
 w6ffKvzqNBQOet9qpNd9laKow+NundDzeIYssRN7QZ15uuJF5qshzMv5ugdjIjilfXOO gw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t26rm8tjr-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 11 Jun 2019 10:49:04 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F06B43A;
 Tue, 11 Jun 2019 08:49:03 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CAF622482;
 Tue, 11 Jun 2019 08:49:03 +0000 (GMT)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 11 Jun
 2019 10:49:03 +0200
Received: from localhost (10.201.23.19) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 11 Jun 2019 10:49:03
 +0200
From: Hugues Fruchet <hugues.fruchet@st.com>
To: Alexandre Torgue <alexandre.torgue@st.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Sakari Ailus
 <sakari.ailus@linux.intel.com>
Subject: [PATCH v2 1/3] media: stm32-dcmi: improve sensor subdev naming
Date: Tue, 11 Jun 2019 10:48:30 +0200
Message-ID: <1560242912-17138-2-git-send-email-hugues.fruchet@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560242912-17138-1-git-send-email-hugues.fruchet@st.com>
References: <1560242912-17138-1-git-send-email-hugues.fruchet@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.19]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-11_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_014916_648488_6053021B 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mickael GUENE <mickael.guene@st.com>, linux-kernel@vger.kernel.org,
 Philippe CORNU <philippe.cornu@st.com>, Yannick Fertre <yannick.fertre@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, Hugues
 Fruchet <hugues.fruchet@st.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new "sensor" field to dcmi struct instead of
reusing entity->subdev to address sensor subdev.

Signed-off-by: Hugues Fruchet <hugues.fruchet@st.com>
---
 drivers/media/platform/stm32/stm32-dcmi.c | 37 ++++++++++++++++---------------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
index b9dad0a..7a4d559 100644
--- a/drivers/media/platform/stm32/stm32-dcmi.c
+++ b/drivers/media/platform/stm32/stm32-dcmi.c
@@ -151,6 +151,7 @@ struct stm32_dcmi {
 	unsigned int			num_of_sd_framesizes;
 	struct dcmi_framesize		sd_framesize;
 	struct v4l2_rect		sd_bounds;
+	struct v4l2_subdev		*sensor;
 
 	/* Protect this data structure */
 	struct mutex			lock;
@@ -595,7 +596,7 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
 	}
 
 	/* Enable stream on the sub device */
-	ret = v4l2_subdev_call(dcmi->entity.subdev, video, s_stream, 1);
+	ret = v4l2_subdev_call(dcmi->sensor, video, s_stream, 1);
 	if (ret && ret != -ENOIOCTLCMD) {
 		dev_err(dcmi->dev, "%s: Failed to start streaming, subdev streamon error",
 			__func__);
@@ -685,7 +686,7 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
 	return 0;
 
 err_subdev_streamoff:
-	v4l2_subdev_call(dcmi->entity.subdev, video, s_stream, 0);
+	v4l2_subdev_call(dcmi->sensor, video, s_stream, 0);
 
 err_pm_put:
 	pm_runtime_put(dcmi->dev);
@@ -713,7 +714,7 @@ static void dcmi_stop_streaming(struct vb2_queue *vq)
 	int ret;
 
 	/* Disable stream on the sub device */
-	ret = v4l2_subdev_call(dcmi->entity.subdev, video, s_stream, 0);
+	ret = v4l2_subdev_call(dcmi->sensor, video, s_stream, 0);
 	if (ret && ret != -ENOIOCTLCMD)
 		dev_err(dcmi->dev, "%s: Failed to stop streaming, subdev streamoff error (%d)\n",
 			__func__, ret);
@@ -857,7 +858,7 @@ static int dcmi_try_fmt(struct stm32_dcmi *dcmi, struct v4l2_format *f,
 	}
 
 	v4l2_fill_mbus_format(&format.format, pix, sd_fmt->mbus_code);
-	ret = v4l2_subdev_call(dcmi->entity.subdev, pad, set_fmt,
+	ret = v4l2_subdev_call(dcmi->sensor, pad, set_fmt,
 			       &pad_cfg, &format);
 	if (ret < 0)
 		return ret;
@@ -934,7 +935,7 @@ static int dcmi_set_fmt(struct stm32_dcmi *dcmi, struct v4l2_format *f)
 	mf->width = sd_framesize.width;
 	mf->height = sd_framesize.height;
 
-	ret = v4l2_subdev_call(dcmi->entity.subdev, pad,
+	ret = v4l2_subdev_call(dcmi->sensor, pad,
 			       set_fmt, NULL, &format);
 	if (ret < 0)
 		return ret;
@@ -991,7 +992,7 @@ static int dcmi_get_sensor_format(struct stm32_dcmi *dcmi,
 	};
 	int ret;
 
-	ret = v4l2_subdev_call(dcmi->entity.subdev, pad, get_fmt, NULL, &fmt);
+	ret = v4l2_subdev_call(dcmi->sensor, pad, get_fmt, NULL, &fmt);
 	if (ret)
 		return ret;
 
@@ -1020,7 +1021,7 @@ static int dcmi_set_sensor_format(struct stm32_dcmi *dcmi,
 	}
 
 	v4l2_fill_mbus_format(&format.format, pix, sd_fmt->mbus_code);
-	ret = v4l2_subdev_call(dcmi->entity.subdev, pad, set_fmt,
+	ret = v4l2_subdev_call(dcmi->sensor, pad, set_fmt,
 			       &pad_cfg, &format);
 	if (ret < 0)
 		return ret;
@@ -1043,7 +1044,7 @@ static int dcmi_get_sensor_bounds(struct stm32_dcmi *dcmi,
 	/*
 	 * Get sensor bounds first
 	 */
-	ret = v4l2_subdev_call(dcmi->entity.subdev, pad, get_selection,
+	ret = v4l2_subdev_call(dcmi->sensor, pad, get_selection,
 			       NULL, &bounds);
 	if (!ret)
 		*r = bounds.r;
@@ -1224,7 +1225,7 @@ static int dcmi_enum_framesizes(struct file *file, void *fh,
 
 	fse.code = sd_fmt->mbus_code;
 
-	ret = v4l2_subdev_call(dcmi->entity.subdev, pad, enum_frame_size,
+	ret = v4l2_subdev_call(dcmi->sensor, pad, enum_frame_size,
 			       NULL, &fse);
 	if (ret)
 		return ret;
@@ -1241,7 +1242,7 @@ static int dcmi_g_parm(struct file *file, void *priv,
 {
 	struct stm32_dcmi *dcmi = video_drvdata(file);
 
-	return v4l2_g_parm_cap(video_devdata(file), dcmi->entity.subdev, p);
+	return v4l2_g_parm_cap(video_devdata(file), dcmi->sensor, p);
 }
 
 static int dcmi_s_parm(struct file *file, void *priv,
@@ -1249,7 +1250,7 @@ static int dcmi_s_parm(struct file *file, void *priv,
 {
 	struct stm32_dcmi *dcmi = video_drvdata(file);
 
-	return v4l2_s_parm_cap(video_devdata(file), dcmi->entity.subdev, p);
+	return v4l2_s_parm_cap(video_devdata(file), dcmi->sensor, p);
 }
 
 static int dcmi_enum_frameintervals(struct file *file, void *fh,
@@ -1271,7 +1272,7 @@ static int dcmi_enum_frameintervals(struct file *file, void *fh,
 
 	fie.code = sd_fmt->mbus_code;
 
-	ret = v4l2_subdev_call(dcmi->entity.subdev, pad,
+	ret = v4l2_subdev_call(dcmi->sensor, pad,
 			       enum_frame_interval, NULL, &fie);
 	if (ret)
 		return ret;
@@ -1291,7 +1292,7 @@ MODULE_DEVICE_TABLE(of, stm32_dcmi_of_match);
 static int dcmi_open(struct file *file)
 {
 	struct stm32_dcmi *dcmi = video_drvdata(file);
-	struct v4l2_subdev *sd = dcmi->entity.subdev;
+	struct v4l2_subdev *sd = dcmi->sensor;
 	int ret;
 
 	if (mutex_lock_interruptible(&dcmi->lock))
@@ -1322,7 +1323,7 @@ static int dcmi_open(struct file *file)
 static int dcmi_release(struct file *file)
 {
 	struct stm32_dcmi *dcmi = video_drvdata(file);
-	struct v4l2_subdev *sd = dcmi->entity.subdev;
+	struct v4l2_subdev *sd = dcmi->sensor;
 	bool fh_singular;
 	int ret;
 
@@ -1433,7 +1434,7 @@ static int dcmi_formats_init(struct stm32_dcmi *dcmi)
 {
 	const struct dcmi_format *sd_fmts[ARRAY_SIZE(dcmi_formats)];
 	unsigned int num_fmts = 0, i, j;
-	struct v4l2_subdev *subdev = dcmi->entity.subdev;
+	struct v4l2_subdev *subdev = dcmi->sensor;
 	struct v4l2_subdev_mbus_code_enum mbus_code = {
 		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
 	};
@@ -1479,7 +1480,7 @@ static int dcmi_formats_init(struct stm32_dcmi *dcmi)
 static int dcmi_framesizes_init(struct stm32_dcmi *dcmi)
 {
 	unsigned int num_fsize = 0;
-	struct v4l2_subdev *subdev = dcmi->entity.subdev;
+	struct v4l2_subdev *subdev = dcmi->sensor;
 	struct v4l2_subdev_frame_size_enum fse = {
 		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
 		.code = dcmi->sd_format->mbus_code,
@@ -1526,7 +1527,7 @@ static int dcmi_graph_notify_complete(struct v4l2_async_notifier *notifier)
 	struct stm32_dcmi *dcmi = notifier_to_dcmi(notifier);
 	int ret;
 
-	dcmi->vdev->ctrl_handler = dcmi->entity.subdev->ctrl_handler;
+	dcmi->vdev->ctrl_handler = dcmi->sensor->ctrl_handler;
 	ret = dcmi_formats_init(dcmi);
 	if (ret) {
 		dev_err(dcmi->dev, "No supported mediabus format found\n");
@@ -1582,7 +1583,7 @@ static int dcmi_graph_notify_bound(struct v4l2_async_notifier *notifier,
 
 	dev_dbg(dcmi->dev, "Subdev %s bound\n", subdev->name);
 
-	dcmi->entity.subdev = subdev;
+	dcmi->sensor = subdev;
 
 	return 0;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
