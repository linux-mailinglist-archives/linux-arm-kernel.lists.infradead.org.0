Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 901CDFBC77
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 00:22:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sR+2UUhtzvehImuOcgfnm038ljf69OpMO3iwFlvu4Q4=; b=T/8HfgvjzhavB1RYcTqSh8kbgm
	g0K+CfLhZIzmhU5gk244EwNzUN0QlXf5fjaMXpBqnsXc1oY8zJ7t2/wiDEl8ePr2GVTRCSm4/+GK0
	DJ8yoaMl9kxOriHaBB3MVLMT/VRBleH0FeeKGkDFAwCLxBHzNhPU/frXcwZ7B0FwgskS6dZP+DVKz
	l55ke6A5YTIfJeOP8FWn494TGR2aMA/4l9M8ze07m2+IHLMkOHbWT+YL3lnrvNtfV7ABSCkd2ICUD
	mw5cA3RL8tPmw6/x6ZTvuACO83iZ0MpxJqkwmqxSVXzaKWYGTWJ0pZaknmBlZzDOrTXzYpYcXL5Kn
	ytIPgJKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV1xu-0007q2-W3; Wed, 13 Nov 2019 23:22:22 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV1xH-0007R5-NB
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 23:21:45 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A1E051A03DB;
 Thu, 14 Nov 2019 00:21:40 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 940B61A0117;
 Thu, 14 Nov 2019 00:21:40 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 245B8205D5;
 Thu, 14 Nov 2019 00:21:40 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>
Subject: [PATCH 4/5] PM / devfreq: Don't use devm on parent device
Date: Thu, 14 Nov 2019 01:21:34 +0200
Message-Id: <68ebb238c57c5a7f7c6f62860ef02b033e2e21be.1573686315.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1573686315.git.leonard.crestez@nxp.com>
References: <cover.1573686315.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1573686315.git.leonard.crestez@nxp.com>
References: <cover.1573686315.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_152143_890857_217D5DB1 
X-CRM114-Status: GOOD (  12.65  )
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

In theory a driver can call devfreq_add_device, get an error in return
and still probe succesfuly. If this happens the freq_table allocated by
set_freq_table is effectively leaked.

Now that device_initialize is called early inside devfreq_add_device we
can use devm on devfreq->dev inside set_freq_table instead. Since that's
always freed if devfreq_add_device fails there is no need to devm_kfree
on any path.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/devfreq/devfreq.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index b38e98853fda..2a035374ae74 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -166,11 +166,11 @@ static int set_freq_table(struct devfreq *devfreq)
 	count = dev_pm_opp_get_opp_count(devfreq->dev.parent);
 	if (count <= 0)
 		return -EINVAL;
 
 	profile->max_state = count;
-	profile->freq_table = devm_kcalloc(devfreq->dev.parent,
+	profile->freq_table = devm_kcalloc(&devfreq->dev,
 					profile->max_state,
 					sizeof(*profile->freq_table),
 					GFP_KERNEL);
 	if (!profile->freq_table) {
 		profile->max_state = 0;
@@ -178,11 +178,10 @@ static int set_freq_table(struct devfreq *devfreq)
 	}
 
 	for (i = 0, freq = 0; i < profile->max_state; i++, freq++) {
 		opp = dev_pm_opp_find_freq_ceil(devfreq->dev.parent, &freq);
 		if (IS_ERR(opp)) {
-			devm_kfree(devfreq->dev.parent, profile->freq_table);
 			profile->max_state = 0;
 			return PTR_ERR(opp);
 		}
 		dev_pm_opp_put(opp);
 		profile->freq_table[i] = freq;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
