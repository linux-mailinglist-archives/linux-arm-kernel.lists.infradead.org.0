Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E5389CD5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 13:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDXqyEGrmONckPDn/tH4yBc/8DGLOA6eGPgGIRwYlHc=; b=chOap92NN9s6BZ
	RPd9eB4hhl6JDpK/VNKHUfx6OpHWWXHPdVcKsTvEcNsnrerbLk9MkBWTr/j5dEkazhxx0AEHVHaWv
	KjwqFDyvHHfMVlHaiuKqQARHmC+L9gPRVb+Cx+oyjXQLlhzQzynOTW3hOvE35IXIQ8RsQrfm94GIY
	l87vYWeZ1BLeei3kDGY1FTgh6kb8xh9I5WaANhpNxaminNabPK/sn2yIUAbaMT7JDn8UocmowqCMa
	vQsoI40wDJW6KA7gEq6BmhPyDUdvIIiEsInLmHtT+73H7CEWxvfXl/isHokX9hEi2Mqv6yBRgymy1
	MpLRVscNAsHSCzML3Xqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx8Ui-0000ds-9i; Mon, 12 Aug 2019 11:28:08 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx8Tf-0008Tp-1J
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 11:27:06 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7CBQqm3009660; Mon, 12 Aug 2019 13:26:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=9gAG+CAZZHcF3V3hKdHbTPGBQpwWjHsPqRQ5LukVjtQ=;
 b=DOCkegW/P1YY1yqA94ng2b31ubp2dRoJVzCF90CBhFEf59mMKpn4S78MuNzl1oa2Ir3N
 YpHLvgnERuXeDTEictr4jCRJ1iVByZx7Exo4yQXCavuufpRqQdc0npW21I6W0WSGQy2l
 93QCwtgrHc7DlSL4hYlpQposmSZFq7EZ2q6wMNdcQB6xqxHVyrjs4RNxRqSZmQSg7yen
 wPsS5Vc9v/YVj6lfQNukDEc5yOgtwlUq+IKQvyWzRFnpLcnDD8cecI3cPHJ2Lz0tJvKU
 BAIel1F5d6l3ayOzSzbzUGyzv2W6ngK7M+Gz/IvZQ6Ttl9ZcKCfvGEr9iWYOjxwheJ/K Wg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2u9mtktbfs-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 12 Aug 2019 13:26:56 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 785DD41;
 Mon, 12 Aug 2019 11:26:55 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 693882F56EB;
 Mon, 12 Aug 2019 13:26:55 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 12 Aug
 2019 13:26:55 +0200
Received: from localhost (10.201.23.19) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 12 Aug 2019 13:26:54
 +0200
From: Hugues Fruchet <hugues.fruchet@st.com>
To: Alexandre Torgue <alexandre.torgue@st.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Sakari Ailus
 <sakari.ailus@linux.intel.com>
Subject: [PATCH v5 2/3] media: stm32-dcmi: add media controller support
Date: Mon, 12 Aug 2019 13:26:45 +0200
Message-ID: <1565609206-27101-3-git-send-email-hugues.fruchet@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565609206-27101-1-git-send-email-hugues.fruchet@st.com>
References: <1565609206-27101-1-git-send-email-hugues.fruchet@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.19]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-12_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_042703_598545_59ECD0CB 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Add media controller support to dcmi in order
to walk within remote subdevices pipeline.

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Signed-off-by: Hugues Fruchet <hugues.fruchet@st.com>
---
 drivers/media/platform/Kconfig            |  2 +-
 drivers/media/platform/stm32/stm32-dcmi.c | 52 ++++++++++++++++++++++++-------
 2 files changed, 41 insertions(+), 13 deletions(-)

diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
index 8a19654..de7e21f 100644
--- a/drivers/media/platform/Kconfig
+++ b/drivers/media/platform/Kconfig
@@ -121,7 +121,7 @@ config VIDEO_S3C_CAMIF
 
 config VIDEO_STM32_DCMI
 	tristate "STM32 Digital Camera Memory Interface (DCMI) support"
-	depends on VIDEO_V4L2 && OF
+	depends on VIDEO_V4L2 && OF && MEDIA_CONTROLLER
 	depends on ARCH_STM32 || COMPILE_TEST
 	select VIDEOBUF2_DMA_CONTIG
 	select V4L2_FWNODE
diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
index b462f71..6f37617 100644
--- a/drivers/media/platform/stm32/stm32-dcmi.c
+++ b/drivers/media/platform/stm32/stm32-dcmi.c
@@ -169,6 +169,9 @@ struct stm32_dcmi {
 
 	/* Ensure DMA operations atomicity */
 	struct mutex			dma_lock;
+
+	struct media_device		mdev;
+	struct media_pad		vid_cap_pad;
 };
 
 static inline struct stm32_dcmi *notifier_to_dcmi(struct v4l2_async_notifier *n)
@@ -1551,14 +1554,6 @@ static int dcmi_graph_notify_complete(struct v4l2_async_notifier *notifier)
 		return ret;
 	}
 
-	ret = video_register_device(dcmi->vdev, VFL_TYPE_GRABBER, -1);
-	if (ret) {
-		dev_err(dcmi->dev, "Failed to register video device\n");
-		return ret;
-	}
-
-	dev_dbg(dcmi->dev, "Device registered as %s\n",
-		video_device_node_name(dcmi->vdev));
 	return 0;
 }
 
@@ -1751,10 +1746,19 @@ static int dcmi_probe(struct platform_device *pdev)
 
 	q = &dcmi->queue;
 
+	dcmi->v4l2_dev.mdev = &dcmi->mdev;
+
+	/* Initialize media device */
+	strscpy(dcmi->mdev.model, DRV_NAME, sizeof(dcmi->mdev.model));
+	snprintf(dcmi->mdev.bus_info, sizeof(dcmi->mdev.bus_info),
+		 "platform:%s", DRV_NAME);
+	dcmi->mdev.dev = &pdev->dev;
+	media_device_init(&dcmi->mdev);
+
 	/* Initialize the top-level structure */
 	ret = v4l2_device_register(&pdev->dev, &dcmi->v4l2_dev);
 	if (ret)
-		goto err_dma_release;
+		goto err_media_device_cleanup;
 
 	dcmi->vdev = video_device_alloc();
 	if (!dcmi->vdev) {
@@ -1774,6 +1778,25 @@ static int dcmi_probe(struct platform_device *pdev)
 				  V4L2_CAP_READWRITE;
 	video_set_drvdata(dcmi->vdev, dcmi);
 
+	/* Media entity pads */
+	dcmi->vid_cap_pad.flags = MEDIA_PAD_FL_SINK;
+	ret = media_entity_pads_init(&dcmi->vdev->entity,
+				     1, &dcmi->vid_cap_pad);
+	if (ret) {
+		dev_err(dcmi->dev, "Failed to init media entity pad\n");
+		goto err_device_release;
+	}
+	dcmi->vdev->entity.flags |= MEDIA_ENT_FL_DEFAULT;
+
+	ret = video_register_device(dcmi->vdev, VFL_TYPE_GRABBER, -1);
+	if (ret) {
+		dev_err(dcmi->dev, "Failed to register video device\n");
+		goto err_media_entity_cleanup;
+	}
+
+	dev_dbg(dcmi->dev, "Device registered as %s\n",
+		video_device_node_name(dcmi->vdev));
+
 	/* Buffer queue */
 	q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 	q->io_modes = VB2_MMAP | VB2_READ | VB2_DMABUF;
@@ -1789,12 +1812,12 @@ static int dcmi_probe(struct platform_device *pdev)
 	ret = vb2_queue_init(q);
 	if (ret < 0) {
 		dev_err(&pdev->dev, "Failed to initialize vb2 queue\n");
-		goto err_device_release;
+		goto err_media_entity_cleanup;
 	}
 
 	ret = dcmi_graph_init(dcmi);
 	if (ret < 0)
-		goto err_device_release;
+		goto err_media_entity_cleanup;
 
 	/* Reset device */
 	ret = reset_control_assert(dcmi->rstc);
@@ -1821,11 +1844,14 @@ static int dcmi_probe(struct platform_device *pdev)
 
 err_cleanup:
 	v4l2_async_notifier_cleanup(&dcmi->notifier);
+err_media_entity_cleanup:
+	media_entity_cleanup(&dcmi->vdev->entity);
 err_device_release:
 	video_device_release(dcmi->vdev);
 err_device_unregister:
 	v4l2_device_unregister(&dcmi->v4l2_dev);
-err_dma_release:
+err_media_device_cleanup:
+	media_device_cleanup(&dcmi->mdev);
 	dma_release_channel(dcmi->dma_chan);
 
 	return ret;
@@ -1839,7 +1865,9 @@ static int dcmi_remove(struct platform_device *pdev)
 
 	v4l2_async_notifier_unregister(&dcmi->notifier);
 	v4l2_async_notifier_cleanup(&dcmi->notifier);
+	media_entity_cleanup(&dcmi->vdev->entity);
 	v4l2_device_unregister(&dcmi->v4l2_dev);
+	media_device_cleanup(&dcmi->mdev);
 
 	dma_release_channel(dcmi->dma_chan);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
