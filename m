Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FF91DA8D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 05:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JT2NhB6BQ9fVb3Og1sKkpGQ0hiPxy92O/wi0eHXtLhY=; b=IRavtfxGS+o0qC
	mtwI6PbQIPIYiK5ybdHch9v7xyQZeyqerN2Eb/H66rQ87zrlR9Pzs71sprhPbzsp6bC7AMcXh4P4C
	Z/NumHiWIsojav9KBSR5p2fTKug9/VaHw1wX8AxJvP3XGbDRXatuKDx2/4SV/aW6Q0UN1cVwxJ3Ns
	HV12fQOfsd3FXyXXmC2CSBsv2ojFMElUcW+vfnDc9ljuv/jewEF9fHgG/Jseb5Rqb2dMYqu5FJwMb
	O4Fs/uYrR6Ld14vPZ2EYlmKDPLgmXQ4cu5LHduwVlz/lh02pDNQ2mk6BCWiEUZdcVd1Lmd7PU8OII
	WTeUxtKep9mGEp/3upOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbFp5-0001Cv-L9; Wed, 20 May 2020 03:55:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbFnY-00009p-4Z; Wed, 20 May 2020 03:53:44 +0000
X-UUID: 96df92cd63d244b981e53f92343ff337-20200519
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=cEA6a1wr/8ljG1LnNpb4HdYQOz7E9Vij4cvPdRMcYIM=; 
 b=QGOvVkniPOT/WU4KZDZU1Lpyx5YaYwUJFXKo6OeuKh9apYyGVbXf/fwdhcv03ZkjWv15qJi0I3U2qDdKNOkSWdY+PznlIhaCMDd+SKfQDLoicKHWIxjfM3Q5YOD+fy965fdpJcoaPnVUMXZpdPO7ZZrYZCvgt1UW42Wb7aDSnaA=;
X-UUID: 96df92cd63d244b981e53f92343ff337-20200519
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1216880862; Tue, 19 May 2020 19:53:34 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 19 May 2020 20:43:31 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 20 May 2020 11:43:30 +0800
Received: from mtkslt209.mediatek.inc (10.21.15.96) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 20 May 2020 11:43:30 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, "Stephen
 Boyd" <sboyd@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
 <broonie@kernel.org>
Subject: [PATCH 06/12] PM / devfreq: Add cpu based scaling support to
 passive_governor
Date: Wed, 20 May 2020 11:43:01 +0800
Message-ID: <20200520034307.20435-7-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 2.12.5
In-Reply-To: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
References: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_205340_412575_D0675AD7 
X-CRM114-Status: GOOD (  22.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org,
 "Andrew-sh . Cheng" <andrew-sh.cheng@mediatek.com>,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Saravana
 Kannan <skannan@codeaurora.org>, linux-mediatek@lists.infradead.org,
 Sibi Sankar <sibis@codeaurora.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Saravana Kannan <skannan@codeaurora.org>

Many CPU architectures have caches that can scale independent of the
CPUs. Frequency scaling of the caches is necessary to make sure that the
cache is not a performance bottleneck that leads to poor performance and
power. The same idea applies for RAM/DDR.

To achieve this, this patch adds support for cpu based scaling to the
passive governor. This is accomplished by taking the current frequency
of each CPU frequency domain and then adjust the frequency of the cache
(or any devfreq device) based on the frequency of the CPUs. It listens
to CPU frequency transition notifiers to keep itself up to date on the
current CPU frequency.

To decide the frequency of the device, the governor does one of the
following:
* Derives the optimal devfreq device opp from required-opps property of
  the parent cpu opp_table.

* Scales the device frequency in proportion to the CPU frequency. So, if
  the CPUs are running at their max frequency, the device runs at its
  max frequency. If the CPUs are running at their min frequency, the
  device runs at its min frequency. It is interpolated for frequencies
  in between.

Andrew-sh.Cheng change
dev_pm_opp_xlate_opp to dev_pm_opp_xlate_required_opp devfreq->max_freq
to devfreq->user_min_freq_req.data.freq.qos->min_freq.target_value
for kernel-5.7

Signed-off-by: Saravana Kannan <skannan@codeaurora.org>
[Sibi: Integrated cpu-freqmap governor into passive_governor]
Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
---
 drivers/devfreq/Kconfig            |   2 +
 drivers/devfreq/governor_passive.c | 278 ++++++++++++++++++++++++++++++++++---
 include/linux/devfreq.h            |  40 +++++-
 3 files changed, 299 insertions(+), 21 deletions(-)

diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
index 0b1df12e0f21..d9067950af6a 100644
--- a/drivers/devfreq/Kconfig
+++ b/drivers/devfreq/Kconfig
@@ -73,6 +73,8 @@ config DEVFREQ_GOV_PASSIVE
 	  device. This governor does not change the frequency by itself
 	  through sysfs entries. The passive governor recommends that
 	  devfreq device uses the OPP table to get the frequency/voltage.
+	  Alternatively the governor can also be chosen to scale based on
+	  the online CPUs current frequency.
 
 comment "DEVFREQ Drivers"
 
diff --git a/drivers/devfreq/governor_passive.c b/drivers/devfreq/governor_passive.c
index 2d67d6c12dce..7dcda02a5bb7 100644
--- a/drivers/devfreq/governor_passive.c
+++ b/drivers/devfreq/governor_passive.c
@@ -8,11 +8,89 @@
  */
 
 #include <linux/module.h>
+#include <linux/cpu.h>
+#include <linux/cpufreq.h>
+#include <linux/cpumask.h>
 #include <linux/device.h>
 #include <linux/devfreq.h>
+#include <linux/slab.h>
 #include "governor.h"
 
-static int devfreq_passive_get_target_freq(struct devfreq *devfreq,
+static unsigned int xlate_cpufreq_to_devfreq(struct devfreq_passive_data *data,
+					     unsigned int cpu)
+{
+	unsigned int cpu_min, cpu_max, dev_min, dev_max, cpu_percent, max_state;
+	struct devfreq_cpu_state *cpu_state = data->cpu_state[cpu];
+	struct devfreq *devfreq = (struct devfreq *)data->this;
+	unsigned long *freq_table = devfreq->profile->freq_table;
+	struct dev_pm_opp *opp = NULL, *cpu_opp = NULL;
+	unsigned long cpu_freq, freq;
+
+	if (!cpu_state || cpu_state->first_cpu != cpu ||
+	    !cpu_state->opp_table || !devfreq->opp_table)
+		return 0;
+
+	cpu_freq = cpu_state->freq * 1000;
+	cpu_opp = devfreq_recommended_opp(cpu_state->dev, &cpu_freq, 0);
+	if (IS_ERR(cpu_opp))
+		return 0;
+
+	opp = dev_pm_opp_xlate_required_opp(cpu_state->opp_table,
+					    devfreq->opp_table, cpu_opp);
+	dev_pm_opp_put(cpu_opp);
+
+	if (!IS_ERR(opp)) {
+		freq = dev_pm_opp_get_freq(opp);
+		dev_pm_opp_put(opp);
+	} else {
+		/* Use Interpolation if required opps is not available */
+		cpu_min = cpu_state->min_freq;
+		cpu_max = cpu_state->max_freq;
+		cpu_freq = cpu_state->freq;
+
+		if (freq_table) {
+			/* Get minimum frequency according to sorting order */
+			max_state = freq_table[devfreq->profile->max_state - 1];
+			if (freq_table[0] < max_state) {
+				dev_min = freq_table[0];
+				dev_max = max_state;
+			} else {
+				dev_min = max_state;
+				dev_max = freq_table[0];
+			}
+		} else {
+			if (devfreq->user_max_freq_req.data.freq.qos->max_freq.target_value
+			    <= devfreq->user_min_freq_req.data.freq.qos->min_freq.target_value)
+				return 0;
+			dev_min =
+			devfreq->user_min_freq_req.data.freq.qos->min_freq.target_value;
+			dev_max =
+			devfreq->user_max_freq_req.data.freq.qos->max_freq.target_value;
+		}
+		cpu_percent = ((cpu_freq - cpu_min) * 100) / cpu_max - cpu_min;
+		freq = dev_min + mult_frac(dev_max - dev_min, cpu_percent, 100);
+	}
+
+	return freq;
+}
+
+static int get_target_freq_with_cpufreq(struct devfreq *devfreq,
+					unsigned long *freq)
+{
+	struct devfreq_passive_data *p_data =
+				(struct devfreq_passive_data *)devfreq->data;
+	unsigned int cpu, target_freq = 0;
+
+	for_each_online_cpu(cpu)
+		target_freq = max(target_freq,
+				  xlate_cpufreq_to_devfreq(p_data, cpu));
+
+	*freq = target_freq;
+
+	return 0;
+}
+
+static int get_target_freq_with_devfreq(struct devfreq *devfreq,
 					unsigned long *freq)
 {
 	struct devfreq_passive_data *p_data
@@ -23,16 +101,6 @@ static int devfreq_passive_get_target_freq(struct devfreq *devfreq,
 	int i, count, ret = 0;
 
 	/*
-	 * If the devfreq device with passive governor has the specific method
-	 * to determine the next frequency, should use the get_target_freq()
-	 * of struct devfreq_passive_data.
-	 */
-	if (p_data->get_target_freq) {
-		ret = p_data->get_target_freq(devfreq, freq);
-		goto out;
-	}
-
-	/*
 	 * If the parent and passive devfreq device uses the OPP table,
 	 * get the next frequency by using the OPP table.
 	 */
@@ -102,6 +170,37 @@ static int devfreq_passive_get_target_freq(struct devfreq *devfreq,
 	return ret;
 }
 
+static int devfreq_passive_get_target_freq(struct devfreq *devfreq,
+					   unsigned long *freq)
+{
+	struct devfreq_passive_data *p_data =
+				(struct devfreq_passive_data *)devfreq->data;
+	int ret;
+
+	/*
+	 * If the devfreq device with passive governor has the specific method
+	 * to determine the next frequency, should use the get_target_freq()
+	 * of struct devfreq_passive_data.
+	 */
+	if (p_data->get_target_freq)
+		return p_data->get_target_freq(devfreq, freq);
+
+	switch (p_data->parent_type) {
+	case DEVFREQ_PARENT_DEV:
+		ret = get_target_freq_with_devfreq(devfreq, freq);
+		break;
+	case CPUFREQ_PARENT_DEV:
+		ret = get_target_freq_with_cpufreq(devfreq, freq);
+		break;
+	default:
+		ret = -EINVAL;
+		dev_err(&devfreq->dev, "Invalid parent type\n");
+		break;
+	}
+
+	return ret;
+}
+
 static int update_devfreq_passive(struct devfreq *devfreq, unsigned long freq)
 {
 	int ret;
@@ -156,6 +255,140 @@ static int devfreq_passive_notifier_call(struct notifier_block *nb,
 	return NOTIFY_DONE;
 }
 
+static int cpufreq_passive_notifier_call(struct notifier_block *nb,
+					 unsigned long event, void *ptr)
+{
+	struct devfreq_passive_data *data =
+			container_of(nb, struct devfreq_passive_data, nb);
+	struct devfreq *devfreq = (struct devfreq *)data->this;
+	struct devfreq_cpu_state *cpu_state;
+	struct cpufreq_freqs *freq = ptr;
+	unsigned int current_freq;
+	int ret;
+
+	if (event != CPUFREQ_POSTCHANGE || !freq ||
+	    !data->cpu_state[freq->policy->cpu])
+		return 0;
+
+	cpu_state = data->cpu_state[freq->policy->cpu];
+	if (cpu_state->freq == freq->new)
+		return 0;
+
+	/* Backup current freq and pre-update cpu state freq*/
+	current_freq = cpu_state->freq;
+	cpu_state->freq = freq->new;
+
+	mutex_lock(&devfreq->lock);
+	ret = update_devfreq(devfreq);
+	mutex_unlock(&devfreq->lock);
+	if (ret) {
+		cpu_state->freq = current_freq;
+		dev_err(&devfreq->dev, "Couldn't update the frequency.\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int cpufreq_passive_register(struct devfreq_passive_data **p_data)
+{
+	struct devfreq_passive_data *data = *p_data;
+	struct devfreq *devfreq = (struct devfreq *)data->this;
+	struct device *dev = devfreq->dev.parent;
+	struct opp_table *opp_table = NULL;
+	struct devfreq_cpu_state *state;
+	struct cpufreq_policy *policy;
+	struct device *cpu_dev;
+	unsigned int cpu;
+	int ret;
+
+	get_online_cpus();
+	data->nb.notifier_call = cpufreq_passive_notifier_call;
+	ret = cpufreq_register_notifier(&data->nb,
+					CPUFREQ_TRANSITION_NOTIFIER);
+	if (ret) {
+		dev_err(dev, "Couldn't register cpufreq notifier.\n");
+		data->nb.notifier_call = NULL;
+		goto out;
+	}
+
+	/* Populate devfreq_cpu_state */
+	for_each_online_cpu(cpu) {
+		if (data->cpu_state[cpu])
+			continue;
+
+		policy = cpufreq_cpu_get(cpu);
+		if (policy) {
+			state = kzalloc(sizeof(*state), GFP_KERNEL);
+			if (!state) {
+				ret = -ENOMEM;
+				goto out;
+			}
+
+			cpu_dev = get_cpu_device(cpu);
+			if (!cpu_dev) {
+				dev_err(dev, "Couldn't get cpu device.\n");
+				ret = -ENODEV;
+				goto out;
+			}
+
+			opp_table = dev_pm_opp_get_opp_table(cpu_dev);
+			if (IS_ERR(devfreq->opp_table)) {
+				ret = PTR_ERR(opp_table);
+				goto out;
+			}
+
+			state->dev = cpu_dev;
+			state->opp_table = opp_table;
+			state->first_cpu = cpumask_first(policy->related_cpus);
+			state->freq = policy->cur;
+			state->min_freq = policy->cpuinfo.min_freq;
+			state->max_freq = policy->cpuinfo.max_freq;
+			data->cpu_state[cpu] = state;
+			cpufreq_cpu_put(policy);
+		} else {
+			ret = -EPROBE_DEFER;
+			goto out;
+		}
+	}
+out:
+	put_online_cpus();
+	if (ret)
+		return ret;
+
+	/* Update devfreq */
+	mutex_lock(&devfreq->lock);
+	ret = update_devfreq(devfreq);
+	mutex_unlock(&devfreq->lock);
+	if (ret)
+		dev_err(dev, "Couldn't update the frequency.\n");
+
+	return ret;
+}
+
+static int cpufreq_passive_unregister(struct devfreq_passive_data **p_data)
+{
+	struct devfreq_passive_data *data = *p_data;
+	struct devfreq_cpu_state *cpu_state;
+	int cpu;
+
+	if (data->nb.notifier_call)
+		cpufreq_unregister_notifier(&data->nb,
+					    CPUFREQ_TRANSITION_NOTIFIER);
+
+	for_each_possible_cpu(cpu) {
+		cpu_state = data->cpu_state[cpu];
+		if (cpu_state) {
+			if (cpu_state->opp_table)
+				dev_pm_opp_put_opp_table(cpu_state->opp_table);
+			kfree(cpu_state);
+			cpu_state = NULL;
+		}
+	}
+
+	return 0;
+}
+
 static int devfreq_passive_event_handler(struct devfreq *devfreq,
 				unsigned int event, void *data)
 {
@@ -165,7 +398,7 @@ static int devfreq_passive_event_handler(struct devfreq *devfreq,
 	struct notifier_block *nb = &p_data->nb;
 	int ret = 0;
 
-	if (!parent)
+	if (p_data->parent_type == DEVFREQ_PARENT_DEV && !parent)
 		return -EPROBE_DEFER;
 
 	switch (event) {
@@ -173,13 +406,24 @@ static int devfreq_passive_event_handler(struct devfreq *devfreq,
 		if (!p_data->this)
 			p_data->this = devfreq;
 
-		nb->notifier_call = devfreq_passive_notifier_call;
-		ret = devfreq_register_notifier(parent, nb,
-					DEVFREQ_TRANSITION_NOTIFIER);
+		if (p_data->parent_type == DEVFREQ_PARENT_DEV) {
+			nb->notifier_call = devfreq_passive_notifier_call;
+			ret = devfreq_register_notifier(parent, nb,
+						DEVFREQ_TRANSITION_NOTIFIER);
+		} else if (p_data->parent_type == CPUFREQ_PARENT_DEV) {
+			ret = cpufreq_passive_register(&p_data);
+		} else {
+			ret = -EINVAL;
+		}
 		break;
 	case DEVFREQ_GOV_STOP:
-		WARN_ON(devfreq_unregister_notifier(parent, nb,
-					DEVFREQ_TRANSITION_NOTIFIER));
+		if (p_data->parent_type == DEVFREQ_PARENT_DEV)
+			WARN_ON(devfreq_unregister_notifier(parent, nb,
+						DEVFREQ_TRANSITION_NOTIFIER));
+		else if (p_data->parent_type == CPUFREQ_PARENT_DEV)
+			cpufreq_passive_unregister(&p_data);
+		else
+			ret = -EINVAL;
 		break;
 	default:
 		break;
diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
index a4b19d593151..04ce576fd6f1 100644
--- a/include/linux/devfreq.h
+++ b/include/linux/devfreq.h
@@ -278,6 +278,32 @@ struct devfreq_simple_ondemand_data {
 
 #if IS_ENABLED(CONFIG_DEVFREQ_GOV_PASSIVE)
 /**
+ * struct devfreq_cpu_state - holds the per-cpu state
+ * @freq:	the current frequency of the cpu.
+ * @min_freq:	the min frequency of the cpu.
+ * @max_freq:	the max frequency of the cpu.
+ * @first_cpu:	the cpumask of the first cpu of a policy.
+ * @dev:	reference to cpu device.
+ * @opp_table:	reference to cpu opp table.
+ *
+ * This structure stores the required cpu_state of a cpu.
+ * This is auto-populated by the governor.
+ */
+struct devfreq_cpu_state {
+	unsigned int freq;
+	unsigned int min_freq;
+	unsigned int max_freq;
+	unsigned int first_cpu;
+	struct device *dev;
+	struct opp_table *opp_table;
+};
+
+enum devfreq_parent_dev_type {
+	DEVFREQ_PARENT_DEV,
+	CPUFREQ_PARENT_DEV,
+};
+
+/**
  * struct devfreq_passive_data - ``void *data`` fed to struct devfreq
  *	and devfreq_add_device
  * @parent:	the devfreq instance of parent device.
@@ -288,13 +314,15 @@ struct devfreq_simple_ondemand_data {
  *			using governors except for passive governor.
  *			If the devfreq device has the specific method to decide
  *			the next frequency, should use this callback.
- * @this:	the devfreq instance of own device.
- * @nb:		the notifier block for DEVFREQ_TRANSITION_NOTIFIER list
+ * @parent_type		parent type of the device
+ * @this:		the devfreq instance of own device.
+ * @nb:			the notifier block for DEVFREQ_TRANSITION_NOTIFIER list
+ * @cpu_state:		the state min/max/current frequency of all online cpu's
  *
  * The devfreq_passive_data have to set the devfreq instance of parent
  * device with governors except for the passive governor. But, don't need to
- * initialize the 'this' and 'nb' field because the devfreq core will handle
- * them.
+ * initialize the 'this', 'nb' and 'cpu_state' field because the devfreq core
+ * will handle them.
  */
 struct devfreq_passive_data {
 	/* Should set the devfreq instance of parent device */
@@ -303,9 +331,13 @@ struct devfreq_passive_data {
 	/* Optional callback to decide the next frequency of passvice device */
 	int (*get_target_freq)(struct devfreq *this, unsigned long *freq);
 
+	/* Should set the type of parent device */
+	enum devfreq_parent_dev_type parent_type;
+
 	/* For passive governor's internal use. Don't need to set them */
 	struct devfreq *this;
 	struct notifier_block nb;
+	struct devfreq_cpu_state *cpu_state[NR_CPUS];
 };
 #endif
 
-- 
2.12.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
