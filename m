Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A352FB58F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 02:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t09P6aOtsXqa0k6dQnQFB1WwSvODWenH2ykJZgR4OMs=; b=BUoLFc24SB3MplJMm9ltJGj5T8
	HjVdqk+3A1yKZhlfSR8pD0bZSBXPMpRRoKBzd6xtVcutB+pfbFK/s5Xzu3iAdAObRiiFyQZE+OVpi
	xfID3/pBA4IK6O13b1zx3PdzM3HyG6tX3q8oHPHkJnl8wScz4rID3DLVhpcEmq4h0oqeFcqTGKPSo
	35pizHsCgCECIyD4b3ZwlCAlMINANfoQjnms4g9bt+hKwt33S8HJjgF1SCWh/1RvcPcPAGjQqgx3u
	MUEDARhSWI4FSDDmZ7OI7Wx5EXs7BfwpgA/jc70KXchUUONtPENQ1J9sVQyMx0L6b5j2MyJYg25Q0
	oY3A3b1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iANj5-000555-Mu; Wed, 18 Sep 2019 00:21:43 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iANg3-0002Q2-4V
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 00:18:37 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E9F1A1A06EB;
 Wed, 18 Sep 2019 02:18:33 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DCC231A0315;
 Wed, 18 Sep 2019 02:18:33 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 52BD420601;
 Wed, 18 Sep 2019 02:18:33 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>
Subject: [PATCH 6/8] PM / devfreq: Add dev_pm_qos support
Date: Wed, 18 Sep 2019 03:18:25 +0300
Message-Id: <feab364d702ba62102f212b7d415d9f768159163.1568764439.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568764439.git.leonard.crestez@nxp.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1568764439.git.leonard.crestez@nxp.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_171835_523621_154785AF 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Register notifiers with the pm_qos framework in order to respond to
requests for MIN_FREQUENCY and MAX_FREQUENCY.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/devfreq/devfreq.c | 71 +++++++++++++++++++++++++++++++++++++++
 include/linux/devfreq.h   |  5 +++
 2 files changed, 76 insertions(+)

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index 51a4179e2c69..d8d57318b12c 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -22,17 +22,20 @@
 #include <linux/platform_device.h>
 #include <linux/list.h>
 #include <linux/printk.h>
 #include <linux/hrtimer.h>
 #include <linux/of.h>
+#include <linux/pm_qos.h>
 #include "governor.h"
 
 #define HZ_PER_KHZ 1000
 
 #define CREATE_TRACE_POINTS
 #include <trace/events/devfreq.h>
 
+#define HZ_PER_KHZ	1000
+
 static struct class *devfreq_class;
 
 /*
  * devfreq core provides delayed work based load monitoring helper
  * functions. Governors can use these or can implement their own
@@ -123,10 +126,16 @@ static void devfreq_get_freq_range(struct devfreq *devfreq,
 	} else {
 		*min_freq = freq_table[devfreq->profile->max_state - 1];
 		*max_freq = freq_table[0];
 	}
 
+	/* constraints from dev_pm_qos: */
+	*min_freq = max(*min_freq, HZ_PER_KHZ * (unsigned long)dev_pm_qos_read_value(
+				devfreq->dev.parent, DEV_PM_QOS_MIN_FREQUENCY));
+	*max_freq = min(*max_freq, HZ_PER_KHZ * (unsigned long)dev_pm_qos_read_value(
+				devfreq->dev.parent, DEV_PM_QOS_MAX_FREQUENCY));
+
 	/* constraints from sysfs: */
 	*min_freq = max(*min_freq, devfreq->min_freq);
 	*max_freq = min(*max_freq, devfreq->max_freq);
 
 	/* constraints from opp interface: */
@@ -605,10 +614,49 @@ static int devfreq_notifier_call(struct notifier_block *nb, unsigned long type,
 	mutex_unlock(&devfreq->lock);
 
 	return ret;
 }
 
+/**
+ * devfreq_qos_notifier_call() - Common handler for qos freq changes.
+ * @devfreq:    the devfreq instance.
+ */
+static int devfreq_qos_notifier_call(struct devfreq *devfreq)
+{
+	int ret;
+
+	mutex_lock(&devfreq->lock);
+	ret = update_devfreq(devfreq);
+	mutex_unlock(&devfreq->lock);
+
+	return ret;
+}
+
+/**
+ * devfreq_qos_min_notifier_call() - Callback for qos min_freq changes.
+ * @nb:		Should to be devfreq->nb_min
+ */
+static int devfreq_qos_min_notifier_call(struct notifier_block *nb,
+					 unsigned long val, void *ptr)
+{
+	struct devfreq *devfreq = container_of(nb, struct devfreq, nb_min);
+
+	return devfreq_qos_notifier_call(devfreq);
+}
+
+/**
+ * devfreq_qos_max_notifier_call() - Callback for qos min_freq changes.
+ * @nb:		Should to be devfreq->nb_max
+ */
+static int devfreq_qos_max_notifier_call(struct notifier_block *nb,
+					 unsigned long val, void *ptr)
+{
+	struct devfreq *devfreq = container_of(nb, struct devfreq, nb_max);
+
+	return devfreq_qos_notifier_call(devfreq);
+}
+
 /**
  * devfreq_dev_release() - Callback for struct device to release the device.
  * @dev:	the devfreq device
  *
  * Remove devfreq from the list and release its resources.
@@ -619,10 +667,15 @@ static void devfreq_dev_release(struct device *dev)
 
 	mutex_lock(&devfreq_list_lock);
 	list_del(&devfreq->node);
 	mutex_unlock(&devfreq_list_lock);
 
+	dev_pm_qos_remove_notifier(devfreq->dev.parent, &devfreq->nb_max,
+			DEV_PM_QOS_MAX_FREQUENCY);
+	dev_pm_qos_remove_notifier(devfreq->dev.parent, &devfreq->nb_min,
+			DEV_PM_QOS_MIN_FREQUENCY);
+
 	if (devfreq->profile->exit)
 		devfreq->profile->exit(devfreq->dev.parent);
 
 	mutex_destroy(&devfreq->lock);
 	kfree(devfreq->time_in_state);
@@ -732,10 +785,27 @@ struct devfreq *devfreq_add_device(struct device *dev,
 	if (err) {
 		put_device(&devfreq->dev);
 		goto err_out;
 	}
 
+	/*
+	 * Register notifiers for updates to min_freq/max_freq after device is
+	 * initialized (and we can handle notifications) but before the governor
+	 * is started (which should do an initial enforcement of constraints)
+	 */
+	devfreq->nb_min.notifier_call = devfreq_qos_min_notifier_call;
+	err = dev_pm_qos_add_notifier(devfreq->dev.parent, &devfreq->nb_min,
+				      DEV_PM_QOS_MIN_FREQUENCY);
+	if (err)
+		goto err_devfreq;
+
+	devfreq->nb_max.notifier_call = devfreq_qos_max_notifier_call;
+	err = dev_pm_qos_add_notifier(devfreq->dev.parent, &devfreq->nb_max,
+				      DEV_PM_QOS_MAX_FREQUENCY);
+	if (err)
+		goto err_devfreq;
+
 	mutex_lock(&devfreq_list_lock);
 
 	governor = try_then_request_governor(devfreq->governor_name);
 	if (IS_ERR(governor)) {
 		dev_err(dev, "%s: Unable to find governor for the device\n",
@@ -759,10 +829,11 @@ struct devfreq *devfreq_add_device(struct device *dev,
 
 	return devfreq;
 
 err_init:
 	mutex_unlock(&devfreq_list_lock);
+err_devfreq:
 	devfreq_remove_device(devfreq);
 	return ERR_PTR(err);
 err_dev:
 	kfree(devfreq->time_in_state);
 	kfree(devfreq->trans_table);
diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
index c3cbc15fdf08..dac0dffeabb4 100644
--- a/include/linux/devfreq.h
+++ b/include/linux/devfreq.h
@@ -134,10 +134,12 @@ struct devfreq_dev_profile {
  * @total_trans:	Number of devfreq transitions
  * @trans_table:	Statistics of devfreq transitions
  * @time_in_state:	Statistics of devfreq states
  * @last_stat_updated:	The last time stat updated
  * @transition_notifier_list: list head of DEVFREQ_TRANSITION_NOTIFIER notifier
+ * @nb_min:		Notifier block for DEV_PM_QOS_MIN_FREQUENCY
+ * @nb_max:		Notifier block for DEV_PM_QOS_MAX_FREQUENCY
  *
  * This structure stores the devfreq information for a give device.
  *
  * Note that when a governor accesses entries in struct devfreq in its
  * functions except for the context of callbacks defined in struct
@@ -176,10 +178,13 @@ struct devfreq {
 	unsigned int *trans_table;
 	unsigned long *time_in_state;
 	unsigned long last_stat_updated;
 
 	struct srcu_notifier_head transition_notifier_list;
+
+	struct notifier_block nb_min;
+	struct notifier_block nb_max;
 };
 
 struct devfreq_freqs {
 	unsigned long old;
 	unsigned long new;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
