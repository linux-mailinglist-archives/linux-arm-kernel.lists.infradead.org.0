Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BE961B72
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 09:56:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rgJaYKERUMVeOclLsHwARGWzgWfYmmTQQgm223kwoaE=; b=s8W
	K4HSSXam2Lk7QWIuDsDCHSFUK14xcOAJCXnHqXfKnjiaxYGovzpWivAHQ4iKEeeHpFl8mc4ClK2ik
	KKi7jeXSjrld6KCOWvg/RT5nQhisiTCHqfrm6gzYtDhPH/sVa987doOxDgCoQpbVxWVb6/Bfq6+hB
	Tg8lKq9+0p8t6ZbcRdCdhHkCR5Udzd0WJuehSMMT+j0AT5krl4phSQcuPEor8wfcDRagK54c0CDlW
	0iA5UPM26Cd6ifoMBbxCZ4JepxotNNyblMPLStoQOOzpiYXh25lcfxiXGhSj0ir4aXu38TGw28h4i
	HIcqlzagssrIG9zi6EoguCXj3QnGMxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkOV9-0006Sa-Jr; Mon, 08 Jul 2019 07:55:55 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkOUu-0006S2-V2
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 07:55:42 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 66E7E1A0136;
 Mon,  8 Jul 2019 09:55:39 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 223641A0238;
 Mon,  8 Jul 2019 09:55:34 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 6C55B402DB;
 Mon,  8 Jul 2019 15:55:27 +0800 (SGT)
From: Anson.Huang@nxp.com
To: rjw@rjwysocki.net, viresh.kumar@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] cpufreq: imx-cpufreq-dt: Assign max supported frequency as
 suspend frequency
Date: Mon,  8 Jul 2019 15:46:24 +0800
Message-Id: <20190708074624.910-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_005541_138599_84FAE2F6 
X-CRM114-Status: UNSURE (   7.72  )
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

To reduce the suspend/resume latency, CPU's max supported frequency
should be used during low level suspend/resume phase, "opp-suspend"
property is NOT feasible since OPP defined in DT could be NOT supported
according to speed garding and market segment fuse settings. So we
can assign the cpufreq policy's suspend_freq with max available
frequency provided by cpufreq driver.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/cpufreq/imx-cpufreq-dt.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
index 4f85f31..b6607e8 100644
--- a/drivers/cpufreq/imx-cpufreq-dt.c
+++ b/drivers/cpufreq/imx-cpufreq-dt.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/cpu.h>
+#include <linux/cpufreq.h>
 #include <linux/err.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
@@ -84,6 +85,16 @@ static int imx_cpufreq_dt_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static int __init imx_cpufreq_dt_setup_suspend_opp(void)
+{
+	struct cpufreq_policy *policy = cpufreq_cpu_get(0);
+
+	policy->suspend_freq = cpufreq_quick_get_max(0);
+
+	return 0;
+}
+late_initcall(imx_cpufreq_dt_setup_suspend_opp);
+
 static struct platform_driver imx_cpufreq_dt_driver = {
 	.probe = imx_cpufreq_dt_probe,
 	.remove = imx_cpufreq_dt_remove,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
