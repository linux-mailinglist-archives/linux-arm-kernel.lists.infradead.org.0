Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9158F86481
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 16:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gJPtNZuUdVU/Wx6VpR+iFEchdqTnieXY/eHkimoIc8s=; b=eg0
	Tp6RJOr4ZT9kkP+fFty5UeV728VeIj5fdW/+VjmMWdquCtJ/5Ymd+GW2zDEXsZyyiBkFpJBsgfPQl
	odtdz08FqwI+LbvR2TiKltzdPSsnrG4MSeY6fQLj5FhlaEC8voPmKcW9p9j5H6ZqffIllZ+MsFV3B
	UnFnQx0A4Tb0sNA9q3pg+jv6kZeORg4wTpnLwQckz8LziOZThMiy2QcCBf++3T9ULIIPRzPNPqjGe
	vz2r84OavfAKcqJ/pEEH4t/aQiLyIIrimgZ5+UyaJAalzzrHVABLeHT0e0eqxeGtIUqV0URswBv1O
	1mkPIYdEXrn4CVWH6DeGWsT3QTX5NoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvjZc-0000Lo-Po; Thu, 08 Aug 2019 14:39:25 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvjZR-0000LA-PJ
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 14:39:15 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5BD6720000A;
 Thu,  8 Aug 2019 16:39:11 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4E0662000A9;
 Thu,  8 Aug 2019 16:39:11 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id B5B5220618;
 Thu,  8 Aug 2019 16:39:10 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Saravana Kannan <saravanak@google.com>
Subject: [PATCHv2] PM / devfreq: Add dev_pm_qos support
Date: Thu,  8 Aug 2019 17:39:07 +0300
Message-Id: <e45c28528ff941abb1f72fdb1eedf65fb3345c5a.1565274802.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_073914_106169_FBBC83B5 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-pm@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add dev_pm_qos notifies to devfreq core in order to support frequency
limits via the dev_pm_qos_add_request.

Unlike the rest of devfreq the dev_pm_qos frequency is measured Khz:
this is consistent with current dev_pm_qos usage for cpufreq and allows
frequencies above 2Ghz (pm_qos expresses limits as s32).

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

---
Changes since v1:
 * Add doxygen comments for min_nb/max_nb
 * Remove notifiers on error/cleanup paths. Keep gotos simple by relying
on dev_pm_qos_remove_notifier ignoring notifiers which were not added.
Link to v1: https://patchwork.kernel.org/patch/11078475/

 drivers/devfreq/devfreq.c | 83 ++++++++++++++++++++++++++++++++++-----
 include/linux/devfreq.h   |  5 +++
 2 files changed, 79 insertions(+), 9 deletions(-)

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index 784c08e4f931..7f1f273562f4 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -22,10 +22,11 @@
 #include <linux/platform_device.h>
 #include <linux/list.h>
 #include <linux/printk.h>
 #include <linux/hrtimer.h>
 #include <linux/of.h>
+#include <linux/pm_qos.h>
 #include "governor.h"
 
 #define CREATE_TRACE_POINTS
 #include <trace/events/devfreq.h>
 
@@ -96,10 +97,26 @@ static unsigned long find_available_max_freq(struct devfreq *devfreq)
 		dev_pm_opp_put(opp);
 
 	return max_freq;
 }
 
+static unsigned long get_effective_min_freq(struct devfreq *devfreq)
+{
+	return max3(devfreq->scaling_min_freq, devfreq->min_freq,
+		1000 * (unsigned long)dev_pm_qos_read_value(
+				devfreq->dev.parent,
+				DEV_PM_QOS_MIN_FREQUENCY));
+}
+
+static unsigned long get_effective_max_freq(struct devfreq *devfreq)
+{
+	return min3(devfreq->scaling_max_freq, devfreq->max_freq,
+		1000 * (unsigned long)dev_pm_qos_read_value(
+				devfreq->dev.parent,
+				DEV_PM_QOS_MAX_FREQUENCY));
+}
+
 /**
  * devfreq_get_freq_level() - Lookup freq_table for the frequency
  * @devfreq:	the devfreq instance
  * @freq:	the target frequency
  */
@@ -356,12 +373,12 @@ int update_devfreq(struct devfreq *devfreq)
 	 *
 	 * List from the highest priority
 	 * max_freq
 	 * min_freq
 	 */
-	max_freq = min(devfreq->scaling_max_freq, devfreq->max_freq);
-	min_freq = max(devfreq->scaling_min_freq, devfreq->min_freq);
+	max_freq = get_effective_max_freq(devfreq);
+	min_freq = get_effective_min_freq(devfreq);
 
 	if (freq < min_freq) {
 		freq = min_freq;
 		flags &= ~DEVFREQ_FLAG_LEAST_UPPER_BOUND; /* Use GLB */
 	}
@@ -570,10 +587,31 @@ static int devfreq_notifier_call(struct notifier_block *nb, unsigned long type,
 	mutex_unlock(&devfreq->lock);
 
 	return ret;
 }
 
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
+static int devfreq_qos_min_notifier_call(struct notifier_block *nb, unsigned long val, void *ptr)
+{
+	return devfreq_qos_notifier_call(container_of(nb, struct devfreq, nb_min));
+}
+
+static int devfreq_qos_max_notifier_call(struct notifier_block *nb, unsigned long val, void *ptr)
+{
+	return devfreq_qos_notifier_call(container_of(nb, struct devfreq, nb_max));
+}
+
 /**
  * devfreq_dev_release() - Callback for struct device to release the device.
  * @dev:	the devfreq device
  *
  * Remove devfreq from the list and release its resources.
@@ -592,10 +630,14 @@ static void devfreq_dev_release(struct device *dev)
 	mutex_unlock(&devfreq_list_lock);
 
 	if (devfreq->profile->exit)
 		devfreq->profile->exit(devfreq->dev.parent);
 
+	dev_pm_qos_remove_notifier(devfreq->dev.parent, &devfreq->nb_max,
+			DEV_PM_QOS_MAX_FREQUENCY);
+	dev_pm_qos_remove_notifier(devfreq->dev.parent, &devfreq->nb_min,
+			DEV_PM_QOS_MIN_FREQUENCY);
 	mutex_destroy(&devfreq->lock);
 	kfree(devfreq);
 }
 
 /**
@@ -636,21 +678,44 @@ struct devfreq *devfreq_add_device(struct device *dev,
 		err = -ENOMEM;
 		goto err_out;
 	}
 
 	mutex_init(&devfreq->lock);
-	mutex_lock(&devfreq->lock);
 	devfreq->dev.parent = dev;
 	devfreq->dev.class = devfreq_class;
 	devfreq->dev.release = devfreq_dev_release;
 	devfreq->profile = profile;
 	strncpy(devfreq->governor_name, governor_name, DEVFREQ_NAME_LEN);
 	devfreq->previous_freq = profile->initial_freq;
 	devfreq->last_status.current_frequency = profile->initial_freq;
 	devfreq->data = data;
 	devfreq->nb.notifier_call = devfreq_notifier_call;
 
+	/*
+	 * notifier from pm_qos
+	 *
+	 * initialized outside of devfreq->lock to avoid circular warning
+	 * between devfreq->lock and dev_pm_qos_mtx
+	 */
+	devfreq->nb_min.notifier_call = devfreq_qos_min_notifier_call;
+	devfreq->nb_max.notifier_call = devfreq_qos_max_notifier_call;
+
+	err = dev_pm_qos_add_notifier(devfreq->dev.parent, &devfreq->nb_min,
+				      DEV_PM_QOS_MIN_FREQUENCY);
+	if (err) {
+		dev_err(dev, "Failed to register MIN QoS notifier: %d\n", err);
+		goto err_dev;
+	}
+
+	err = dev_pm_qos_add_notifier(devfreq->dev.parent, &devfreq->nb_max,
+				      DEV_PM_QOS_MAX_FREQUENCY);
+	if (err) {
+		dev_err(dev, "Failed to register MAX QoS notifier: %d\n", err);
+		goto err_dev;
+	}
+
+	mutex_lock(&devfreq->lock);
 	if (!devfreq->profile->max_state && !devfreq->profile->freq_table) {
 		mutex_unlock(&devfreq->lock);
 		err = set_freq_table(devfreq);
 		if (err < 0)
 			goto err_dev;
@@ -741,10 +806,14 @@ struct devfreq *devfreq_add_device(struct device *dev,
 	mutex_unlock(&devfreq_list_lock);
 err_devfreq:
 	devfreq_remove_device(devfreq);
 	devfreq = NULL;
 err_dev:
+	dev_pm_qos_remove_notifier(devfreq->dev.parent, &devfreq->nb_max,
+			DEV_PM_QOS_MAX_FREQUENCY);
+	dev_pm_qos_remove_notifier(devfreq->dev.parent, &devfreq->nb_min,
+			DEV_PM_QOS_MIN_FREQUENCY);
 	kfree(devfreq);
 err_out:
 	return ERR_PTR(err);
 }
 EXPORT_SYMBOL(devfreq_add_device);
@@ -1311,13 +1380,11 @@ static ssize_t min_freq_store(struct device *dev, struct device_attribute *attr,
 }
 
 static ssize_t min_freq_show(struct device *dev, struct device_attribute *attr,
 			     char *buf)
 {
-	struct devfreq *df = to_devfreq(dev);
-
-	return sprintf(buf, "%lu\n", max(df->scaling_min_freq, df->min_freq));
+	return sprintf(buf, "%lu\n", get_effective_min_freq(to_devfreq(dev)));
 }
 
 static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
 			      const char *buf, size_t count)
 {
@@ -1356,13 +1423,11 @@ static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
 static DEVICE_ATTR_RW(min_freq);
 
 static ssize_t max_freq_show(struct device *dev, struct device_attribute *attr,
 			     char *buf)
 {
-	struct devfreq *df = to_devfreq(dev);
-
-	return sprintf(buf, "%lu\n", min(df->scaling_max_freq, df->max_freq));
+	return sprintf(buf, "%lu\n", get_effective_max_freq(to_devfreq(dev)));
 }
 static DEVICE_ATTR_RW(max_freq);
 
 static ssize_t available_frequencies_show(struct device *d,
 					  struct device_attribute *attr,
diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
index 2bae9ed3c783..8b92ccbd1962 100644
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
