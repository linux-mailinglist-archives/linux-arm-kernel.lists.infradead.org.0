Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C593715E7F6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:58:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0ryxSR+y/EYvhkLeb5Cdkgti+zv8kK9JQfWprafPRgc=; b=I970Ek+MWoN5Jt
	uuKt6Ts5+iXyZ1cetHR2Bpo7vuxSB1Au/NK3ve+sjnMOVUM7QOPr8d1+fUH2yhil/yBV5QpbrIYmM
	I2408YQyO2nhB0gk++IDs/Y7rZtfSRt6PjRkz+i4pcebOjDAMqZ/dUx2nG6m9jT/vyUdiw7oGzv5e
	ttjhHeYO991yCeLCPg/3H4ii9lhQytc8feHi0ybzBhDZOEaLD6vJq8+SqmZDGR8u0mFxxqyAVRwKP
	X8ebjNA+LNJ9wA/G3GasG5NEfIa2tBDNRw33rT8Homwar/cdCOLHES12ezd+vBzd07Iby/wF6VVvv
	RyNCln0Zl1s2IgxJ8gCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2eHk-0006RH-S0; Fri, 14 Feb 2020 16:57:48 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dm8-0000Yy-0M
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:25:12 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01EGJ7Nw030829; Fri, 14 Feb 2020 17:25:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=zxQrfmrB1cn59+6+nwa5gWwocuskhYdrhhVT8timTtg=;
 b=iGAQHJB8bAwg+9WHmChbxltQC93IMFfROzNg0DbTPPM2S15DJhikgAx1jWIQfRrFRstT
 eNT7sW9lsYCsUgB/e6FRwEDwPKgSggoq8IwANxVmLMkb3aSdsobmmvpzoYAUisEYveHh
 JdaTbiC81otYhyjPzHbKcFA850dTlXoN4Vrbf+QMJPVMRxLIlh0tCUdR7GUvpDYVfqBp
 QYtJ+Kp3qIR1OMFEolqqf2WQeZCJRUtHs8c0YZMKQLF0L1h1oDjutvQk+HIzbaDzX0Yn
 xfDHwwsPMJ4CF/5i12WZ3pdlKUefTA54h3y3mOWSTvodLo+FDId0UmNznJritNboR82t cg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1ufhw39e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 14 Feb 2020 17:25:03 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 341FE10002A;
 Fri, 14 Feb 2020 17:25:00 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1D7772BEC5B;
 Fri, 14 Feb 2020 17:25:00 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 14 Feb 2020 17:24:59 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>
Subject: [PATCH v3] iio: trigger: stm32-timer: enable clock when in master mode
Date: Fri, 14 Feb 2020 17:23:57 +0100
Message-ID: <1581697437-25707-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-14_05:2020-02-12,
 2020-02-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_082508_452459_64028D7C 
X-CRM114-Status: GOOD (  22.44  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: lars@metafoo.de, olivier.moysan@st.com, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, pmeerw@pmeerw.net, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clock should be enabled as soon as using master modes, even before
enabling timer. Or, this may provoke bad behavior on the other end
(slave timer). Then, introduce 'clk_enabled' flag, instead of relying
on CR1 EN bit, to keep track of clock being enabled (balanced refcount).
Propagate this anywhere else in the driver.

Also add 'remove' routine to stop timer and disable clock in case it
has been left enabled. Enforce the user interface has been unregistered
in the remove routine, before disabling the hardware to avoid possible
race. So, remove use of devm_ variant to register triggers and unregister
them before the hardware gets disabled [1].
[1] https://patchwork.kernel.org/patch/9956247/

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
Changes in v3:
- rebase on top of latest iio tree

Changes in v2:
- enforce the user interface has been unregistered in the remove routine,
  before disabling the hardware to avoid possible race.
---
 drivers/iio/trigger/stm32-timer-trigger.c | 98 ++++++++++++++++++++++++-------
 1 file changed, 76 insertions(+), 22 deletions(-)

diff --git a/drivers/iio/trigger/stm32-timer-trigger.c b/drivers/iio/trigger/stm32-timer-trigger.c
index 2e0d32a..16a3b6b 100644
--- a/drivers/iio/trigger/stm32-timer-trigger.c
+++ b/drivers/iio/trigger/stm32-timer-trigger.c
@@ -79,10 +79,13 @@ struct stm32_timer_trigger {
 	struct device *dev;
 	struct regmap *regmap;
 	struct clk *clk;
+	bool clk_enabled;
 	u32 max_arr;
 	const void *triggers;
 	const void *valids;
 	bool has_trgo2;
+	struct mutex lock; /* concurrent sysfs configuration */
+	struct list_head tr_list;
 };
 
 struct stm32_timer_trigger_cfg {
@@ -106,7 +109,7 @@ static int stm32_timer_start(struct stm32_timer_trigger *priv,
 {
 	unsigned long long prd, div;
 	int prescaler = 0;
-	u32 ccer, cr1;
+	u32 ccer;
 
 	/* Period and prescaler values depends of clock rate */
 	div = (unsigned long long)clk_get_rate(priv->clk);
@@ -136,9 +139,11 @@ static int stm32_timer_start(struct stm32_timer_trigger *priv,
 	if (ccer & TIM_CCER_CCXE)
 		return -EBUSY;
 
-	regmap_read(priv->regmap, TIM_CR1, &cr1);
-	if (!(cr1 & TIM_CR1_CEN))
+	mutex_lock(&priv->lock);
+	if (!priv->clk_enabled) {
+		priv->clk_enabled = true;
 		clk_enable(priv->clk);
+	}
 
 	regmap_write(priv->regmap, TIM_PSC, prescaler);
 	regmap_write(priv->regmap, TIM_ARR, prd - 1);
@@ -157,22 +162,20 @@ static int stm32_timer_start(struct stm32_timer_trigger *priv,
 
 	/* Enable controller */
 	regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, TIM_CR1_CEN);
+	mutex_unlock(&priv->lock);
 
 	return 0;
 }
 
 static void stm32_timer_stop(struct stm32_timer_trigger *priv)
 {
-	u32 ccer, cr1;
+	u32 ccer;
 
 	regmap_read(priv->regmap, TIM_CCER, &ccer);
 	if (ccer & TIM_CCER_CCXE)
 		return;
 
-	regmap_read(priv->regmap, TIM_CR1, &cr1);
-	if (cr1 & TIM_CR1_CEN)
-		clk_disable(priv->clk);
-
+	mutex_lock(&priv->lock);
 	/* Stop timer */
 	regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_ARPE, 0);
 	regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, 0);
@@ -181,6 +184,12 @@ static void stm32_timer_stop(struct stm32_timer_trigger *priv)
 
 	/* Make sure that registers are updated */
 	regmap_update_bits(priv->regmap, TIM_EGR, TIM_EGR_UG, TIM_EGR_UG);
+
+	if (priv->clk_enabled) {
+		priv->clk_enabled = false;
+		clk_disable(priv->clk);
+	}
+	mutex_unlock(&priv->lock);
 }
 
 static ssize_t stm32_tt_store_frequency(struct device *dev,
@@ -295,8 +304,15 @@ static ssize_t stm32_tt_store_master_mode(struct device *dev,
 	for (i = 0; i <= master_mode_max; i++) {
 		if (!strncmp(master_mode_table[i], buf,
 			     strlen(master_mode_table[i]))) {
+			mutex_lock(&priv->lock);
+			if (!priv->clk_enabled) {
+				/* Clock should be enabled first */
+				priv->clk_enabled = true;
+				clk_enable(priv->clk);
+			}
 			regmap_update_bits(priv->regmap, TIM_CR2, mask,
 					   i << shift);
+			mutex_unlock(&priv->lock);
 			return len;
 		}
 	}
@@ -354,11 +370,21 @@ static const struct attribute_group *stm32_trigger_attr_groups[] = {
 static const struct iio_trigger_ops timer_trigger_ops = {
 };
 
-static int stm32_setup_iio_triggers(struct stm32_timer_trigger *priv)
+static void stm32_unregister_iio_triggers(struct stm32_timer_trigger *priv)
+{
+	struct iio_trigger *tr;
+
+	list_for_each_entry(tr, &priv->tr_list, alloc_list)
+		iio_trigger_unregister(tr);
+}
+
+static int stm32_register_iio_triggers(struct stm32_timer_trigger *priv)
 {
 	int ret;
 	const char * const *cur = priv->triggers;
 
+	INIT_LIST_HEAD(&priv->tr_list);
+
 	while (cur && *cur) {
 		struct iio_trigger *trig;
 		bool cur_is_trgo = stm32_timer_is_trgo_name(*cur);
@@ -385,9 +411,13 @@ static int stm32_setup_iio_triggers(struct stm32_timer_trigger *priv)
 
 		iio_trigger_set_drvdata(trig, priv);
 
-		ret = devm_iio_trigger_register(priv->dev, trig);
-		if (ret)
+		ret = iio_trigger_register(trig);
+		if (ret) {
+			stm32_unregister_iio_triggers(priv);
 			return ret;
+		}
+
+		list_add_tail(&trig->alloc_list, &priv->tr_list);
 		cur++;
 	}
 
@@ -434,7 +464,6 @@ static int stm32_counter_write_raw(struct iio_dev *indio_dev,
 				   int val, int val2, long mask)
 {
 	struct stm32_timer_trigger *priv = iio_priv(indio_dev);
-	u32 dat;
 
 	switch (mask) {
 	case IIO_CHAN_INFO_RAW:
@@ -445,19 +474,23 @@ static int stm32_counter_write_raw(struct iio_dev *indio_dev,
 		return -EINVAL;
 
 	case IIO_CHAN_INFO_ENABLE:
+		mutex_lock(&priv->lock);
 		if (val) {
-			regmap_read(priv->regmap, TIM_CR1, &dat);
-			if (!(dat & TIM_CR1_CEN))
+			if (!priv->clk_enabled) {
+				priv->clk_enabled = true;
 				clk_enable(priv->clk);
+			}
 			regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN,
 					   TIM_CR1_CEN);
 		} else {
-			regmap_read(priv->regmap, TIM_CR1, &dat);
 			regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN,
 					   0);
-			if (dat & TIM_CR1_CEN)
+			if (priv->clk_enabled) {
+				priv->clk_enabled = false;
 				clk_disable(priv->clk);
+			}
 		}
+		mutex_unlock(&priv->lock);
 		return 0;
 	}
 
@@ -553,7 +586,6 @@ static int stm32_set_enable_mode(struct iio_dev *indio_dev,
 {
 	struct stm32_timer_trigger *priv = iio_priv(indio_dev);
 	int sms = stm32_enable_mode2sms(mode);
-	u32 val;
 
 	if (sms < 0)
 		return sms;
@@ -561,11 +593,12 @@ static int stm32_set_enable_mode(struct iio_dev *indio_dev,
 	 * Triggered mode sets CEN bit automatically by hardware. So, first
 	 * enable counter clock, so it can use it. Keeps it in sync with CEN.
 	 */
-	if (sms == 6) {
-		regmap_read(priv->regmap, TIM_CR1, &val);
-		if (!(val & TIM_CR1_CEN))
-			clk_enable(priv->clk);
+	mutex_lock(&priv->lock);
+	if (sms == 6 && !priv->clk_enabled) {
+		clk_enable(priv->clk);
+		priv->clk_enabled = true;
 	}
+	mutex_unlock(&priv->lock);
 
 	regmap_update_bits(priv->regmap, TIM_SMCR, TIM_SMCR_SMS, sms);
 
@@ -749,8 +782,9 @@ static int stm32_timer_trigger_probe(struct platform_device *pdev)
 	priv->triggers = triggers_table[index];
 	priv->valids = cfg->valids_table[index];
 	stm32_timer_detect_trgo2(priv);
+	mutex_init(&priv->lock);
 
-	ret = stm32_setup_iio_triggers(priv);
+	ret = stm32_register_iio_triggers(priv);
 	if (ret)
 		return ret;
 
@@ -759,6 +793,25 @@ static int stm32_timer_trigger_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static int stm32_timer_trigger_remove(struct platform_device *pdev)
+{
+	struct stm32_timer_trigger *priv = platform_get_drvdata(pdev);
+	u32 val;
+
+	/* Unregister triggers before everything can be safely turned off */
+	stm32_unregister_iio_triggers(priv);
+
+	/* Check if nobody else use the timer, then disable it */
+	regmap_read(priv->regmap, TIM_CCER, &val);
+	if (!(val & TIM_CCER_CCXE))
+		regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, 0);
+
+	if (priv->clk_enabled)
+		clk_disable(priv->clk);
+
+	return 0;
+}
+
 static const struct stm32_timer_trigger_cfg stm32_timer_trg_cfg = {
 	.valids_table = valids_table,
 	.num_valids_table = ARRAY_SIZE(valids_table),
@@ -783,6 +836,7 @@ MODULE_DEVICE_TABLE(of, stm32_trig_of_match);
 
 static struct platform_driver stm32_timer_trigger_driver = {
 	.probe = stm32_timer_trigger_probe,
+	.remove = stm32_timer_trigger_remove,
 	.driver = {
 		.name = "stm32-timer-trigger",
 		.of_match_table = stm32_trig_of_match,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
