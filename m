Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C176BC587
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 12:12:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AOg4k7izjqrHvs7LVCvcnoZehp8x5YK6iHhR/0UC9BI=; b=i3khHbNvM8I2zFtsk6Ksx6gQIX
	Z6V5dLbLh/m+DAl/QCPQ3pi2xQKeYzJyMKjZQSLey8xABiyKMvbM220IcK98DzQ97WhKSIOt3dHvH
	an4pe2w1UEOoq3gLYS+WQCmjmqm57kNoJ03KAmMkEMCw3y3s6IcBhsVbtE3thlJRVgPCFDZvOx8Ml
	Vzb5cP81gJ3lLQG8x/pSnGeYiNYbhGiHC1MSl7Iovx0HEbah1Mu376cKjc7oEM5a5Gsr++CYOGKtq
	ejUo3AKDBDiriihvik+mOCYmyBoXv4+2kA1BTtvzhvTUnu/4ViBEVrOKU9zR/B3n1+IPJUgsgiVSV
	pxwHcnAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCho6-0002xP-Ce; Tue, 24 Sep 2019 10:12:30 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iChnE-0002RD-2M
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 10:11:38 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 98C621A00DE;
 Tue, 24 Sep 2019 12:11:34 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8AE331A039C;
 Tue, 24 Sep 2019 12:11:34 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D9141205E6;
 Tue, 24 Sep 2019 12:11:33 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v8 2/6] PM / devfreq: Move more initialization before
 registration
Date: Tue, 24 Sep 2019 13:11:26 +0300
Message-Id: <398895f3b4f9ca4b03b47b56dfa25fbd58fd2311.1569319738.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1569319738.git.leonard.crestez@nxp.com>
References: <cover.1569319738.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1569319738.git.leonard.crestez@nxp.com>
References: <cover.1569319738.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_031136_392402_615E1B0B 
X-CRM114-Status: GOOD (  11.55  )
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

In general it is a better to initialize an object before making it
accessible externally (through device_register).

This makes it possible to avoid relying on locking a partially
initialized object.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
---
 drivers/devfreq/devfreq.c | 43 +++++++++++++++++++++++----------------
 1 file changed, 25 insertions(+), 18 deletions(-)

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index 12c4bcdc1f17..dbc6dc882aba 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -588,10 +588,12 @@ static void devfreq_dev_release(struct device *dev)
 	mutex_unlock(&devfreq_list_lock);
 
 	if (devfreq->profile->exit)
 		devfreq->profile->exit(devfreq->dev.parent);
 
+	kfree(devfreq->time_in_state);
+	kfree(devfreq->trans_table);
 	mutex_destroy(&devfreq->lock);
 	kfree(devfreq);
 }
 
 /**
@@ -671,44 +673,43 @@ struct devfreq *devfreq_add_device(struct device *dev,
 	devfreq->max_freq = devfreq->scaling_max_freq;
 
 	devfreq->suspend_freq = dev_pm_opp_get_suspend_opp_freq(dev);
 	atomic_set(&devfreq->suspend_count, 0);
 
-	dev_set_name(&devfreq->dev, "devfreq%d",
-				atomic_inc_return(&devfreq_no));
-	err = device_register(&devfreq->dev);
-	if (err) {
-		mutex_unlock(&devfreq->lock);
-		put_device(&devfreq->dev);
-		goto err_out;
-	}
-
-	devfreq->trans_table = devm_kzalloc(&devfreq->dev,
+	devfreq->trans_table = kzalloc(
 			array3_size(sizeof(unsigned int),
 				    devfreq->profile->max_state,
 				    devfreq->profile->max_state),
 			GFP_KERNEL);
 	if (!devfreq->trans_table) {
 		mutex_unlock(&devfreq->lock);
 		err = -ENOMEM;
-		goto err_devfreq;
+		goto err_dev;
 	}
 
-	devfreq->time_in_state = devm_kcalloc(&devfreq->dev,
-			devfreq->profile->max_state,
-			sizeof(unsigned long),
-			GFP_KERNEL);
+	devfreq->time_in_state = kcalloc(devfreq->profile->max_state,
+					 sizeof(unsigned long),
+					 GFP_KERNEL);
 	if (!devfreq->time_in_state) {
 		mutex_unlock(&devfreq->lock);
 		err = -ENOMEM;
-		goto err_devfreq;
+		goto err_dev;
 	}
 
 	devfreq->last_stat_updated = jiffies;
 
 	srcu_init_notifier_head(&devfreq->transition_notifier_list);
 
+	dev_set_name(&devfreq->dev, "devfreq%d",
+				atomic_inc_return(&devfreq_no));
+	err = device_register(&devfreq->dev);
+	if (err) {
+		mutex_unlock(&devfreq->lock);
+		put_device(&devfreq->dev);
+		goto err_out;
+	}
+
 	mutex_unlock(&devfreq->lock);
 
 	mutex_lock(&devfreq_list_lock);
 
 	governor = try_then_request_governor(devfreq->governor_name);
@@ -734,14 +735,20 @@ struct devfreq *devfreq_add_device(struct device *dev,
 
 	return devfreq;
 
 err_init:
 	mutex_unlock(&devfreq_list_lock);
-err_devfreq:
 	devfreq_remove_device(devfreq);
-	devfreq = NULL;
+	return ERR_PTR(err);
+
 err_dev:
+	/*
+	 * Cleanup path for errors that happen before registration.
+	 * Otherwise we rely on devfreq_dev_release.
+	 */
+	kfree(devfreq->time_in_state);
+	kfree(devfreq->trans_table);
 	kfree(devfreq);
 err_out:
 	return ERR_PTR(err);
 }
 EXPORT_SYMBOL(devfreq_add_device);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
