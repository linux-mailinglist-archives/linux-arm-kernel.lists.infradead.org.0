Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68380DFCCD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 06:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rsOPuys0+L6aK2+c6zKycUcxnx0tSKnhB1pFm+t0RBs=; b=Xwd
	KsSiEzo8FMoaL9lkVE0IQ9gG9cJN5hwbnTjC3midRtqjkO+ox4MSSYdKl8UGf5NZFcqc2vYpR7HOY
	z4KEqECYgsvHCrflQPgZkD1kFeSr+Lvzz92I0BhJIVBsW5pZgvcQqow5llOt536FUOLFj/Dlomhck
	EwDhRAjqXRgmQbkMInW0lNJi25OR141B17sL4OLIOi4IPk6xvYQ1wdKahivoR2+5aSG6dEHKQX/DR
	vwdEknY3nXYBIVGNF+BgGhKSiEoG1jb8Dgt/gofLOwgPh3LuwA5+0RV78/9XU3jlU03ntgfHhJBbk
	m+9KiOxVtP0/MRlUm8hDX8/l3ooil6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMm0R-0000YE-Ko; Tue, 22 Oct 2019 04:42:51 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMm0I-0000Wj-Mh
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 04:42:44 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 984DD1A030A;
 Tue, 22 Oct 2019 06:42:38 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1A2D81A0009;
 Tue, 22 Oct 2019 06:42:34 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 46DBA40245;
 Tue, 22 Oct 2019 12:42:28 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rafael.j.wysocki@intel.com, viresh.kumar@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] cpufreq: imx-cpufreq-dt: Correct i.MX8MN's default speed
 grade value
Date: Tue, 22 Oct 2019 12:39:39 +0800
Message-Id: <1571719179-23316-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_214242_886982_2CECF83A 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX8MN has different speed grade definition compared to
i.MX8MQ/i.MX8MM, when fuses are NOT written, the default
speed_grade should be set to minimum available OPP defined
in DT which is 1.2GHz, the corresponding speed_grade value
should be 0xb.

Fixes: 5b8010ba70d5 ("cpufreq: imx-cpufreq-dt: Add i.MX8MN support")
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/cpufreq/imx-cpufreq-dt.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
index 35db14c..26531f0 100644
--- a/drivers/cpufreq/imx-cpufreq-dt.c
+++ b/drivers/cpufreq/imx-cpufreq-dt.c
@@ -44,19 +44,19 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
 	mkt_segment = (cell_value & OCOTP_CFG3_MKT_SEGMENT_MASK) >> OCOTP_CFG3_MKT_SEGMENT_SHIFT;
 
 	/*
-	 * Early samples without fuses written report "0 0" which means
-	 * consumer segment and minimum speed grading.
-	 *
-	 * According to datasheet minimum speed grading is not supported for
-	 * consumer parts so clamp to 1 to avoid warning for "no OPPs"
+	 * Early samples without fuses written report "0 0" which may NOT
+	 * match any OPP defined in DT. So clamp to minimum OPP defined in
+	 * DT to avoid warning for "no OPPs".
 	 *
 	 * Applies to i.MX8M series SoCs.
 	 */
-	if (mkt_segment == 0 && speed_grade == 0 && (
-			of_machine_is_compatible("fsl,imx8mm") ||
-			of_machine_is_compatible("fsl,imx8mn") ||
-			of_machine_is_compatible("fsl,imx8mq")))
-		speed_grade = 1;
+	if (mkt_segment == 0 && speed_grade == 0) {
+		if (of_machine_is_compatible("fsl,imx8mm") ||
+			of_machine_is_compatible("fsl,imx8mq"))
+			speed_grade = 1;
+		if (of_machine_is_compatible("fsl,imx8mn"))
+			speed_grade = 0xb;
+	}
 
 	supported_hw[0] = BIT(speed_grade);
 	supported_hw[1] = BIT(mkt_segment);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
