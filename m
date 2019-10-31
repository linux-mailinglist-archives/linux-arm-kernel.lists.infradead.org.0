Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 445F3EB90B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 22:35:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iqp2adNSx/IZge/H9cKxfOLqEQVpOs8YUdwYRewMJfM=; b=cJTV7OgmkwwsLFBWn24IOUfpUU
	LRjz9YFEPOteRu7KWQGZZ6vkrxjA1FDuz9Y16aAqMO6Ns3nYgZGqiRJJ68aPanm1uoL4V3+XBsQpR
	6jzy7evYJPNuNTObV5EwIzDCV5bDDeaxMWpMT2+PVwUXQlPkcFArPeYLp5F+tptyC2ceWDtGNhloP
	KHmjdQBSGHdXoXDjZpV+x6F8Sf8QRPYrmdB1ZQm0JbnUfS4h5x39ReV8MEJIMz3pQFB343l0h3TEG
	DKLA6H6KwDhcX9puJoHfT3R55rTY9maWbhP8daUaskbUtRXXX1d4TTbn0+ZzSbrbzxcdDOc6dmDzY
	JZRtGtmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQI6g-0005ZR-Ii; Thu, 31 Oct 2019 21:35:50 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQI5T-0003eA-HM
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 21:34:37 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 34D05200563;
 Thu, 31 Oct 2019 22:34:34 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 26B372001CC;
 Thu, 31 Oct 2019 22:34:34 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 83365205E9;
 Thu, 31 Oct 2019 22:34:33 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: [PATCH v10 03/11] PM / devfreq: Split device_register usage
Date: Thu, 31 Oct 2019 23:34:20 +0200
Message-Id: <369bcb0a87fb6fffa595e22fd085c6802a7c0281.1572556786.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572556786.git.leonard.crestez@nxp.com>
References: <cover.1572556786.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1572556786.git.leonard.crestez@nxp.com>
References: <cover.1572556786.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_143435_717138_5490A218 
X-CRM114-Status: GOOD (  11.02  )
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
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke <mka@chromium.org>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
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
index 715127f1cda5..603681f8cd73 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -639,10 +639,11 @@ struct devfreq *devfreq_add_device(struct device *dev,
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
@@ -676,15 +677,14 @@ struct devfreq *devfreq_add_device(struct device *dev,
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
@@ -739,13 +739,13 @@ struct devfreq *devfreq_add_device(struct device *dev,
 
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
