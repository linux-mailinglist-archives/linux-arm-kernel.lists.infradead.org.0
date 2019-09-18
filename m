Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED924B58ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 02:19:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p5AXZ45/tcSJZSktdov2NQnfzINOqAB3hAGRt+VSRP8=; b=Ph/ZP0uKtkUPb5i1o5feyeuosI
	/y5EMBFEhyM+044s9cbuKSZ+nQwBG6Kh2KAQGoTEMB6JQx9nX4kOrXF6IED/8rbLH/PoHj+vl28gg
	GZ0q1JXtnJ5nhejPMXcK+VfGb4XS7NXiKdWKbVIz0wbtWBjx5OZyXVWgS5HlUQWTVCNeXnsTHV233
	6c+3OM7CIsj/aIZuRJCj/qjC/DbPXZhbqQoUHweyCWbW7S/3LzUGlN94oVhpPt+lsk4xGhQEUMwZ5
	sAUJkJWUBRs4unXzWdB2xRNxL6Vzkmo6Lq/SkNFkHes10t8gGAn1srEWAt9finXOx1GKcfGi3Z53b
	EV3Z/jfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iANh9-0002Yf-Ck; Wed, 18 Sep 2019 00:19:43 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iANg0-0002Ow-NH
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 00:18:34 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C5BA11A06F0;
 Wed, 18 Sep 2019 02:18:30 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B8E211A06EA;
 Wed, 18 Sep 2019 02:18:30 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 2F38720601;
 Wed, 18 Sep 2019 02:18:30 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>
Subject: [PATCH 1/8] PM / devfreq: Lock devfreq in trans_stat_show
Date: Wed, 18 Sep 2019 03:18:20 +0300
Message-Id: <7d8f4d5c608d45ba19cdd52068fe6ffe30de67c1.1568764439.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568764439.git.leonard.crestez@nxp.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1568764439.git.leonard.crestez@nxp.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_171832_902984_E430232D 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

There is no locking in this sysfs show function so stats printing can
race with a devfreq_update_status called as part of freq switching or
with initialization.

Also add an assert in devfreq_update_status to make it clear that lock
must be held by caller.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/devfreq/devfreq.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index 2494ee16f502..665575228c4f 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -159,10 +159,11 @@ int devfreq_update_status(struct devfreq *devfreq, unsigned long freq)
 {
 	int lev, prev_lev, ret = 0;
 	unsigned long cur_time;
 
 	cur_time = jiffies;
+	lockdep_assert_held(&devfreq->lock);
 
 	/* Immediately exit if previous_freq is not initialized yet. */
 	if (!devfreq->previous_freq)
 		goto out;
 
@@ -1415,15 +1416,20 @@ static ssize_t trans_stat_show(struct device *dev,
 	struct devfreq *devfreq = to_devfreq(dev);
 	ssize_t len;
 	int i, j;
 	unsigned int max_state = devfreq->profile->max_state;
 
+	mutex_lock(&devfreq->lock);
 	if (!devfreq->stop_polling &&
-			devfreq_update_status(devfreq, devfreq->previous_freq))
-		return 0;
-	if (max_state == 0)
-		return sprintf(buf, "Not Supported.\n");
+			devfreq_update_status(devfreq, devfreq->previous_freq)) {
+		len = 0;
+		goto out;
+	}
+	if (max_state == 0) {
+		len = sprintf(buf, "Not Supported.\n");
+		goto out;
+	}
 
 	len = sprintf(buf, "     From  :   To\n");
 	len += sprintf(buf + len, "           :");
 	for (i = 0; i < max_state; i++)
 		len += sprintf(buf + len, "%10lu",
@@ -1447,10 +1453,13 @@ static ssize_t trans_stat_show(struct device *dev,
 			jiffies_to_msecs(devfreq->time_in_state[i]));
 	}
 
 	len += sprintf(buf + len, "Total transition : %u\n",
 					devfreq->total_trans);
+
+out:
+	mutex_unlock(&devfreq->lock);
 	return len;
 }
 static DEVICE_ATTR_RO(trans_stat);
 
 static struct attribute *devfreq_attrs[] = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
