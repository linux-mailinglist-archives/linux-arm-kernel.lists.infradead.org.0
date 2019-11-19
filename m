Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D3A102910
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 17:13:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rK+p4ojTOXMa6WbL+lLMKFgwS/ENsPfNjeKXmA1kvi8=; b=is5paW34HzyxtS7lfo+b1Qeocm
	UCxKJRt+vz7USPOQm7uc6sj2nIMynaMzfiMkrsWQ5KGCrDWC96nihQStt25kqP29Zj1AKpSuIYKAa
	2Qb6N9suEjfMsZ8Pi40Wjh/AyMkur68jerVVG1qYV1Pq35AAdhhDzEQmpGTnIl7YA2wFXSN7DKGDq
	FBrXIjdxtfmDQcpTxeKf5/bTK9y/L9HxXYlZg4yURi5HIYtElxIn8HkpKW8Uz8aQeTLh3sFBEVbQA
	kon0o4yIfHJ6pU4SjIRa2lVa2esA2D0eih3Xy/VwG8ac1htT2nrHiDpQT0xnm8hP//u40wjixn5En
	7QwhLrMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX68R-0000HU-PT; Tue, 19 Nov 2019 16:13:47 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX67n-0008LH-6E
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 16:13:10 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 34D361A0456;
 Tue, 19 Nov 2019 17:13:03 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 268341A0406;
 Tue, 19 Nov 2019 17:13:03 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 349AC203BF;
 Tue, 19 Nov 2019 17:13:02 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke <mka@chromium.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: [PATCH RFC 2/2] PM / devfreq: Use PM QoS for sysfs min/max_freq
Date: Tue, 19 Nov 2019 18:12:14 +0200
Message-Id: <1f567d6478b1782f7f4afc27cb6d3f896d77ac9f.1574179738.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1574179738.git.leonard.crestez@nxp.com>
References: <cover.1574179738.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1574179738.git.leonard.crestez@nxp.com>
References: <cover.1574179738.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_081307_509829_D4A30941 
X-CRM114-Status: GOOD (  15.93  )
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
 Jacky Bai <ping.bai@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch the handling of min_freq and max_freq from sysfs to use the
dev_pm_qos_request interface.

Since PM QoS handles frequencies as kHz this change reduces the
precision of min_freq and max_freq. This shouldn't introduce problems
because frequencies which are not an integer number of kHz are likely
not an integer number of Hz either.

Try to ensure compatibility by rounding min values down and rounding
max values up.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/devfreq/devfreq.c | 76 ++++++++++++++++++++++++++++++---------
 include/linux/devfreq.h   |  9 ++---
 2 files changed, 64 insertions(+), 21 deletions(-)

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index 34bbaac6ea7e..518dd2745d06 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -139,14 +139,10 @@ static void get_freq_range(struct devfreq *devfreq,
 	*min_freq = max(*min_freq, (unsigned long)HZ_PER_KHZ * qos_min_freq);
 	if (qos_max_freq != PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE)
 		*max_freq = min(*max_freq,
 				(unsigned long)HZ_PER_KHZ * qos_max_freq);
 
-	/* Apply constraints from sysfs */
-	*min_freq = max(*min_freq, devfreq->min_freq);
-	*max_freq = min(*max_freq, devfreq->max_freq);
-
 	/* Apply constraints from OPP interface */
 	*min_freq = max(*min_freq, devfreq->scaling_min_freq);
 	*max_freq = min(*max_freq, devfreq->scaling_max_freq);
 
 	if (*min_freq > *max_freq)
@@ -708,10 +704,23 @@ static void devfreq_dev_release(struct device *dev)
 					 DEV_PM_QOS_MIN_FREQUENCY);
 	if (err && err != -ENOENT)
 		dev_warn(dev->parent,
 			"Failed to remove min_freq notifier: %d\n", err);
 
+	if (dev_pm_qos_request_active(&devfreq->user_max_freq_req)) {
+		err = dev_pm_qos_remove_request(&devfreq->user_max_freq_req);
+		if (err)
+			dev_warn(dev->parent,
+				"Failed to remove max_freq request: %d\n", err);
+	}
+	if (dev_pm_qos_request_active(&devfreq->user_min_freq_req)) {
+		err = dev_pm_qos_remove_request(&devfreq->user_min_freq_req);
+		if (err)
+			dev_warn(dev->parent,
+				"Failed to remove min_freq request: %d\n", err);
+	}
+
 	if (devfreq->profile->exit)
 		devfreq->profile->exit(devfreq->dev.parent);
 
 	mutex_destroy(&devfreq->lock);
 	kfree(devfreq);
@@ -780,19 +789,17 @@ struct devfreq *devfreq_add_device(struct device *dev,
 	if (!devfreq->scaling_min_freq) {
 		mutex_unlock(&devfreq->lock);
 		err = -EINVAL;
 		goto err_dev;
 	}
-	devfreq->min_freq = devfreq->scaling_min_freq;
 
 	devfreq->scaling_max_freq = find_available_max_freq(devfreq);
 	if (!devfreq->scaling_max_freq) {
 		mutex_unlock(&devfreq->lock);
 		err = -EINVAL;
 		goto err_dev;
 	}
-	devfreq->max_freq = devfreq->scaling_max_freq;
 
 	devfreq->suspend_freq = dev_pm_opp_get_suspend_opp_freq(dev);
 	atomic_set(&devfreq->suspend_count, 0);
 
 	dev_set_name(&devfreq->dev, "devfreq%d",
@@ -829,10 +836,20 @@ struct devfreq *devfreq_add_device(struct device *dev,
 
 	srcu_init_notifier_head(&devfreq->transition_notifier_list);
 
 	mutex_unlock(&devfreq->lock);
 
+	err = dev_pm_qos_add_request(dev, &devfreq->user_min_freq_req,
+				     DEV_PM_QOS_MIN_FREQUENCY, 0);
+	if (err < 0)
+		goto err_devfreq;
+	err = dev_pm_qos_add_request(dev, &devfreq->user_max_freq_req,
+				     DEV_PM_QOS_MAX_FREQUENCY,
+				     PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE);
+	if (err < 0)
+		goto err_devfreq;
+
 	devfreq->nb_min.notifier_call = qos_min_notifier_call;
 	err = dev_pm_qos_add_notifier(devfreq->dev.parent, &devfreq->nb_min,
 				      DEV_PM_QOS_MIN_FREQUENCY);
 	if (err)
 		goto err_devfreq;
@@ -1414,18 +1431,26 @@ static ssize_t min_freq_store(struct device *dev, struct device_attribute *attr,
 {
 	struct devfreq *df = to_devfreq(dev);
 	unsigned long value;
 	int ret;
 
+	/*
+	 * Protect against theoretical sysfs writes between
+	 * device_add and dev_pm_qos_add_request
+	 */
+	if (!dev_pm_qos_request_active(&df->user_min_freq_req))
+		return -EINVAL;
+
 	ret = sscanf(buf, "%lu", &value);
 	if (ret != 1)
 		return -EINVAL;
 
-	mutex_lock(&df->lock);
-	df->min_freq = value;
-	update_devfreq(df);
-	mutex_unlock(&df->lock);
+	/* Round down to kHz for PM QoS */
+	ret = dev_pm_qos_update_request(&df->user_min_freq_req,
+					value / HZ_PER_KHZ);
+	if (ret < 0)
+		return ret;
 
 	return count;
 }
 
 static ssize_t min_freq_show(struct device *dev, struct device_attribute *attr,
@@ -1446,22 +1471,39 @@ static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
 {
 	struct devfreq *df = to_devfreq(dev);
 	unsigned long value;
 	int ret;
 
+	/*
+	 * Protect against theoretical sysfs writes between
+	 * device_add and dev_pm_qos_add_request
+	 */
+	if (!dev_pm_qos_request_active(&df->user_max_freq_req))
+		return -EINVAL;
+
 	ret = sscanf(buf, "%lu", &value);
 	if (ret != 1)
 		return -EINVAL;
 
-	mutex_lock(&df->lock);
-
-	if (!value)
-		value = ULONG_MAX;
+	/*
+	 * PM QoS frequencies are in kHz so we need to convert. Convert by
+	 * rounding upwards so that the acceptable interval never shrinks.
+	 *
+	 * For example if the user writes "666666666" to sysfs this value will
+	 * be converted to 666667 kHz and back to 666667000 Hz before an OPP
+	 * lookup, this ensures that an OPP of 666666666Hz is still accepted.
+	 *
+	 * A value of zero means "no limit".
+	 */
+	if (value)
+		value = DIV_ROUND_UP(value, HZ_PER_KHZ);
+	else
+		value = PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE;
 
-	df->max_freq = value;
-	update_devfreq(df);
-	mutex_unlock(&df->lock);
+	ret = dev_pm_qos_update_request(&df->user_max_freq_req, value);
+	if (ret < 0)
+		return ret;
 
 	return count;
 }
 static DEVICE_ATTR_RW(min_freq);
 
diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
index 8b92ccbd1962..fb376b5b7281 100644
--- a/include/linux/devfreq.h
+++ b/include/linux/devfreq.h
@@ -11,10 +11,11 @@
 #define __LINUX_DEVFREQ_H__
 
 #include <linux/device.h>
 #include <linux/notifier.h>
 #include <linux/pm_opp.h>
+#include <linux/pm_qos.h>
 
 #define DEVFREQ_NAME_LEN 16
 
 /* DEVFREQ governor name */
 #define DEVFREQ_GOV_SIMPLE_ONDEMAND	"simple_ondemand"
@@ -121,12 +122,12 @@ struct devfreq_dev_profile {
  *		devfreq.nb to the corresponding register notifier call chain.
  * @work:	delayed work for load monitoring.
  * @previous_freq:	previously configured frequency value.
  * @data:	Private data of the governor. The devfreq framework does not
  *		touch this.
- * @min_freq:	Limit minimum frequency requested by user (0: none)
- * @max_freq:	Limit maximum frequency requested by user (0: none)
+ * @user_min_freq_req:	PM QoS minimum frequency request from user (via sysfs)
+ * @user_max_freq_req:	PM QoS maximum frequency request from user (via sysfs)
  * @scaling_min_freq:	Limit minimum frequency requested by OPP interface
  * @scaling_max_freq:	Limit maximum frequency requested by OPP interface
  * @stop_polling:	 devfreq polling status of a device.
  * @suspend_freq:	 frequency of a device set during suspend phase.
  * @resume_freq:	 frequency of a device set in resume phase.
@@ -161,12 +162,12 @@ struct devfreq {
 	unsigned long previous_freq;
 	struct devfreq_dev_status last_status;
 
 	void *data; /* private data for governors */
 
-	unsigned long min_freq;
-	unsigned long max_freq;
+	struct dev_pm_qos_request user_min_freq_req;
+	struct dev_pm_qos_request user_max_freq_req;
 	unsigned long scaling_min_freq;
 	unsigned long scaling_max_freq;
 	bool stop_polling;
 
 	unsigned long suspend_freq;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
