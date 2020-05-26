Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3B91E2537
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 17:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80ClJHOF6XfmP/b7b0SaHsVsVf2bt/q1kmEziiuVh5w=; b=kFH/OFCjrxSWEt
	HOp+VPeobW9I+z5oLvmTm5ZAHzuyuTaYv6vyXk8TeKr7s8Q9YAKJwZ0tv/xVkcS8dXrVxzTDcrssj
	rAYDhFn9y1yeR75crmig47os6N+WYpcAItAuzYS5xp7sC4FYut3Wg+YrDMpCMxa8PjgRuX/40H8Ib
	XbkRBvfXz9JLCrMxyhqm1Hmx4HiF96wph+8aM3LVYVXpVsdQhKTOGtx9v4qqtpUEnvOr+wA3wEfe6
	X4n37hgGygo5obmxQb+2a/7XxDouY5kcySaXoCxKh04gAfXeqb3MX2edwVKaGTEDZoqVpIUdMiGpp
	7BKx08T/Jwe1RXdSADUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdbKY-0000bi-M9; Tue, 26 May 2020 15:17:26 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdbJq-0000AS-4d
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 15:16:44 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04QFDG8V007562; Tue, 26 May 2020 17:16:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=f15cWn5l7+qnePYQkKeXeKN4S4ucsruNAsfQ5NRJgnw=;
 b=zpX6gM+963osYSTNm0NetVZRMoM9e8ye4AfJof65ff2WaNs3AZWKAyCrGWZ0mKNa0avq
 M7epb9sAZb7vr4G3rGWmmRxm0NJeqUtG6ytTtelsiMqU2jglLeE4cRICnyvF5Kwyk+QZ
 tRJ3PGRxR0XyqVESMIk1WuoNpUriT4FZmybFnruS3bZJRjXOstoRO4YlqGTAxZtQjZ+J
 /Q9riOB8lFLuumg1MJkP2ytirbUl9PF/y71J+NeNorKQorPZApwmkq85xXZIzEeyFOUC
 vg4mNSYsJRSPFUJp2nUdLUEGN0JLxixtZ8ogBlFJgTPT0Lrxjrz+4h1bjyrOezGuEINn rg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316tqh04wa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 26 May 2020 17:16:29 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0AB3410002A;
 Tue, 26 May 2020 17:16:29 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EE0F02C1DA0;
 Tue, 26 May 2020 17:16:28 +0200 (CEST)
Received: from localhost (10.75.127.50) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 26 May 2020 17:16:28
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <rjw@rjwysocki.net>, <viresh.kumar@linaro.org>, <hugues.fruchet@st.com>,
 <mchehab@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <pavel@ucw.cz>, <len.brown@intel.com>,
 <valentin.schneider@arm.com>, <vincent.guittot@linaro.org>
Subject: [RFC 3/3] media: stm32-dcmi: Inform cpufreq governors about cpu load
 needs
Date: Tue, 26 May 2020 17:16:19 +0200
Message-ID: <20200526151619.8779-4-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200526151619.8779-1-benjamin.gaignard@st.com>
References: <20200526151619.8779-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-26_02:2020-05-26,
 2020-05-26 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_081642_457657_1CCF2350 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When start streaming the CPU load could remain very low because almost
all the capture pipeline is done in hardware (i.e. without using the CPU)
and let believe to cpufreq governor that it could use lower frequencies.
If the governor decides to use a too low frequency that becomes a problem
when we need to acknowledge the interrupt during the blanking time.

To avoid this problem, DCMI driver informs the cpufreq governors by adding
a cpufreq minimum load QoS resquest.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 drivers/media/platform/stm32/stm32-dcmi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
index b8931490b83b..774f2506b2f1 100644
--- a/drivers/media/platform/stm32/stm32-dcmi.c
+++ b/drivers/media/platform/stm32/stm32-dcmi.c
@@ -24,6 +24,7 @@
 #include <linux/of_graph.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
+#include <linux/pm_qos.h>
 #include <linux/pm_runtime.h>
 #include <linux/reset.h>
 #include <linux/videodev2.h>
@@ -173,6 +174,8 @@ struct stm32_dcmi {
 	struct media_device		mdev;
 	struct media_pad		vid_cap_pad;
 	struct media_pipeline		pipeline;
+
+	struct pm_qos_request		qos_request;
 };
 
 static inline struct stm32_dcmi *notifier_to_dcmi(struct v4l2_async_notifier *n)
@@ -827,6 +830,9 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
 	else
 		reg_set(dcmi->regs, DCMI_IER, IT_OVR | IT_ERR);
 
+	cpufreq_minload_qos_add_request(&dcmi->qos_request,
+					CPUFREQ_GOV_QOS_MIN_LOAD_MAX_VALUE);
+
 	return 0;
 
 err_pipeline_stop:
@@ -859,6 +865,8 @@ static void dcmi_stop_streaming(struct vb2_queue *vq)
 	struct stm32_dcmi *dcmi = vb2_get_drv_priv(vq);
 	struct dcmi_buf *buf, *node;
 
+	cpufreq_minload_qos_remove_request(&dcmi->qos_request);
+
 	dcmi_pipeline_stop(dcmi);
 
 	media_pipeline_stop(&dcmi->vdev->entity);
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
