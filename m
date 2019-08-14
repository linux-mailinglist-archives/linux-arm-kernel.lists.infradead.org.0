Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E671F8D555
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 15:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lkVhneTIuwCFPmBLd8ciSDYL10ZZJnYADQweCW+HI6I=; b=Mek/hExjtGj+lS
	s75MqBIzd291ZIch30X/IMV9BU8L0sFvSwpOUatQwFzCr6zL1DlTR1EAsU/PLyya2TA1abBCy/gEo
	FqP2jhd6G2IOP1qa4eMTneW5QFBL+NL36AhFvMZaCsw4ZWVbgZrSPdhhRdr9FD57anjiRYoV2nBHG
	mn5cyvfUQJ6ALGnxrgLShd59upB4G2eYpZMCoTY/ePGjAiP2nICmcpP6ZnGZR/LYH1XgzHEecNhDZ
	F8cxQe+pEhIYMqsBko8sKC5S4x1m7J2N1h1b2etI+TK/WzYTMi8vVALCjalpCRo9xErzsFRSRgUkf
	MLkS61YUPQC9t7Zv+Ggw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxteS-0003nH-6N; Wed, 14 Aug 2019 13:49:20 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxteF-0003lA-K7
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 13:49:09 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7EDkpEU005599; Wed, 14 Aug 2019 15:48:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=17uDe87c50tKQgdxVxYmeWeDXo+AdHkkYcqYlgcRwu4=;
 b=Xn1MjXalTICfjjmlEl6TW7qHPbJ45Zp7R9U2o9mWObvK1D1idr4wkShKAw5Ny5XdgKo4
 8lWSaZ5AhNDkRD6MHlAG0LVCikkcn4K4I4vO0CknzqZR/FmVEuzdrzqQ9XmerPPM1v3W
 V34A/JQFFT52ONOjrVC2BAkTJ+jmgSnYS9N0z2UezE+R/ZH4sMRcrd6IG722yEgWvKK7
 Ivb4qOUf6Kt5n45UKyQAr0nRt1lOqxnocBGAWxBqI9nNdVHsA9Sn/MKi8orBZWvR2R4Y
 qXT17yyO5ctMMVOoQuXLmYd3aKWWhGOosxzkvydq5ZUDoXS1v0ufOHg664cQ3JrwJUtY pg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2u9k2a64rm-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 14 Aug 2019 15:48:59 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 627F234;
 Wed, 14 Aug 2019 13:48:58 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 584572FFE8F;
 Wed, 14 Aug 2019 15:48:58 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 14 Aug
 2019 15:48:58 +0200
Received: from localhost (10.201.23.19) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 14 Aug 2019 15:48:57
 +0200
From: Hugues Fruchet <hugues.fruchet@st.com>
To: Alexandre Torgue <alexandre.torgue@st.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Sakari Ailus
 <sakari.ailus@linux.intel.com>
Subject: [PATCH v6 1/4] media: stm32-dcmi: improve sensor subdev naming
Date: Wed, 14 Aug 2019 15:48:50 +0200
Message-ID: <1565790533-10043-2-git-send-email-hugues.fruchet@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565790533-10043-1-git-send-email-hugues.fruchet@st.com>
References: <1565790533-10043-1-git-send-email-hugues.fruchet@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.19]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-14_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_064908_116552_E6D3623A 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Rename "subdev" entity struct field to "source"
to prepare for several subdev support.
Move asd field on top of entity struct.

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Signed-off-by: Hugues Fruchet <hugues.fruchet@st.com>
---
 drivers/media/platform/stm32/stm32-dcmi.c | 46 +++++++++++++++----------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
index b9dad0a..b462f71 100644
--- a/drivers/media/platform/stm32/stm32-dcmi.c
+++ b/drivers/media/platform/stm32/stm32-dcmi.c
@@ -100,10 +100,10 @@ enum state {
 #define OVERRUN_ERROR_THRESHOLD	3
 
 struct dcmi_graph_entity {
-	struct device_node *node;
-
 	struct v4l2_async_subdev asd;
-	struct v4l2_subdev *subdev;
+
+	struct device_node *remote_node;
+	struct v4l2_subdev *source;
 };
 
 struct dcmi_format {
@@ -595,7 +595,7 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
 	}
 
 	/* Enable stream on the sub device */
-	ret = v4l2_subdev_call(dcmi->entity.subdev, video, s_stream, 1);
+	ret = v4l2_subdev_call(dcmi->entity.source, video, s_stream, 1);
 	if (ret && ret != -ENOIOCTLCMD) {
 		dev_err(dcmi->dev, "%s: Failed to start streaming, subdev streamon error",
 			__func__);
@@ -685,7 +685,7 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
 	return 0;
 
 err_subdev_streamoff:
-	v4l2_subdev_call(dcmi->entity.subdev, video, s_stream, 0);
+	v4l2_subdev_call(dcmi->entity.source, video, s_stream, 0);
 
 err_pm_put:
 	pm_runtime_put(dcmi->dev);
@@ -713,7 +713,7 @@ static void dcmi_stop_streaming(struct vb2_queue *vq)
 	int ret;
 
 	/* Disable stream on the sub device */
-	ret = v4l2_subdev_call(dcmi->entity.subdev, video, s_stream, 0);
+	ret = v4l2_subdev_call(dcmi->entity.source, video, s_stream, 0);
 	if (ret && ret != -ENOIOCTLCMD)
 		dev_err(dcmi->dev, "%s: Failed to stop streaming, subdev streamoff error (%d)\n",
 			__func__, ret);
@@ -857,7 +857,7 @@ static int dcmi_try_fmt(struct stm32_dcmi *dcmi, struct v4l2_format *f,
 	}
 
 	v4l2_fill_mbus_format(&format.format, pix, sd_fmt->mbus_code);
-	ret = v4l2_subdev_call(dcmi->entity.subdev, pad, set_fmt,
+	ret = v4l2_subdev_call(dcmi->entity.source, pad, set_fmt,
 			       &pad_cfg, &format);
 	if (ret < 0)
 		return ret;
@@ -934,7 +934,7 @@ static int dcmi_set_fmt(struct stm32_dcmi *dcmi, struct v4l2_format *f)
 	mf->width = sd_framesize.width;
 	mf->height = sd_framesize.height;
 
-	ret = v4l2_subdev_call(dcmi->entity.subdev, pad,
+	ret = v4l2_subdev_call(dcmi->entity.source, pad,
 			       set_fmt, NULL, &format);
 	if (ret < 0)
 		return ret;
@@ -991,7 +991,7 @@ static int dcmi_get_sensor_format(struct stm32_dcmi *dcmi,
 	};
 	int ret;
 
-	ret = v4l2_subdev_call(dcmi->entity.subdev, pad, get_fmt, NULL, &fmt);
+	ret = v4l2_subdev_call(dcmi->entity.source, pad, get_fmt, NULL, &fmt);
 	if (ret)
 		return ret;
 
@@ -1020,7 +1020,7 @@ static int dcmi_set_sensor_format(struct stm32_dcmi *dcmi,
 	}
 
 	v4l2_fill_mbus_format(&format.format, pix, sd_fmt->mbus_code);
-	ret = v4l2_subdev_call(dcmi->entity.subdev, pad, set_fmt,
+	ret = v4l2_subdev_call(dcmi->entity.source, pad, set_fmt,
 			       &pad_cfg, &format);
 	if (ret < 0)
 		return ret;
@@ -1043,7 +1043,7 @@ static int dcmi_get_sensor_bounds(struct stm32_dcmi *dcmi,
 	/*
 	 * Get sensor bounds first
 	 */
-	ret = v4l2_subdev_call(dcmi->entity.subdev, pad, get_selection,
+	ret = v4l2_subdev_call(dcmi->entity.source, pad, get_selection,
 			       NULL, &bounds);
 	if (!ret)
 		*r = bounds.r;
@@ -1224,7 +1224,7 @@ static int dcmi_enum_framesizes(struct file *file, void *fh,
 
 	fse.code = sd_fmt->mbus_code;
 
-	ret = v4l2_subdev_call(dcmi->entity.subdev, pad, enum_frame_size,
+	ret = v4l2_subdev_call(dcmi->entity.source, pad, enum_frame_size,
 			       NULL, &fse);
 	if (ret)
 		return ret;
@@ -1241,7 +1241,7 @@ static int dcmi_g_parm(struct file *file, void *priv,
 {
 	struct stm32_dcmi *dcmi = video_drvdata(file);
 
-	return v4l2_g_parm_cap(video_devdata(file), dcmi->entity.subdev, p);
+	return v4l2_g_parm_cap(video_devdata(file), dcmi->entity.source, p);
 }
 
 static int dcmi_s_parm(struct file *file, void *priv,
@@ -1249,7 +1249,7 @@ static int dcmi_s_parm(struct file *file, void *priv,
 {
 	struct stm32_dcmi *dcmi = video_drvdata(file);
 
-	return v4l2_s_parm_cap(video_devdata(file), dcmi->entity.subdev, p);
+	return v4l2_s_parm_cap(video_devdata(file), dcmi->entity.source, p);
 }
 
 static int dcmi_enum_frameintervals(struct file *file, void *fh,
@@ -1271,7 +1271,7 @@ static int dcmi_enum_frameintervals(struct file *file, void *fh,
 
 	fie.code = sd_fmt->mbus_code;
 
-	ret = v4l2_subdev_call(dcmi->entity.subdev, pad,
+	ret = v4l2_subdev_call(dcmi->entity.source, pad,
 			       enum_frame_interval, NULL, &fie);
 	if (ret)
 		return ret;
@@ -1291,7 +1291,7 @@ MODULE_DEVICE_TABLE(of, stm32_dcmi_of_match);
 static int dcmi_open(struct file *file)
 {
 	struct stm32_dcmi *dcmi = video_drvdata(file);
-	struct v4l2_subdev *sd = dcmi->entity.subdev;
+	struct v4l2_subdev *sd = dcmi->entity.source;
 	int ret;
 
 	if (mutex_lock_interruptible(&dcmi->lock))
@@ -1322,7 +1322,7 @@ static int dcmi_open(struct file *file)
 static int dcmi_release(struct file *file)
 {
 	struct stm32_dcmi *dcmi = video_drvdata(file);
-	struct v4l2_subdev *sd = dcmi->entity.subdev;
+	struct v4l2_subdev *sd = dcmi->entity.source;
 	bool fh_singular;
 	int ret;
 
@@ -1433,7 +1433,7 @@ static int dcmi_formats_init(struct stm32_dcmi *dcmi)
 {
 	const struct dcmi_format *sd_fmts[ARRAY_SIZE(dcmi_formats)];
 	unsigned int num_fmts = 0, i, j;
-	struct v4l2_subdev *subdev = dcmi->entity.subdev;
+	struct v4l2_subdev *subdev = dcmi->entity.source;
 	struct v4l2_subdev_mbus_code_enum mbus_code = {
 		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
 	};
@@ -1479,7 +1479,7 @@ static int dcmi_formats_init(struct stm32_dcmi *dcmi)
 static int dcmi_framesizes_init(struct stm32_dcmi *dcmi)
 {
 	unsigned int num_fsize = 0;
-	struct v4l2_subdev *subdev = dcmi->entity.subdev;
+	struct v4l2_subdev *subdev = dcmi->entity.source;
 	struct v4l2_subdev_frame_size_enum fse = {
 		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
 		.code = dcmi->sd_format->mbus_code,
@@ -1526,7 +1526,7 @@ static int dcmi_graph_notify_complete(struct v4l2_async_notifier *notifier)
 	struct stm32_dcmi *dcmi = notifier_to_dcmi(notifier);
 	int ret;
 
-	dcmi->vdev->ctrl_handler = dcmi->entity.subdev->ctrl_handler;
+	dcmi->vdev->ctrl_handler = dcmi->entity.source->ctrl_handler;
 	ret = dcmi_formats_init(dcmi);
 	if (ret) {
 		dev_err(dcmi->dev, "No supported mediabus format found\n");
@@ -1582,7 +1582,7 @@ static int dcmi_graph_notify_bound(struct v4l2_async_notifier *notifier,
 
 	dev_dbg(dcmi->dev, "Subdev %s bound\n", subdev->name);
 
-	dcmi->entity.subdev = subdev;
+	dcmi->entity.source = subdev;
 
 	return 0;
 }
@@ -1608,7 +1608,7 @@ static int dcmi_graph_parse(struct stm32_dcmi *dcmi, struct device_node *node)
 		return -EINVAL;
 
 	/* Remote node to connect */
-	dcmi->entity.node = remote;
+	dcmi->entity.remote_node = remote;
 	dcmi->entity.asd.match_type = V4L2_ASYNC_MATCH_FWNODE;
 	dcmi->entity.asd.match.fwnode = of_fwnode_handle(remote);
 	return 0;
@@ -1631,7 +1631,7 @@ static int dcmi_graph_init(struct stm32_dcmi *dcmi)
 					     &dcmi->entity.asd);
 	if (ret) {
 		dev_err(dcmi->dev, "Failed to add subdev notifier\n");
-		of_node_put(dcmi->entity.node);
+		of_node_put(dcmi->entity.remote_node);
 		return ret;
 	}
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
