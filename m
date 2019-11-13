Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A48FBC78
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 00:22:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Yh9+TjTWAbJ+E1PPoDSj+hvsiutLJvO5EpZIYkqB3Wk=; b=sNUnkW1TTQvqlZX2MeBEzChinp
	hSFsKiHRRjWU39aEKEgJULuhoLBncTMAKVtTKY44STAnw6hTUwtC/JWjYGDLwyBEKotZtaB1Kkq/y
	jllax5EtLwniXuhC743R7ChRPMfYh5S+5gS1UvVAxcn7etOfdOUvQ4An/cDAL/WEPkWexko6eWGqe
	nUQTrIbkb1NgSHtvKMszOfI6alKICY0yTxR01ugQ4TONAXaE+fiPDmPowGd6taWQ0cvXKOssdf2Pl
	olpjsyQUzKjOihqdIyA0PA+gB7N1c6OZdpyVc617lfckibQrqKxpOX3Kn8XKxiaEOSONlhSlFxMAG
	3ht/83qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV1y9-00084P-Qi; Wed, 13 Nov 2019 23:22:37 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV1xH-0007Qw-AE
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 23:21:45 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 968A81A0A90;
 Thu, 14 Nov 2019 00:21:39 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 88E851A0A8B;
 Thu, 14 Nov 2019 00:21:39 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 19E2D205D5;
 Thu, 14 Nov 2019 00:21:39 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>
Subject: [PATCH 2/5] PM / devfreq: Split device_register usage
Date: Thu, 14 Nov 2019 01:21:32 +0200
Message-Id: <85ccf6afe5db556c610ce2b47ccc38132b6671f6.1573686315.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1573686315.git.leonard.crestez@nxp.com>
References: <cover.1573686315.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1573686315.git.leonard.crestez@nxp.com>
References: <cover.1573686315.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_152143_491052_BDEF1165 
X-CRM114-Status: GOOD (  11.23  )
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
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Splitting device_register into device_initialize and device_add allows
devm-based allocations to be performed before device_add.

It also simplifies error paths in devfreq_add_device: just call
put_device instead of duplicating parts of devfreq_dev_release.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/devfreq/devfreq.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index 27af1b95fd23..b89a82382536 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -689,10 +689,11 @@ struct devfreq *devfreq_add_device(struct device *dev,
 	mutex_init(&devfreq->lock);
 	mutex_lock(&devfreq->lock);
 	devfreq->dev.parent = dev;
 	devfreq->dev.class = devfreq_class;
 	devfreq->dev.release = devfreq_dev_release;
+	device_initialize(&devfreq->dev);
 	INIT_LIST_HEAD(&devfreq->node);
 	devfreq->profile = profile;
 	strncpy(devfreq->governor_name, governor_name, DEVFREQ_NAME_LEN);
 	devfreq->previous_freq = profile->initial_freq;
 	devfreq->last_status.current_frequency = profile->initial_freq;
@@ -726,15 +727,14 @@ struct devfreq *devfreq_add_device(struct device *dev,
 	devfreq->suspend_freq = dev_pm_opp_get_suspend_opp_freq(dev);
 	atomic_set(&devfreq->suspend_count, 0);
 
 	dev_set_name(&devfreq->dev, "devfreq%d",
 				atomic_inc_return(&devfreq_no));
-	err = device_register(&devfreq->dev);
+	err = device_add(&devfreq->dev);
 	if (err) {
 		mutex_unlock(&devfreq->lock);
-		put_device(&devfreq->dev);
-		goto err_out;
+		goto err_dev;
 	}
 
 	devfreq->trans_table = devm_kzalloc(&devfreq->dev,
 			array3_size(sizeof(unsigned int),
 				    devfreq->profile->max_state,
@@ -789,13 +789,13 @@ struct devfreq *devfreq_add_device(struct device *dev,
 
 err_init:
 	mutex_unlock(&devfreq_list_lock);
 err_devfreq:
 	devfreq_remove_device(devfreq);
-	devfreq = NULL;
+	return ERR_PTR(err);
 err_dev:
-	kfree(devfreq);
+	put_device(&devfreq->dev);
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
