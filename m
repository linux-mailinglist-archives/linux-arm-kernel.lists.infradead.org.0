Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDA535A8A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 12:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FHucWdmn9hHZ0wSWUsilUDBChdztNsGr2wHNO+wCTRo=; b=s44PUtLt1Wkdk+HocS5xZVLb97
	IEQKHBKaf2YhMNJPhFP6nocE7EudS+c9m5kTFI4XK8UAaR8xuEC9h60wsgJnbiPFnNECxZPL654FL
	vvkUWffoPjpyDuFripRd3SUSHYr3CNPO7NZG1dxntejPP+PErafiJCGUWTlKd8kl9KTA1ZTOugGws
	vWWhOdRJK+1kGop/HkUi8+rjMAxey5vXQZ4Ke+fSjblab+FpbdA3Vqd/DUxcYJWrI9+VrQrR7X8jY
	s1DFRxRnCtjGm7uYvYf3XP5oeR1p5AXaoUr65UgxR61JMdlZuoA/fmECGSLnMoOfiIZBOheS2Ifa0
	yWusAqpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYTII-0002AF-Hg; Wed, 05 Jun 2019 10:37:22 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYTIA-00028x-MA
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 10:37:16 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 83F63200786;
 Wed,  5 Jun 2019 12:37:13 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 77B08200774;
 Wed,  5 Jun 2019 12:37:13 +0200 (CEST)
Received: from jana.ea.freescale.net (gw_auto.ea.freescale.net [10.171.94.100])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 00908205FA;
 Wed,  5 Jun 2019 12:37:12 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 1/5] cpufreq: imx-cpufreq-dt: Remove global platform match
 list
Date: Wed,  5 Jun 2019 13:37:05 +0300
Message-Id: <d5ce1eb3dec5760d1cf9ea92130f66ddd70a67ce.1559730963.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559730963.git.leonard.crestez@nxp.com>
References: <cover.1559730963.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1559730963.git.leonard.crestez@nxp.com>
References: <cover.1559730963.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_033714_888093_E71B97E5 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, linux-pm@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is not currently needed, instead a platform device is always created
from SOC-specific code.

We can use of_machine_is_compatible for per-SOC behavior instead.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/cpufreq/imx-cpufreq-dt.c | 18 ++----------------
 1 file changed, 2 insertions(+), 16 deletions(-)

diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
index 35b6717d7255..b54fd26ea7df 100644
--- a/drivers/cpufreq/imx-cpufreq-dt.c
+++ b/drivers/cpufreq/imx-cpufreq-dt.c
@@ -17,35 +17,21 @@
 #define OCOTP_CFG3_SPEED_GRADE_SHIFT	8
 #define OCOTP_CFG3_SPEED_GRADE_MASK	(0x3 << 8)
 #define OCOTP_CFG3_MKT_SEGMENT_SHIFT    6
 #define OCOTP_CFG3_MKT_SEGMENT_MASK     (0x3 << 6)
 
-static const struct of_device_id imx_cpufreq_dt_match_list[] = {
-	{ .compatible = "fsl,imx8mm" },
-	{ .compatible = "fsl,imx8mq" },
-	{}
-};
-
 /* cpufreq-dt device registered by imx-cpufreq-dt */
 static struct platform_device *cpufreq_dt_pdev;
 static struct opp_table *cpufreq_opp_table;
 
 static int imx_cpufreq_dt_probe(struct platform_device *pdev)
 {
 	struct device *cpu_dev = get_cpu_device(0);
-	struct device_node *np;
-	const struct of_device_id *match;
 	u32 cell_value, supported_hw[2];
 	int speed_grade, mkt_segment;
 	int ret;
 
-	np = of_find_node_by_path("/");
-	match = of_match_node(imx_cpufreq_dt_match_list, np);
-	of_node_put(np);
-	if (!match)
-		return -ENODEV;
-
 	ret = nvmem_cell_read_u32(cpu_dev, "speed_grade", &cell_value);
 	if (ret)
 		return ret;
 
 	speed_grade = (cell_value & OCOTP_CFG3_SPEED_GRADE_MASK) >> OCOTP_CFG3_SPEED_GRADE_SHIFT;
@@ -59,12 +45,12 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
 	 * consumer parts so clamp to 1 to avoid warning for "no OPPs"
 	 *
 	 * Applies to 8mq and 8mm.
 	 */
 	if (mkt_segment == 0 && speed_grade == 0 && (
-			!strcmp(match->compatible, "fsl,imx8mm") ||
-			!strcmp(match->compatible, "fsl,imx8mq")))
+			of_machine_is_compatible("fsl,imx8mm") ||
+			of_machine_is_compatible("fsl,imx8mq")))
 		speed_grade = 1;
 
 	supported_hw[0] = BIT(speed_grade);
 	supported_hw[1] = BIT(mkt_segment);
 	dev_info(&pdev->dev, "cpu speed grade %d mkt segment %d supported-hw %#x %#x\n",
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
