Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFD1BC295
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 09:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qQEROTjdqf4Dp6IQVodTjVJmd7WCtP/fT+i0jYVhy0o=; b=AFH
	/FYfU7QVpm1dImpMa7ktneYsLXjn64L9ngRYBdfsRq6zehLUNAXA3sn23lRJUVyH1chFjyhj3+uFm
	55vTPKeOkLxEZhchrP5e2VbkvP4JLB3LifNt2Wv8b1wuyjO2zWPyWe3bkNJ6vERMp6mc6XOb5zRNO
	RlqoRXwErtWFnLHbjWrztXLHyDLFJW+RgvAAzS6YkqJXyho5PvLymhhoFL4EHhPohfuQGvrxEOmJK
	ObaAOBj8TSEfgvLe0JWWXT2GBOUPX7l9DlVnR10rG4xoOxXbMEIVQLQTp15dk81STiDoY4JgkfgXu
	iB+Ol6XC9VD+RVL8usXQj3im65L/9aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfEJ-0003q0-GJ; Tue, 24 Sep 2019 07:27:24 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfDu-0003pB-PQ
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 07:27:00 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5C9621A00B5;
 Tue, 24 Sep 2019 09:26:57 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4ED4C1A0018;
 Tue, 24 Sep 2019 09:26:57 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D3751205E6;
 Tue, 24 Sep 2019 09:26:56 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v2] PM / devfreq: Check NULL governor in
 available_governors_show
Date: Tue, 24 Sep 2019 10:26:53 +0300
Message-Id: <921db734cb5c92875c3f81250126e2027bf6144b.1569309756.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_002658_963915_FFD0C54C 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
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
 linux-pm@vger.kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, Lukasz Luba <l.luba@partner.samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The governor is initialized after sysfs attributes become visible so in
theory the governor field can be NULL here.

Fixes: bcf23c79c4e46 ("PM / devfreq: Fix available_governor sysfs")
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 drivers/devfreq/devfreq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Changes since v1:
* Add Fixes tag and Reviewed-by
Link to v1: https://patchwork.kernel.org/patch/11157333/

Don't add cc: stable since it's a theoretical race condition.

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index b905963cea7d..60859a2400bc 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -1193,11 +1193,11 @@ static ssize_t available_governors_show(struct device *d,
 
 	/*
 	 * The devfreq with immutable governor (e.g., passive) shows
 	 * only own governor.
 	 */
-	if (df->governor->immutable) {
+	if (df->governor && df->governor->immutable) {
 		count = scnprintf(&buf[count], DEVFREQ_NAME_LEN,
 				  "%s ", df->governor_name);
 	/*
 	 * The devfreq device shows the registered governor except for
 	 * immutable governors such as passive governor .
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
