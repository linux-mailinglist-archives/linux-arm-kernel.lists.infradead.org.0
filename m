Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A27B58F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 02:22:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NDfsIxhxf7pJwJetBaZwmtWGcu0JvGFtMakwD1l80Sc=; b=D1ewVcXJlMZpJFt9EDvMYl2TUk
	+iAALt27zj3sC+VhGoTLkxX6i0NMgNwx805H9lB3MQYrSMLKhdLe3c3qsoIHZWiDJr3uVErnNMGsk
	sSXJDSQRv/CLCS0niIh7bBuQQRmY++8GiCtEN8OM5/ZvVz17vnnVVKrnJcV+ZvfHrBrg1SBkwvMJa
	JV9dRsDW0tjjeV5gUIWL9JlC9WHmEQOgrof2kA7hTf/irddGHiDOYDkKIK0m9O382VcWDEe9AeJTg
	6kJiGNL+2Mesqv1Po8tUNDRESWp7J898FLfeRZsVXBjysGkKzsYNm2SoHfrTn1j77vUeoZ7eLPSdf
	tZ/trgRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iANjd-0005YV-Ka; Wed, 18 Sep 2019 00:22:17 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iANg4-0002Qq-Fo
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 00:18:38 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 37714200864;
 Wed, 18 Sep 2019 02:18:35 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2752A200852;
 Wed, 18 Sep 2019 02:18:35 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 9218020601;
 Wed, 18 Sep 2019 02:18:34 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>
Subject: [PATCH 8/8] PM / devfreq: Move opp notifier registration to core
Date: Wed, 18 Sep 2019 03:18:27 +0300
Message-Id: <974c2bd6d6e622e47c85af65a200b4079d25002b.1568764439.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568764439.git.leonard.crestez@nxp.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1568764439.git.leonard.crestez@nxp.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_171836_871776_1285C5A6 
X-CRM114-Status: GOOD (  14.15  )
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

An opp notifier can be registered by devfreq in order to respond to OPPs
being enabled or disabled at runtime (for example by thermal). This is
currently handled explicitly by drivers.

Move notifier handling to devfreq_add_device because this shouldn't be
hardware-specific.

Handling this inside the core also takes less code.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/devfreq/devfreq.c    | 84 +++---------------------------------
 drivers/devfreq/exynos-bus.c |  7 ---
 drivers/devfreq/rk3399_dmc.c |  6 ---
 include/linux/devfreq.h      |  8 ----
 4 files changed, 6 insertions(+), 99 deletions(-)

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index 7977bad93949..b9177430ae8f 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -663,10 +663,11 @@ static void devfreq_dev_release(struct device *dev)
 
 	mutex_lock(&devfreq_list_lock);
 	list_del(&devfreq->node);
 	mutex_unlock(&devfreq_list_lock);
 
+	dev_pm_opp_unregister_notifier(devfreq->dev.parent, &devfreq->nb);
 	dev_pm_qos_remove_notifier(devfreq->dev.parent, &devfreq->nb_max,
 			DEV_PM_QOS_MAX_FREQUENCY);
 	dev_pm_qos_remove_notifier(devfreq->dev.parent, &devfreq->nb_min,
 			DEV_PM_QOS_MIN_FREQUENCY);
 
@@ -728,11 +729,10 @@ struct devfreq *devfreq_add_device(struct device *dev,
 	devfreq->profile = profile;
 	strncpy(devfreq->governor_name, governor_name, DEVFREQ_NAME_LEN);
 	devfreq->previous_freq = profile->initial_freq;
 	devfreq->last_status.current_frequency = profile->initial_freq;
 	devfreq->data = data;
-	devfreq->nb.notifier_call = devfreq_notifier_call;
 
 	if (!devfreq->profile->max_state && !devfreq->profile->freq_table) {
 		err = set_freq_table(devfreq);
 		if (err < 0)
 			goto err_dev;
@@ -810,10 +810,15 @@ struct devfreq *devfreq_add_device(struct device *dev,
 	err = dev_pm_qos_add_notifier(devfreq->dev.parent, &devfreq->nb_max,
 				      DEV_PM_QOS_MAX_FREQUENCY);
 	if (err)
 		goto err_devfreq;
 
+	devfreq->nb.notifier_call = devfreq_notifier_call;
+	err = dev_pm_opp_register_notifier(devfreq->dev.parent, &devfreq->nb);
+	if (err)
+		goto err_devfreq;
+
 	mutex_lock(&devfreq_list_lock);
 
 	governor = try_then_request_governor(devfreq->governor_name);
 	if (IS_ERR(governor)) {
 		dev_err(dev, "%s: Unable to find governor for the device\n",
@@ -1624,87 +1629,10 @@ struct dev_pm_opp *devfreq_recommended_opp(struct device *dev,
 
 	return opp;
 }
 EXPORT_SYMBOL(devfreq_recommended_opp);
 
-/**
- * devfreq_register_opp_notifier() - Helper function to get devfreq notified
- *				     for any changes in the OPP availability
- *				     changes
- * @dev:	The devfreq user device. (parent of devfreq)
- * @devfreq:	The devfreq object.
- */
-int devfreq_register_opp_notifier(struct device *dev, struct devfreq *devfreq)
-{
-	return dev_pm_opp_register_notifier(dev, &devfreq->nb);
-}
-EXPORT_SYMBOL(devfreq_register_opp_notifier);
-
-/**
- * devfreq_unregister_opp_notifier() - Helper function to stop getting devfreq
- *				       notified for any changes in the OPP
- *				       availability changes anymore.
- * @dev:	The devfreq user device. (parent of devfreq)
- * @devfreq:	The devfreq object.
- *
- * At exit() callback of devfreq_dev_profile, this must be included if
- * devfreq_recommended_opp is used.
- */
-int devfreq_unregister_opp_notifier(struct device *dev, struct devfreq *devfreq)
-{
-	return dev_pm_opp_unregister_notifier(dev, &devfreq->nb);
-}
-EXPORT_SYMBOL(devfreq_unregister_opp_notifier);
-
-static void devm_devfreq_opp_release(struct device *dev, void *res)
-{
-	devfreq_unregister_opp_notifier(dev, *(struct devfreq **)res);
-}
-
-/**
- * devm_devfreq_register_opp_notifier() - Resource-managed
- *					  devfreq_register_opp_notifier()
- * @dev:	The devfreq user device. (parent of devfreq)
- * @devfreq:	The devfreq object.
- */
-int devm_devfreq_register_opp_notifier(struct device *dev,
-				       struct devfreq *devfreq)
-{
-	struct devfreq **ptr;
-	int ret;
-
-	ptr = devres_alloc(devm_devfreq_opp_release, sizeof(*ptr), GFP_KERNEL);
-	if (!ptr)
-		return -ENOMEM;
-
-	ret = devfreq_register_opp_notifier(dev, devfreq);
-	if (ret) {
-		devres_free(ptr);
-		return ret;
-	}
-
-	*ptr = devfreq;
-	devres_add(dev, ptr);
-
-	return 0;
-}
-EXPORT_SYMBOL(devm_devfreq_register_opp_notifier);
-
-/**
- * devm_devfreq_unregister_opp_notifier() - Resource-managed
- *					    devfreq_unregister_opp_notifier()
- * @dev:	The devfreq user device. (parent of devfreq)
- * @devfreq:	The devfreq object.
- */
-void devm_devfreq_unregister_opp_notifier(struct device *dev,
-					 struct devfreq *devfreq)
-{
-	WARN_ON(devres_release(dev, devm_devfreq_opp_release,
-			       devm_devfreq_dev_match, devfreq));
-}
-EXPORT_SYMBOL(devm_devfreq_unregister_opp_notifier);
-
 /**
  * devfreq_register_notifier() - Register a driver with devfreq
  * @devfreq:	The devfreq object.
  * @nb:		The notifier block to register.
  * @list:	DEVFREQ_TRANSITION_NOTIFIER.
diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index c832673273a2..29f422469960 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -356,17 +356,10 @@ static int exynos_bus_probe(struct platform_device *pdev)
 		dev_err(dev, "failed to add devfreq device\n");
 		ret = PTR_ERR(bus->devfreq);
 		goto err;
 	}
 
-	/* Register opp_notifier to catch the change of OPP  */
-	ret = devm_devfreq_register_opp_notifier(dev, bus->devfreq);
-	if (ret < 0) {
-		dev_err(dev, "failed to register opp notifier\n");
-		goto err;
-	}
-
 	/*
 	 * Enable devfreq-event to get raw data which is used to determine
 	 * current bus load.
 	 */
 	ret = exynos_bus_enable_edev(bus);
diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index 2e65d7279d79..f660d2031e8a 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -454,12 +454,10 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 	if (IS_ERR(data->devfreq)) {
 		ret = PTR_ERR(data->devfreq);
 		goto err_free_opp;
 	}
 
-	devm_devfreq_register_opp_notifier(dev, data->devfreq);
-
 	data->dev = dev;
 	platform_set_drvdata(pdev, data);
 
 	return 0;
 
@@ -470,14 +468,10 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 
 static int rk3399_dmcfreq_remove(struct platform_device *pdev)
 {
 	struct rk3399_dmcfreq *dmcfreq = dev_get_drvdata(&pdev->dev);
 
-	/*
-	 * Before remove the opp table we need to unregister the opp notifier.
-	 */
-	devm_devfreq_unregister_opp_notifier(dmcfreq->dev, dmcfreq->devfreq);
 	dev_pm_opp_of_remove_table(dmcfreq->dev);
 
 	return 0;
 }
 
diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
index 4b5cc80abbe3..bf6ebfbc1e8a 100644
--- a/include/linux/devfreq.h
+++ b/include/linux/devfreq.h
@@ -220,18 +220,10 @@ extern void devfreq_resume(void);
 extern int update_devfreq(struct devfreq *devfreq);
 
 /* Helper functions for devfreq user device driver with OPP. */
 extern struct dev_pm_opp *devfreq_recommended_opp(struct device *dev,
 					   unsigned long *freq, u32 flags);
-extern int devfreq_register_opp_notifier(struct device *dev,
-					 struct devfreq *devfreq);
-extern int devfreq_unregister_opp_notifier(struct device *dev,
-					   struct devfreq *devfreq);
-extern int devm_devfreq_register_opp_notifier(struct device *dev,
-					      struct devfreq *devfreq);
-extern void devm_devfreq_unregister_opp_notifier(struct device *dev,
-						struct devfreq *devfreq);
 extern int devfreq_register_notifier(struct devfreq *devfreq,
 					struct notifier_block *nb,
 					unsigned int list);
 extern int devfreq_unregister_notifier(struct devfreq *devfreq,
 					struct notifier_block *nb,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
