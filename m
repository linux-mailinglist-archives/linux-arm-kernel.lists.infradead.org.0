Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B523BC589
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 12:13:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DEEOX8jnm5zeOZHQSup7eX3v3dPegjNluSOpse3yYBQ=; b=Ey44lEfMoTmzp8rNu3+MOrD7Xi
	dYUvPh6KiAB/L+5RRL0lKLkk7L17slRplbRGxYGsecxqmz6EmlXQaygeOb4E1Xa32jQWqFA5kc8AD
	NZgXpcutAr9yvLM9u2FO0QWkf20MiGlIh8JUgXdTL9qGpRUMm+VD4Aip8gJrfXtQZREvuCN2TtaEl
	sDKGQbJ6kCllhsNFOfxwI9Q5nXA7Im7vncDmsn3GNIYU7HDuld3xvxqmPyJHYxGYPRhGqvBDt0tEp
	M7gw+oJrjJipYObl79qgc6ETArRkCwS1k4b8z013x15YDMjV1dlXC4/70++ToCcR/UZBOBlMlgWWC
	p2JF5CkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iChof-0003So-KE; Tue, 24 Sep 2019 10:13:05 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iChnF-0002Rk-A5
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 10:11:39 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1C3A41A039C;
 Tue, 24 Sep 2019 12:11:36 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0EE381A0192;
 Tue, 24 Sep 2019 12:11:36 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 5DB8D205E6;
 Tue, 24 Sep 2019 12:11:35 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v8 4/6] PM / devfreq: Introduce get_freq_range helper
Date: Tue, 24 Sep 2019 13:11:28 +0300
Message-Id: <674fe91065034083fd7c8c1810305cd01551bb80.1569319738.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1569319738.git.leonard.crestez@nxp.com>
References: <cover.1569319738.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1569319738.git.leonard.crestez@nxp.com>
References: <cover.1569319738.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_031137_625921_2B0844B6 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
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
Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
---
 drivers/devfreq/devfreq.c | 112 ++++++++++++++++++++++----------------
 1 file changed, 64 insertions(+), 48 deletions(-)

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index 4a878baa809e..eee403e70c84 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -96,10 +96,54 @@ static unsigned long find_available_max_freq(struct devfreq *devfreq)
 		dev_pm_opp_put(opp);
 
 	return max_freq;
 }
 
+/**
+ * get_freq_range() - Get the current freq range
+ * @devfreq:	the devfreq instance
+ * @min_freq:	the min frequency
+ * @max_freq:	the max frequency
+ *
+ * This takes into consideration all constraints.
+ */
+static void get_freq_range(struct devfreq *devfreq,
+			   unsigned long *min_freq,
+			   unsigned long *max_freq)
+{
+	unsigned long *freq_table = devfreq->profile->freq_table;
+
+	lockdep_assert_held(&devfreq->lock);
+
+	/*
+	 * Init min/max frequency from freq table.
+	 * Drivers can initialize this in either ascending or descending order
+	 * and devfreq core supports both.
+	 */
+	if (freq_table[0] < freq_table[devfreq->profile->max_state - 1]) {
+		*min_freq = freq_table[0];
+		*max_freq = freq_table[devfreq->profile->max_state - 1];
+	} else {
+		*min_freq = freq_table[devfreq->profile->max_state - 1];
+		*max_freq = freq_table[0];
+	}
+
+	/* constraints from sysfs */
+	*min_freq = max(*min_freq, devfreq->min_freq);
+	*max_freq = min(*max_freq, devfreq->max_freq);
+
+	/* constraints from OPP interface */
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
@@ -349,20 +393,11 @@ int update_devfreq(struct devfreq *devfreq)
 
 	/* Reevaluate the proper frequency */
 	err = devfreq->governor->get_target_freq(devfreq, &freq);
 	if (err)
 		return err;
-
-	/*
-	 * Adjust the frequency with user freq, QoS and available freq.
-	 *
-	 * List from the highest priority
-	 * max_freq
-	 * min_freq
-	 */
-	max_freq = min(devfreq->scaling_max_freq, devfreq->max_freq);
-	min_freq = max(devfreq->scaling_min_freq, devfreq->min_freq);
+	get_freq_range(devfreq, &min_freq, &max_freq);
 
 	if (freq < min_freq) {
 		freq = min_freq;
 		flags &= ~DEVFREQ_FLAG_LEAST_UPPER_BOUND; /* Use GLB */
 	}
@@ -1298,40 +1333,28 @@ static ssize_t min_freq_store(struct device *dev, struct device_attribute *attr,
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
+
+	mutex_lock(&df->lock);
+	get_freq_range(df, &min_freq, &max_freq);
+	mutex_unlock(&df->lock);
 
-	return sprintf(buf, "%lu\n", max(df->scaling_min_freq, df->min_freq));
+	return sprintf(buf, "%lu\n", min_freq);
 }
 
 static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
 			      const char *buf, size_t count)
 {
@@ -1343,40 +1366,33 @@ static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
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
+	get_freq_range(df, &min_freq, &max_freq);
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
