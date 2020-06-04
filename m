Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 507461EE4A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 14:41:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBGLYk3l4tJcgtK1b41rvDsRsk6hG+xWuXrFUPTV9XQ=; b=LixGvaNroEVJ0y
	KRnQplZHX/RtTw4xISBMVMZsPZobuE6BMT4Ms1CdhCpZFniB5Zx6fHfVM3tLGAAZSZiwVvdhfqdiZ
	JVAbcBemGLFsp//EWYx9BqT8MHV7E6l1/3M7LStG6Lg/dnMneuOaNSnCXTDMymuMwxF9ZAx2ophqH
	8szA1ecV+g1iJMny3OTUqtEIsIvxHqKrSbOmxCWjY6tpKG/T6U0xqckpRREfpVp+cPOja/7F4fOsF
	Wb/GxnzEOXQDnlR1b5d5qhFzTZXnt0NDq5Y2H4x24oWlVx3S/CMHzk8vDLsMuMbSSPTsVY49KbMFE
	99poT3q0lDsO1h+3E8Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgpBI-0001mB-V0; Thu, 04 Jun 2020 12:41:12 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgpAL-0000zo-Pz
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 12:40:16 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 054CWQbL014360; Thu, 4 Jun 2020 14:40:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=nOT8wpxhzrsWe8nqVqTn3LV4HPvG+lPubQlfdIwx+yM=;
 b=n43BdgBIcJQdgKwBKWge8kwF3Sko3mEozI+LjJq2rFMzB7X+d/u97bqHsSnhEevUh3+w
 7kXNykjdzrzKLiEPHkG828fysN81KMQ7uLq8//YDP/7d7cZcJnd4OcNcBkBHlIvg0/b7
 UjjRhSJZ301E8pebHWgdDwBt0NQPbq8+b90iFA7P3JS2wwq2zyeHTjWvGtLmi3MKrP33
 47Oxl6j6EqlekwIfqF7vqhjeRbFnUXWhraloN3vjA32tg1/k97hw7/E1wAgnhGKBNMkB
 KYqFlBrJ/bhK5n5W6pEOmAPe7kjFJbfvJJ2a99CzjZqKXgn/OhlwklYtAWVnrd2ZDTbN xA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31bcy0t9gm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 04 Jun 2020 14:40:05 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 78C27100034;
 Thu,  4 Jun 2020 14:40:04 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4EF462BE256;
 Thu,  4 Jun 2020 14:40:04 +0200 (CEST)
Received: from localhost (10.75.127.48) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 4 Jun 2020 14:39:36
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <hugues.fruchet@st.com>, <mchehab@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>
Subject: [PATCH v3 2/3] media: stm32-dcmi: Set minimum cpufreq requirement
Date: Thu, 4 Jun 2020 14:39:31 +0200
Message-ID: <20200604123932.20512-3-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200604123932.20512-1-benjamin.gaignard@st.com>
References: <20200604123932.20512-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-04_10:2020-06-02,
 2020-06-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_054014_142303_4DC779D9 
X-CRM114-Status: GOOD (  21.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
The frequency requirement is retrieved from the device-tree node.

While streaming be notified if the IRQ affinity change thanks to 
irq_affinity_notify callback.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
version 3:
- add a cpumask field to track boosted CPUs
- add irq_affinity_notify callback
- protect cpumask field with a mutex 

 drivers/media/platform/stm32/stm32-dcmi.c | 187 ++++++++++++++++++++++++++++--
 1 file changed, 179 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
index b8931490b83b..fb6ab09eaff0 100644
--- a/drivers/media/platform/stm32/stm32-dcmi.c
+++ b/drivers/media/platform/stm32/stm32-dcmi.c
@@ -13,10 +13,13 @@
 
 #include <linux/clk.h>
 #include <linux/completion.h>
+#include <linux/cpufreq.h>
+#include <linux/cpumask.h>
 #include <linux/delay.h>
 #include <linux/dmaengine.h>
 #include <linux/init.h>
 #include <linux/interrupt.h>
+#include <linux/irq.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -99,6 +102,8 @@ enum state {
 
 #define OVERRUN_ERROR_THRESHOLD	3
 
+static DEFINE_PER_CPU(struct freq_qos_request, qos_req);
+
 struct dcmi_graph_entity {
 	struct v4l2_async_subdev asd;
 
@@ -133,6 +138,7 @@ struct stm32_dcmi {
 	struct resource			*res;
 	struct reset_control		*rstc;
 	int				sequence;
+	int				irq;
 	struct list_head		buffers;
 	struct dcmi_buf			*active;
 
@@ -173,6 +179,11 @@ struct stm32_dcmi {
 	struct media_device		mdev;
 	struct media_pad		vid_cap_pad;
 	struct media_pipeline		pipeline;
+
+	u32				min_frequency;
+	cpumask_var_t			boosted;
+	struct irq_affinity_notify	notify;
+	struct mutex			freq_lock;
 };
 
 static inline struct stm32_dcmi *notifier_to_dcmi(struct v4l2_async_notifier *n)
@@ -722,6 +733,156 @@ static void dcmi_pipeline_stop(struct stm32_dcmi *dcmi)
 	dcmi_pipeline_s_stream(dcmi, 0);
 }
 
+static void dcmi_get_min_frequency(struct stm32_dcmi *dcmi)
+{
+	struct device_node *np = dcmi->mdev.dev->of_node;
+
+	dcmi->min_frequency = FREQ_QOS_MIN_DEFAULT_VALUE;
+
+	of_property_read_u32(np, "st,stm32-dcmi-min-frequency",
+			     &dcmi->min_frequency);
+}
+
+static void dcmi_irq_notifier_notify(struct irq_affinity_notify *notify,
+				     const cpumask_t *mask)
+{
+	struct stm32_dcmi *dcmi = container_of(notify,
+					       struct stm32_dcmi,
+					       notify);
+	struct cpufreq_policy *p;
+	int cpu;
+
+	mutex_lock(&dcmi->freq_lock);
+	/*
+	 * For all boosted CPUs check if it is still the case
+	 * if not remove the request
+	 */
+	for_each_cpu(cpu, dcmi->boosted) {
+		if (cpumask_test_cpu(cpu, mask))
+			continue;
+
+		p = cpufreq_cpu_get(cpu);
+		if (!p)
+			continue;
+
+		freq_qos_remove_request(&per_cpu(qos_req, cpu));
+		cpumask_andnot(dcmi->boosted, dcmi->boosted, p->cpus);
+
+		cpufreq_cpu_put(p);
+	}
+
+	/*
+	 * For CPUs in the mask check if they are boosted if not add
+	 * a request
+	 */
+	for_each_cpu(cpu, mask) {
+		if (cpumask_test_cpu(cpu, dcmi->boosted))
+			continue;
+
+		p = cpufreq_cpu_get(cpu);
+		if (!p)
+			continue;
+
+		freq_qos_add_request(&p->constraints, &per_cpu(qos_req, cpu),
+				     FREQ_QOS_MIN, dcmi->min_frequency);
+		cpumask_or(dcmi->boosted, dcmi->boosted, p->cpus);
+		cpufreq_cpu_put(p);
+	}
+
+	mutex_unlock(&dcmi->freq_lock);
+}
+
+static void dcmi_irq_notifier_release(struct kref *ref)
+{
+	/*
+	 * This is required by affinity notifier. We don't have anything to
+	 * free here.
+	 */
+}
+
+static void dcmi_get_cpu_policy(struct stm32_dcmi *dcmi)
+{
+	struct cpufreq_policy *p;
+	int cpu;
+
+	if (!alloc_cpumask_var(&dcmi->boosted, GFP_KERNEL))
+		return;
+
+	mutex_lock(&dcmi->freq_lock);
+
+	for_each_cpu(cpu, irq_get_affinity_mask(dcmi->irq)) {
+		if (cpumask_test_cpu(cpu, dcmi->boosted))
+			continue;
+
+		p = cpufreq_cpu_get(cpu);
+		if (!p)
+			continue;
+
+		freq_qos_add_request(&p->constraints, &per_cpu(qos_req, cpu),
+				     FREQ_QOS_MIN, FREQ_QOS_MIN_DEFAULT_VALUE);
+
+		cpumask_or(dcmi->boosted, dcmi->boosted, p->cpus);
+
+		cpufreq_cpu_put(p);
+	}
+
+	mutex_unlock(&dcmi->freq_lock);
+}
+
+static void dcmi_put_cpu_policy(struct stm32_dcmi *dcmi)
+{
+	struct cpufreq_policy *p;
+	int cpu;
+
+	mutex_lock(&dcmi->freq_lock);
+
+	for_each_cpu(cpu, irq_get_affinity_mask(dcmi->irq)) {
+		if (!cpumask_test_cpu(cpu, dcmi->boosted))
+			continue;
+
+		p = cpufreq_cpu_get(cpu);
+		if (!p)
+			continue;
+
+		freq_qos_remove_request(&per_cpu(qos_req, cpu));
+		cpumask_andnot(dcmi->boosted, dcmi->boosted, p->cpus);
+
+		cpufreq_cpu_put(p);
+	}
+
+	free_cpumask_var(dcmi->boosted);
+
+	mutex_unlock(&dcmi->freq_lock);
+}
+
+static void dcmi_set_min_frequency(struct stm32_dcmi *dcmi, s32 freq)
+{
+	struct irq_affinity_notify *notify = &dcmi->notify;
+	int cpu;
+
+	mutex_lock(&dcmi->freq_lock);
+
+	for_each_cpu(cpu, irq_get_affinity_mask(dcmi->irq)) {
+		if (!cpumask_test_cpu(cpu, dcmi->boosted))
+			continue;
+
+		if (!freq_qos_request_active(&per_cpu(qos_req, cpu)))
+			continue;
+
+		freq_qos_update_request(&per_cpu(qos_req, cpu), freq);
+	}
+
+	mutex_unlock(&dcmi->freq_lock);
+
+	if (freq != FREQ_QOS_MIN_DEFAULT_VALUE) {
+		notify->notify = dcmi_irq_notifier_notify;
+		notify->release = dcmi_irq_notifier_release;
+		irq_set_affinity_notifier(dcmi->irq, notify);
+	} else {
+		irq_set_affinity_notifier(dcmi->irq, NULL);
+	}
+}
+
 static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
 {
 	struct stm32_dcmi *dcmi = vb2_get_drv_priv(vq);
@@ -736,11 +897,13 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
 		goto err_release_buffers;
 	}
 
+	dcmi_set_min_frequency(dcmi, dcmi->min_frequency);
+
 	ret = media_pipeline_start(&dcmi->vdev->entity, &dcmi->pipeline);
 	if (ret < 0) {
 		dev_err(dcmi->dev, "%s: Failed to start streaming, media pipeline start error (%d)\n",
 			__func__, ret);
-		goto err_pm_put;
+		goto err_drop_qos;
 	}
 
 	ret = dcmi_pipeline_start(dcmi);
@@ -835,7 +998,8 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
 err_media_pipeline_stop:
 	media_pipeline_stop(&dcmi->vdev->entity);
 
-err_pm_put:
+err_drop_qos:
+	dcmi_set_min_frequency(dcmi, FREQ_QOS_MIN_DEFAULT_VALUE);
 	pm_runtime_put(dcmi->dev);
 
 err_release_buffers:
@@ -863,6 +1027,8 @@ static void dcmi_stop_streaming(struct vb2_queue *vq)
 
 	media_pipeline_stop(&dcmi->vdev->entity);
 
+	dcmi_set_min_frequency(dcmi, FREQ_QOS_MIN_DEFAULT_VALUE);
+
 	spin_lock_irq(&dcmi->irqlock);
 
 	/* Disable interruptions */
@@ -1838,7 +2004,6 @@ static int dcmi_probe(struct platform_device *pdev)
 	struct vb2_queue *q;
 	struct dma_chan *chan;
 	struct clk *mclk;
-	int irq;
 	int ret = 0;
 
 	match = of_match_device(of_match_ptr(stm32_dcmi_of_match), &pdev->dev);
@@ -1879,9 +2044,9 @@ static int dcmi_probe(struct platform_device *pdev)
 	dcmi->bus.bus_width = ep.bus.parallel.bus_width;
 	dcmi->bus.data_shift = ep.bus.parallel.data_shift;
 
-	irq = platform_get_irq(pdev, 0);
-	if (irq <= 0)
-		return irq ? irq : -ENXIO;
+	dcmi->irq = platform_get_irq(pdev, 0);
+	if (dcmi->irq <= 0)
+		return dcmi->irq ? dcmi->irq : -ENXIO;
 
 	dcmi->res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	if (!dcmi->res) {
@@ -1895,11 +2060,12 @@ static int dcmi_probe(struct platform_device *pdev)
 		return PTR_ERR(dcmi->regs);
 	}
 
-	ret = devm_request_threaded_irq(&pdev->dev, irq, dcmi_irq_callback,
+	ret = devm_request_threaded_irq(&pdev->dev, dcmi->irq,
+					dcmi_irq_callback,
 					dcmi_irq_thread, IRQF_ONESHOT,
 					dev_name(&pdev->dev), dcmi);
 	if (ret) {
-		dev_err(&pdev->dev, "Unable to request irq %d\n", irq);
+		dev_err(&pdev->dev, "Unable to request irq %d\n", dcmi->irq);
 		return ret;
 	}
 
@@ -2022,6 +2188,9 @@ static int dcmi_probe(struct platform_device *pdev)
 
 	dev_info(&pdev->dev, "Probe done\n");
 
+	dcmi_get_min_frequency(dcmi);
+	dcmi_get_cpu_policy(dcmi);
+
 	platform_set_drvdata(pdev, dcmi);
 
 	pm_runtime_enable(&pdev->dev);
@@ -2049,6 +2218,8 @@ static int dcmi_remove(struct platform_device *pdev)
 
 	pm_runtime_disable(&pdev->dev);
 
+	dcmi_put_cpu_policy(dcmi);
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
