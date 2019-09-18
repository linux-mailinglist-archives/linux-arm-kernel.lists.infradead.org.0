Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E10B58F2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 02:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ftccSRaiza9Ch5+8gaEHLUFW2jDl665YlEAzy95Jijk=; b=hpEmFVcHaUYe5iwuzx2QS2ymIh
	iEoXv7lnDnNm0ZdciM56cKA3A62cHnKyUlpK4woaaUwzTnYuhLPfkPBkp+BGZ1MTXFkYuhOERDDvW
	gZ1Rg8xtrSHeVSSs3an4EWyckPqKvCB77hYHL+3vyy9KymM7xGjKzTJ+iGvS+4lTElLIdT7yjeXoE
	esDUYssUj8XJr+X5aH+xjKZMSmVU01KLDCWoJJaMiPa4PHt//2bJ3aU/UJ9cccWeeYp3wtGBrTFC6
	rQujJqPsUvWK6w92MxOw6s5MXa8CGH4gKhnxyxk7YvN98y0VFom99E97n552GyYkksTT0YYT6h6r5
	bWZKFCyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iANiJ-0004bl-L6; Wed, 18 Sep 2019 00:20:55 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iANg1-0002P0-9P
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 00:18:35 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1CACD1A0704;
 Wed, 18 Sep 2019 02:18:32 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 040B71A0700;
 Wed, 18 Sep 2019 02:18:32 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 6E12320601;
 Wed, 18 Sep 2019 02:18:31 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>
Subject: [PATCH 3/8] PM / devfreq: Move more initialization before registration
Date: Wed, 18 Sep 2019 03:18:22 +0300
Message-Id: <59bd0d871fad520eb417ca46943fa7f86ef9186a.1568764439.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568764439.git.leonard.crestez@nxp.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1568764439.git.leonard.crestez@nxp.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_171833_602681_63E36952 
X-CRM114-Status: GOOD (  11.74  )
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

In general it is a better to initialize an object before making it
accessible externally (through device_register).

This make it possible to avoid relying on locking a partially
initialized object.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/devfreq/devfreq.c | 38 ++++++++++++++++++++------------------
 1 file changed, 20 insertions(+), 18 deletions(-)

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index a715f27f35fd..57a217fc92de 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -589,10 +589,12 @@ static void devfreq_dev_release(struct device *dev)
 
 	if (devfreq->profile->exit)
 		devfreq->profile->exit(devfreq->dev.parent);
 
 	mutex_destroy(&devfreq->lock);
+	kfree(devfreq->time_in_state);
+	kfree(devfreq->trans_table);
 	kfree(devfreq);
 }
 
 /**
  * devfreq_add_device() - Add devfreq feature to the device
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
@@ -734,14 +735,15 @@ struct devfreq *devfreq_add_device(struct device *dev,
 
 	return devfreq;
 
 err_init:
 	mutex_unlock(&devfreq_list_lock);
-err_devfreq:
 	devfreq_remove_device(devfreq);
-	devfreq = NULL;
+	return ERR_PTR(err);
 err_dev:
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
