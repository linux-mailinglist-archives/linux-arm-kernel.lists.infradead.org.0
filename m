Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FA59D0FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 15:47:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YCbq531TV1W6hFpgNm8U2nZcq2G7LsIH9lj03/BUyUQ=; b=C+/UEWHTShSBzvFkQnsO18Z8fV
	YF5CcpfPtgj0Jlh+dBcPsG+ePGA2JKErAC3Aribz/bGLpccwjJOzFEu/y1YhBKO+FKqFWnftRwzGE
	7iMa5cJT7hD7uwx8aK6YMwjCFOX+H/AzYC/tqUTow7qYud3P94fsGH3xE12dffIbtNl4USqzlIozr
	OdkwqARHOeAUyYhECZimiCeTYd8VWxgGJ8PHvHdjEB3KvXv3Pe9GaAKuNQK0VJspG1lkHJUAGgE3+
	8b5174ILWB2AyFGrgohMsbjz421SanyIxWu82qTq0tZaGZEKQAJUXhUKbPt1UZsYMbZMbE7d5oeDs
	BEJOOM+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2FLF-0001xB-9P; Mon, 26 Aug 2019 13:47:29 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2FIe-0007Tm-4r
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 13:44:50 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 75D4A1A01E3;
 Mon, 26 Aug 2019 15:44:38 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 676D51A0191;
 Mon, 26 Aug 2019 15:44:38 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id CE6F120605;
 Mon, 26 Aug 2019 15:44:37 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>
Subject: [PATCH v4 3/6] PM / devfreq: Introduce devfreq_get_freq_range
Date: Mon, 26 Aug 2019 16:44:30 +0300
Message-Id: <f47c1c342fe83be54ec046bf8e41e2dcd541accc.1566826075.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1566826075.git.leonard.crestez@nxp.com>
References: <cover.1566826075.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1566826075.git.leonard.crestez@nxp.com>
References: <cover.1566826075.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_064448_712942_2F70E9DF 
X-CRM114-Status: GOOD (  16.16  )
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
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Moving handling of min/max freq to a single function and call it from
update_devfreq and for printing min/max freq values in sysfs.

This changes the behavior of out-of-range min_freq/max_freq: clamping
is now done at evaluation time. This means that if an out-of-range
constraint is imposed by sysfs and it later becomes valid then it will
be enforced.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/devfreq/devfreq.c | 111 +++++++++++++++++++++-----------------
 1 file changed, 63 insertions(+), 48 deletions(-)

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index 9b3bf64dc37d..96e218b07771 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -24,10 +24,12 @@
 #include <linux/printk.h>
 #include <linux/hrtimer.h>
 #include <linux/of.h>
 #include "governor.h"
 
+#define HZ_PER_KHZ 1000
+
 #define CREATE_TRACE_POINTS
 #include <trace/events/devfreq.h>
 
 static struct class *devfreq_class;
 
@@ -96,10 +98,50 @@ static unsigned long find_available_max_freq(struct devfreq *devfreq)
 		dev_pm_opp_put(opp);
 
 	return max_freq;
 }
 
+/**
+ * devfreq_get_freq_range() - Get the current freq range
+ * @devfreq:	the devfreq instance
+ * @min_freq:	the min frequency
+ * @max_freq:	the max frequency
+ *
+ * This takes into consideration all constraints.
+ */
+static void devfreq_get_freq_range(struct devfreq *devfreq,
+				   unsigned long *min_freq,
+				   unsigned long *max_freq)
+{
+	unsigned long *freq_table = devfreq->profile->freq_table;
+
+	lockdep_assert_held(&devfreq->lock);
+
+	/* Init min/max frequency from freq table */
+	if (freq_table[0] < freq_table[devfreq->profile->max_state - 1]) {
+		*min_freq = freq_table[0];
+		*max_freq = freq_table[devfreq->profile->max_state - 1];
+	} else {
+		*min_freq = freq_table[devfreq->profile->max_state - 1];
+		*max_freq = freq_table[0];
+	}
+
+	/* constraints from sysfs: */
+	*min_freq = max(*min_freq, devfreq->min_freq);
+	*max_freq = min(*max_freq, devfreq->max_freq);
+
+	/* constraints from opp interface: */
+	*min_freq = max(*min_freq, devfreq->scaling_min_freq);
+	/* scaling_max_freq can be zero on error */
+	if (devfreq->scaling_max_freq)
+		*max_freq = min(*max_freq, devfreq->scaling_max_freq);
+
+	/* max_freq takes precedence over min_freq */
+	if (*min_freq > *max_freq)
+		*min_freq = *max_freq;
+}
+
 /**
  * devfreq_get_freq_level() - Lookup freq_table for the frequency
  * @devfreq:	the devfreq instance
  * @freq:	the target frequency
  */
@@ -348,21 +390,13 @@ int update_devfreq(struct devfreq *devfreq)
 
 	/* Reevaluate the proper frequency */
 	err = devfreq->governor->get_target_freq(devfreq, &freq);
 	if (err)
 		return err;
+	devfreq_get_freq_range(devfreq, &min_freq, &max_freq);
 
-	/*
-	 * Adjust the frequency with user freq, QoS and available freq.
-	 *
-	 * List from the highest priority
-	 * max_freq
-	 * min_freq
-	 */
-	max_freq = min(devfreq->scaling_max_freq, devfreq->max_freq);
-	min_freq = max(devfreq->scaling_min_freq, devfreq->min_freq);
-
+	/* max freq takes priority over min freq */
 	if (freq < min_freq) {
 		freq = min_freq;
 		flags &= ~DEVFREQ_FLAG_LEAST_UPPER_BOUND; /* Use GLB */
 	}
 	if (freq > max_freq) {
@@ -1297,40 +1331,28 @@ static ssize_t min_freq_store(struct device *dev, struct device_attribute *attr,
 	ret = sscanf(buf, "%lu", &value);
 	if (ret != 1)
 		return -EINVAL;
 
 	mutex_lock(&df->lock);
-
-	if (value) {
-		if (value > df->max_freq) {
-			ret = -EINVAL;
-			goto unlock;
-		}
-	} else {
-		unsigned long *freq_table = df->profile->freq_table;
-
-		/* Get minimum frequency according to sorting order */
-		if (freq_table[0] < freq_table[df->profile->max_state - 1])
-			value = freq_table[0];
-		else
-			value = freq_table[df->profile->max_state - 1];
-	}
-
 	df->min_freq = value;
 	update_devfreq(df);
-	ret = count;
-unlock:
 	mutex_unlock(&df->lock);
-	return ret;
+
+	return count;
 }
 
 static ssize_t min_freq_show(struct device *dev, struct device_attribute *attr,
 			     char *buf)
 {
 	struct devfreq *df = to_devfreq(dev);
+	unsigned long min_freq, max_freq;
 
-	return sprintf(buf, "%lu\n", max(df->scaling_min_freq, df->min_freq));
+	mutex_lock(&df->lock);
+	devfreq_get_freq_range(df, &min_freq, &max_freq);
+	mutex_unlock(&df->lock);
+
+	return sprintf(buf, "%lu\n", min_freq);
 }
 
 static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
 			      const char *buf, size_t count)
 {
@@ -1342,40 +1364,33 @@ static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
 	if (ret != 1)
 		return -EINVAL;
 
 	mutex_lock(&df->lock);
 
-	if (value) {
-		if (value < df->min_freq) {
-			ret = -EINVAL;
-			goto unlock;
-		}
-	} else {
-		unsigned long *freq_table = df->profile->freq_table;
-
-		/* Get maximum frequency according to sorting order */
-		if (freq_table[0] < freq_table[df->profile->max_state - 1])
-			value = freq_table[df->profile->max_state - 1];
-		else
-			value = freq_table[0];
-	}
+	/* Interpret zero as "don't care" */
+	if (!value)
+		value = ULONG_MAX;
 
 	df->max_freq = value;
 	update_devfreq(df);
-	ret = count;
-unlock:
 	mutex_unlock(&df->lock);
-	return ret;
+
+	return count;
 }
 static DEVICE_ATTR_RW(min_freq);
 
 static ssize_t max_freq_show(struct device *dev, struct device_attribute *attr,
 			     char *buf)
 {
 	struct devfreq *df = to_devfreq(dev);
+	unsigned long min_freq, max_freq;
+
+	mutex_lock(&df->lock);
+	devfreq_get_freq_range(df, &min_freq, &max_freq);
+	mutex_unlock(&df->lock);
 
-	return sprintf(buf, "%lu\n", min(df->scaling_max_freq, df->max_freq));
+	return sprintf(buf, "%lu\n", max_freq);
 }
 static DEVICE_ATTR_RW(max_freq);
 
 static ssize_t available_frequencies_show(struct device *d,
 					  struct device_attribute *attr,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
