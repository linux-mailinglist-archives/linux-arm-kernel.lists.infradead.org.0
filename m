Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E431E471A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3XvTN6HlxUdPG8A1MbIzSvwVhrhZt7DhujuA08eqHGw=; b=bPecYuQgoniEwV
	dxkad3E9XsFkt04rWQyHyfpyznmHik9Z5RMZC0r9v5HQIEXUngd/EJ+t1bFdujazTEGNm6AKov7wk
	vAjN5sKYRIewuSCuJbZLLt0loqoKIyyMuLzFu9afs1tXs24e4yD6C7Fj1xvZYZIavcrFIMDBxizaT
	y2Kw8DKbkNUkMFR6yVaNbQ4b1pl1BmT5/AHLt1t07ohEACZMdbX/bTYbjyHaa972Nt6PeDbbhArUP
	vTNm0KdMX29K3RutIDT3CwBMw1bzkvvYP2RuTj+ROvpCBltHI05hz0DV8f2ETNgFD5LsnuT7rhscm
	c/FzvAdy4wRsxwcci46A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdxnH-0001Bh-Ve; Wed, 27 May 2020 15:16:35 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdxn7-0001BF-Tt
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 15:16:27 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04RF88gA021896; Wed, 27 May 2020 17:16:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=P+9oKFVvctxteNakurd2HftE8vay3BJJGfZ7uNvjGoY=;
 b=ntTTyD9qpXKInxrhvJk9S0iljCU5qaI/yKj0KgZiYEeLnCyFOQq7bNPzi7WTnSYeIqUY
 JL/Cs06ovMR0iYAJamwO8dho58HQvPXgRyGoXkMqSDNSIaJsCH9PN2WBPYaLRJ/ZWTpq
 6+FyEbEKTaV2esxVpQgIP0srJ5IxP5mQ2yFc3LymRYnsfLFqiSbShD+kYH2KIiFuljjn
 NdkYWFLsiPqZR6UjjvwqZDak7641YTf5dcceMCOAMW8loK3M4jsA/w0Tk97WdQKRhgwR
 q5OdvXy8enpe8dfCjdW8Lx1ccbEPKtcPAUUqhlLOTOxm/i/NJ3ddBNCQtHhv3VOJP8vL 1w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 319mfaj603-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 27 May 2020 17:16:18 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B2F4D100034;
 Wed, 27 May 2020 17:16:16 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 99EAE2C02D7;
 Wed, 27 May 2020 17:16:16 +0200 (CEST)
Received: from localhost (10.75.127.45) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 27 May 2020 17:16:15
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <hugues.fruchet@st.com>, <mchehab@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>
Subject: [PATCH] media: stm32-dcmi: Set minimum cpufreq requirement
Date: Wed, 27 May 2020 17:16:13 +0200
Message-ID: <20200527151613.16083-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-27_03:2020-05-27,
 2020-05-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_081626_438992_E2A32A3C 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 valentin.schneider@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Before start streaming set cpufreq minimum frequency requirement.
The cpufreq governor will adapt the frequencies and we will have
no latency for handling interrupts.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 drivers/media/platform/stm32/stm32-dcmi.c | 29 ++++++++++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
index b8931490b83b..97c342351569 100644
--- a/drivers/media/platform/stm32/stm32-dcmi.c
+++ b/drivers/media/platform/stm32/stm32-dcmi.c
@@ -13,6 +13,7 @@
 
 #include <linux/clk.h>
 #include <linux/completion.h>
+#include <linux/cpufreq.h>
 #include <linux/delay.h>
 #include <linux/dmaengine.h>
 #include <linux/init.h>
@@ -99,6 +100,8 @@ enum state {
 
 #define OVERRUN_ERROR_THRESHOLD	3
 
+#define DCMI_MIN_FREQ	650000 /* in KHz */
+
 struct dcmi_graph_entity {
 	struct v4l2_async_subdev asd;
 
@@ -173,6 +176,10 @@ struct stm32_dcmi {
 	struct media_device		mdev;
 	struct media_pad		vid_cap_pad;
 	struct media_pipeline		pipeline;
+
+	/* CPU freq contraint */
+	struct cpufreq_policy		*policy;
+	struct freq_qos_request		qos_req;
 };
 
 static inline struct stm32_dcmi *notifier_to_dcmi(struct v4l2_async_notifier *n)
@@ -736,11 +743,20 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
 		goto err_release_buffers;
 	}
 
+	if (dcmi->policy) {
+		ret = freq_qos_add_request(&dcmi->policy->constraints,
+					   &dcmi->qos_req, FREQ_QOS_MIN,
+					   DCMI_MIN_FREQ);
+
+		if (ret < 0)
+			goto err_pm_put;
+	}
+
 	ret = media_pipeline_start(&dcmi->vdev->entity, &dcmi->pipeline);
 	if (ret < 0) {
 		dev_err(dcmi->dev, "%s: Failed to start streaming, media pipeline start error (%d)\n",
 			__func__, ret);
-		goto err_pm_put;
+		goto err_drop_qos;
 	}
 
 	ret = dcmi_pipeline_start(dcmi);
@@ -835,6 +851,9 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
 err_media_pipeline_stop:
 	media_pipeline_stop(&dcmi->vdev->entity);
 
+err_drop_qos:
+	if (dcmi->policy)
+		freq_qos_remove_request(&dcmi->qos_req);
 err_pm_put:
 	pm_runtime_put(dcmi->dev);
 
@@ -863,6 +882,9 @@ static void dcmi_stop_streaming(struct vb2_queue *vq)
 
 	media_pipeline_stop(&dcmi->vdev->entity);
 
+	if (dcmi->policy)
+		freq_qos_remove_request(&dcmi->qos_req);
+
 	spin_lock_irq(&dcmi->irqlock);
 
 	/* Disable interruptions */
@@ -2020,6 +2042,8 @@ static int dcmi_probe(struct platform_device *pdev)
 		goto err_cleanup;
 	}
 
+	dcmi->policy = cpufreq_cpu_get(0);
+
 	dev_info(&pdev->dev, "Probe done\n");
 
 	platform_set_drvdata(pdev, dcmi);
@@ -2049,6 +2073,9 @@ static int dcmi_remove(struct platform_device *pdev)
 
 	pm_runtime_disable(&pdev->dev);
 
+	if (dcmi->policy)
+		cpufreq_cpu_put(dcmi->policy);
+
 	v4l2_async_notifier_unregister(&dcmi->notifier);
 	v4l2_async_notifier_cleanup(&dcmi->notifier);
 	media_entity_cleanup(&dcmi->vdev->entity);
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
