Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE0DDFF88
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 10:36:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tiFQ+x6SvOUZ0XtX1L9NszVgJ7HGHM3V+rB1m0OQtg4=; b=VMb
	aJhb6xpKmx8VIhNCMkFvVhum9hPTRkttzZku9lqgR5TysSCtOGonmdoGH8DQasoatnKknT0gWw7Er
	IzQtkWNY4yvk/etfX7FBXQAK7/1LE/u/ZdPRtkWLVzx1jDneiwgCtGcSLopDBzHoaZN4veikCKIAK
	k96wdBd6MSngVba0a0Ok43tcuFJB9HyC2gju9dXVS9+ebcFOfudWb+9xhaopYymLgkiCA6Xbznbiv
	yUkfn8wFOFZZKeROl7hO/75MY2U4ytOLKbBbM9i85FNmXlLWCTzYhwaJvYMV/176gGf+39E4FuMfn
	kAxtKeumoZ9hjBK1drXy3warFTTrSJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMpen-0001pm-L8; Tue, 22 Oct 2019 08:36:45 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMpeO-0001fs-DX
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 08:36:22 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id ECE052000C7;
 Tue, 22 Oct 2019 10:36:18 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6B5A0200601;
 Tue, 22 Oct 2019 10:36:14 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 90A00402CB;
 Tue, 22 Oct 2019 16:36:08 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rafael.j.wysocki@intel.com, viresh.kumar@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2] cpufreq: imx-cpufreq-dt: Correct i.MX8MN's default speed
 grade value
Date: Tue, 22 Oct 2019 16:33:19 +0800
Message-Id: <1571733199-17406-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_013620_637096_EB69570D 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Changes since V1:
	- Improve the coding style by removing the tab;
---
 drivers/cpufreq/imx-cpufreq-dt.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
index 35db14c..85a6efd 100644
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
+		    of_machine_is_compatible("fsl,imx8mq"))
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
