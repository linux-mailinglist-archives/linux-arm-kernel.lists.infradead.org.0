Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 949EF18275A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 04:15:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kgoNvkdW45DDjQlNGJ1hyIvOqgSmpmPNzkVAAnsncic=; b=ZmL
	/ww9gR63seJctLUIDEuhFcg9LUvIQke3UlhaFPcrXvif5fz6J677UBA2zdFv9VTT/uFWqTG+Il5cd
	YGsrpRmAwdqcCnqi92Q41qaQwS1WGUJLQCWI4l2/p60pCMLiNC/1TlLIVCBbtrGUyZ+ZFbrLE5mVX
	OzBwBOt1CkR1Znqnqorr9CE1BQ2KJkYZjHabeR2CpJ5kAydcN6X/r8kIPWLKHX5N6+Znhh0wRCoaA
	12P8T14daOISstKtcTKSZjjxSGk+h5Uex7fqgw6mxS+Us0SeAp7ff4Q3OneGe3RGS9uJFeXXrNZfC
	FwLAKIA7XEGMOj0ClPgXHnXrcB2pH5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCEJo-0002eQ-9g; Thu, 12 Mar 2020 03:15:32 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCEJg-0002e5-N0
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 03:15:26 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 03BE8200C9D;
 Thu, 12 Mar 2020 04:15:16 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E81B6200C96;
 Thu, 12 Mar 2020 04:15:15 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 5E1DE203C1;
 Thu, 12 Mar 2020 04:15:15 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Subject: [PATCH] PM / devfreq: Fix handling dev_pm_qos_remove_request result
Date: Thu, 12 Mar 2020 05:15:11 +0200
Message-Id: <ea4c8b53f2a045116a5f70e24374ce62c85f0b81.1583982882.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_201524_890671_7E7D46A2 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
 linux-pm@vger.kernel.org, Viresh Kumar <vireshk@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
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
---
 drivers/devfreq/devfreq.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

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
