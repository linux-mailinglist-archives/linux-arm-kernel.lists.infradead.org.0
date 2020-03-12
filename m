Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C042183512
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 16:36:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PuJxGjEC9PWl++kS5sVNOkRMVmY3a6hz6Kk0QMezkX8=; b=bAq
	u6k/3UnhxDgsgeW802jXFryca0ITn8rfhnzv9mwuEx+7kalEqu4bUtRwRHeXfktBA8MKf+TAU7TK9
	W6YE2vomLJJqNxextGQcCDVyLB5a6CjAtCieAhftKx0z4b/gaIvYstPaoGiGsKQoM41Z2XnFr625g
	vacSUGtRCvvk5eYOyTNyC9/UqeGisC+C24d7B+Fv9H7Iqf776h9M8UuUGBCmdWcHFHP4moCumu1gK
	BSrESdeUnqwK486+s1wnBQiV9rjQP+Zjm+FA3z/W+azuQ7t0tSAtBaamzThqLYcQ3PczY39iVtfnN
	izX/rNB3bV18E5kJGQGNL1ZSvniyOww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCPsk-0006Bm-Tk; Thu, 12 Mar 2020 15:36:22 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCPsY-0006BF-UZ
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 15:36:12 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0EF14200F9E;
 Thu, 12 Mar 2020 16:36:09 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0298C2001B8;
 Thu, 12 Mar 2020 16:36:09 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 4D605203C1;
 Thu, 12 Mar 2020 16:36:08 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>,
 dAN cARPENTER <DAN.CARPENTER@ORACLE.COM>
Subject: [PATCH v2] PM / devfreq: Fix handling dev_pm_qos_remove_request result
Date: Thu, 12 Mar 2020 17:36:06 +0200
Message-Id: <06fc3c3d0a8bca1bce104ca9d6a7d5ff94bdf9ab.1584027085.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_083611_125900_5BD215CA 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: linux-pm@vger.kernel.org, Viresh Kumar <vireshk@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 mYUNGjOO hAM <MYUNGJOO.HAM@SAMSUNG.COM>, linux-imx@nxp.com,
 Adam Ford <aford173@gmail.com>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The dev_pm_qos_remove_request function can return 1 if
"aggregated constraint value has changed" so only negative values should
be reported as errors.

Fixes: 27dbc542f651 ("PM / devfreq: Use PM QoS for sysfs min/max_freq")
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Cc: stable@vger.kernel.org
---
 drivers/devfreq/devfreq.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

Changes since v1:
* Add fixes and cc: stable, drop empty line in message.
Link to v1: https://patchwork.kernel.org/patch/11433131/

I'm not sure this meet that stable kernel standard of "real bug that
bothers people" because all this fixes is a spurious dev_warn on device
removal. But Sasha Levin's script seem to collect a lot of low-priority
fixes anyway.

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index 5c481ad1cfc7..6fecd11dafdd 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -703,17 +703,17 @@ static void devfreq_dev_release(struct device *dev)
 		dev_warn(dev->parent,
 			"Failed to remove min_freq notifier: %d\n", err);
 
 	if (dev_pm_qos_request_active(&devfreq->user_max_freq_req)) {
 		err = dev_pm_qos_remove_request(&devfreq->user_max_freq_req);
-		if (err)
+		if (err < 0)
 			dev_warn(dev->parent,
 				"Failed to remove max_freq request: %d\n", err);
 	}
 	if (dev_pm_qos_request_active(&devfreq->user_min_freq_req)) {
 		err = dev_pm_qos_remove_request(&devfreq->user_min_freq_req);
-		if (err)
+		if (err < 0)
 			dev_warn(dev->parent,
 				"Failed to remove min_freq request: %d\n", err);
 	}
 
 	if (devfreq->profile->exit)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
