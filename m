Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F49FB58F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 02:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Lk/85h8HEqLH/6cGUT9tmtH8tNZLXS2lw52gtKOeltA=; b=JLd3TXLi0y5+EiG8JpgYPJlYr2
	nqdC6fUZJSA0wB5t922JAiTk6/YMfVOLnd2pT50kKQDFuCKs4R0iI3OHxzWsW7FOMJDgCUVvG2iFR
	TqRWLRCacRKWjJP1PM5GNMAjV5Zw1JybrPDQ1eALCOjPZWMyPlWYQSbyBeQ3JDUfE9l5XVygTzNib
	xbOItmw6t8gAoY0mhSeoorG6dHD4pROc97YBP1LNLcJHkjE4juvRuuEuh0F0+3BwObOU+sNZDQnAP
	pAJ4cXqeWcrUhLVLF+FEmJvjl8KBHKN1Ieupvjp9Gnol8vLgeaMxk/l3jgFHuwV3trsLcPLH0ED2y
	nck4pL2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iANjN-0005Jr-5G; Wed, 18 Sep 2019 00:22:01 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iANg3-0002QK-QA
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 00:18:37 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 908D8200726;
 Wed, 18 Sep 2019 02:18:34 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 826C1200725;
 Wed, 18 Sep 2019 02:18:34 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id EC7FD20601;
 Wed, 18 Sep 2019 02:18:33 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>
Subject: [PATCH 7/8] PM / devfreq: Use dev_pm_qos for sysfs min/max_freq
Date: Wed, 18 Sep 2019 03:18:26 +0300
Message-Id: <a80dae0a1aec9932689aaadff68bcabc94a816be.1568764439.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568764439.git.leonard.crestez@nxp.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1568764439.git.leonard.crestez@nxp.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_171836_224191_8F69ED64 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

Switch the handling of min_freq and max_freq from sysfs to use the
dev_pm_qos interface.

Since dev_pm_qos handles frequencies as kHz this change reduces the
precision of min_freq and max_freq. This shouldn't introduce problems
because frequencies which are not an integer number of kHz are likely
not an integer number of Hz either.

Try to ensure compatibilitity by rounding min values down and rounding
max values up.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/devfreq/devfreq.c | 51 +++++++++++++++++++++++++--------------
 include/linux/devfreq.h   |  9 ++++---
 2 files changed, 38 insertions(+), 22 deletions(-)

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index d8d57318b12c..7977bad93949 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -132,14 +132,10 @@ static void devfreq_get_freq_range(struct devfreq *devfreq,
 	*min_freq = max(*min_freq, HZ_PER_KHZ * (unsigned long)dev_pm_qos_read_value(
 				devfreq->dev.parent, DEV_PM_QOS_MIN_FREQUENCY));
 	*max_freq = min(*max_freq, HZ_PER_KHZ * (unsigned long)dev_pm_qos_read_value(
 				devfreq->dev.parent, DEV_PM_QOS_MAX_FREQUENCY));
 
-	/* constraints from sysfs: */
-	*min_freq = max(*min_freq, devfreq->min_freq);
-	*max_freq = min(*max_freq, devfreq->max_freq);
-
 	/* constraints from opp interface: */
 	*min_freq = max(*min_freq, devfreq->scaling_min_freq);
 	/* scaling_max_freq can be zero on error */
 	if (devfreq->scaling_max_freq)
 		*max_freq = min(*max_freq, devfreq->scaling_max_freq);
@@ -675,10 +671,12 @@ static void devfreq_dev_release(struct device *dev)
 			DEV_PM_QOS_MIN_FREQUENCY);
 
 	if (devfreq->profile->exit)
 		devfreq->profile->exit(devfreq->dev.parent);
 
+	dev_pm_qos_remove_request(&devfreq->max_freq_req);
+	dev_pm_qos_remove_request(&devfreq->min_freq_req);
 	mutex_destroy(&devfreq->lock);
 	kfree(devfreq->time_in_state);
 	kfree(devfreq->trans_table);
 	kfree(devfreq);
 }
@@ -743,18 +741,28 @@ struct devfreq *devfreq_add_device(struct device *dev,
 	devfreq->scaling_min_freq = find_available_min_freq(devfreq);
 	if (!devfreq->scaling_min_freq) {
 		err = -EINVAL;
 		goto err_dev;
 	}
-	devfreq->min_freq = devfreq->scaling_min_freq;
 
 	devfreq->scaling_max_freq = find_available_max_freq(devfreq);
 	if (!devfreq->scaling_max_freq) {
 		err = -EINVAL;
 		goto err_dev;
 	}
-	devfreq->max_freq = devfreq->scaling_max_freq;
+
+	/* dev_pm_qos requests for min/max freq from sysfs */
+	err = dev_pm_qos_add_request(dev, &devfreq->min_freq_req,
+				     DEV_PM_QOS_MIN_FREQUENCY, 0);
+	if (err < 0) {
+		goto err_dev;
+	}
+	err = dev_pm_qos_add_request(dev, &devfreq->max_freq_req,
+				     DEV_PM_QOS_MAX_FREQUENCY, S32_MAX);
+	if (err < 0) {
+		goto err_dev;
+	}
 
 	devfreq->suspend_freq = dev_pm_opp_get_suspend_opp_freq(dev);
 	atomic_set(&devfreq->suspend_count, 0);
 
 	devfreq->trans_table = kzalloc(
@@ -833,10 +841,14 @@ struct devfreq *devfreq_add_device(struct device *dev,
 	mutex_unlock(&devfreq_list_lock);
 err_devfreq:
 	devfreq_remove_device(devfreq);
 	return ERR_PTR(err);
 err_dev:
+	if (dev_pm_qos_request_active(&devfreq->max_freq_req))
+		dev_pm_qos_remove_request(&devfreq->max_freq_req);
+	if (dev_pm_qos_request_active(&devfreq->min_freq_req))
+		dev_pm_qos_remove_request(&devfreq->min_freq_req);
 	kfree(devfreq->time_in_state);
 	kfree(devfreq->trans_table);
 	kfree(devfreq);
 err_out:
 	return ERR_PTR(err);
@@ -1397,14 +1409,17 @@ static ssize_t min_freq_store(struct device *dev, struct device_attribute *attr,
 
 	ret = sscanf(buf, "%lu", &value);
 	if (ret != 1)
 		return -EINVAL;
 
-	mutex_lock(&df->lock);
-	df->min_freq = value;
-	update_devfreq(df);
-	mutex_unlock(&df->lock);
+	/* round down to kHz for dev_pm_qos */
+	if (value)
+		value = value / HZ_PER_KHZ;
+
+	ret = dev_pm_qos_update_request(&df->min_freq_req, value);
+	if (ret < 0)
+		return ret;
 
 	return count;
 }
 
 static ssize_t min_freq_show(struct device *dev, struct device_attribute *attr,
@@ -1429,19 +1444,19 @@ static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
 
 	ret = sscanf(buf, "%lu", &value);
 	if (ret != 1)
 		return -EINVAL;
 
-	mutex_lock(&df->lock);
-
-	/* Interpret zero as "don't care" */
-	if (!value)
-		value = ULONG_MAX;
+	/* round up to kHz for dev_pm_qos and interpret zero as "don't care" */
+	if (value)
+		value = DIV_ROUND_UP(value, HZ_PER_KHZ);
+	else
+		value = S32_MAX;
 
-	df->max_freq = value;
-	update_devfreq(df);
-	mutex_unlock(&df->lock);
+	ret = dev_pm_qos_update_request(&df->max_freq_req, value);
+	if (ret < 0)
+		return ret;
 
 	return count;
 }
 static DEVICE_ATTR_RW(min_freq);
 
diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
index dac0dffeabb4..4b5cc80abbe3 100644
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
+ * @min_freq_req:	Limit minimum frequency requested by user (0: none)
+ * @max_freq_req:	Limit maximum frequency requested by user (0: none)
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
+	struct dev_pm_qos_request min_freq_req;
+	struct dev_pm_qos_request max_freq_req;
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
