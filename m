Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF6A163E93
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:09:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ajVjwOe6sG6C8ljxQ8xc+iM7zs0Y4+Rvr+Sn2DQkm7U=; b=MXDY7BV5s96dP7
	N1hX9BhawfJXhBrAAaggHmsS2e8rs4RwF/jgYQJAVLZRAdYoE/ZTJMv4XkFdPvt5cYNlFvwbbft69
	l14vWVk9XdhnYM2BhUSK5z5Nd4QIC2Ec5/dUboI5vkNrl8XxHH9sWC+rmPrJh2UGbXxlA0ydlgnXK
	Y67WYfbsJiSCnwyG5FkCl/t/3X8w/4l/eGIFGETpPOj4sfv87bbMnQZtj9OYnN9+5QdPO85FxB7Ym
	kKumsxiKsGJksphBR1YT5OlQEJJlvuJW7VkhrzLJqAtQnBWlKRFjpVy/CZggFRwy2AaF3ZPnEERTi
	BCsFutPm07hl3ws0W7dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4KPw-0003aI-V3; Wed, 19 Feb 2020 08:09:12 +0000
Received: from mail-am6eur05on2075.outbound.protection.outlook.com
 ([40.107.22.75] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KNn-0001sJ-CK
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:07:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MSmc5nmk7S2fOPwdpWpqlEf8ZPgf9Dcu1/SqfMy5tyDzijgwEzCLunyITKyKC0Kn6/9sSxiKt8aTWFW8qNFA0a9BS4cpuph3X6wOvOxvxHh9zcNgmdvkMB1osqIbh0wfJkWKEgRxv46WUheflJR0HotRrmPyEx8erMZoJQJSqIbR30anll9ukWvp5VgEFadb9zw8A9eJoIIxYYhsG39XHQjsOSyixbSzOuELrmGfwhIAP+YJDZgC+o7fOhj7fn3I0btNrVgaq1ToPi39EsPNrI1xOftZWKGqfOnQCj2TLvUv/pI13GCK92WMaXNMQmBwD1MTKJI6XaEHTaooF0VFoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n/QQEhuBErg1+btnssEjuYgDZxxxqwqr/OGdjNor4lw=;
 b=Rj1DLQsR53kF3ekd1gNUzpICFhIx+qoqvY7t5qRsewO15Z7A+MVhDyKOsf+GBA/j05T1w9Xeg+RVHICvLWIDACnYZ+yDopa/COFQY82JEqRN23jakN92ZBYBJeD0ZUAFFBGeCkEHK5NcBBJFjXYPRhZqeqVDQFT88RGs+xLTK5Iab2PSeQEtcVHjjbQJdgjKASpOyKd03BJID3k1feD9qKE3TZ29PkWeLucpiWd2xHscB+j01BLnPozw8cQjOZUqySlxuJUXGdEQOgqL8JedVr0eifwgtc0GlZFvPKcUIlAOAhr1i9uuouNYuJSuLOU8UKmbDuGiesp/41zX5uG6OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n/QQEhuBErg1+btnssEjuYgDZxxxqwqr/OGdjNor4lw=;
 b=GFVeYhSCzhHkU9Nx8yOY6le/DYgELvdPdDdXuQs0fpmdSTmRzdeANwNTa/QFp6iKQU2C9DOZOLye2ijmchqJ2wdsApQOUqzlVCJG+yB4MZnTOxp8ACcFXlb/ewbZUAHbn4iwwcc96rAXn3zAB128qNT57ag8Ds0++YpJJvJkMd4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4132.eurprd04.prod.outlook.com (52.134.94.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 08:06:54 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 08:06:54 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org, viresh.kumar@linaro.org, rjw@rjwysocki.net
Subject: [PATCH v2 12/14] cpufreq: imx-cpufreq-dt: support i.MX7ULP
Date: Wed, 19 Feb 2020 15:59:55 +0800
Message-Id: <1582099197-20327-13-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HKAPR04CA0013.apcprd04.prod.outlook.com
 (2603:1096:203:d0::23) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HKAPR04CA0013.apcprd04.prod.outlook.com (2603:1096:203:d0::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 08:06:50 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 0b0598be-fed2-4bea-0f2d-08d7b512aebd
X-MS-TrafficTypeDiagnostic: AM0PR04MB4132:|AM0PR04MB4132:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4132A64EB506A2AE120AA7EC88100@AM0PR04MB4132.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:826;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(396003)(376002)(39860400002)(199004)(189003)(9686003)(2906002)(6486002)(6512007)(316002)(478600001)(69590400006)(2616005)(66476007)(8936002)(86362001)(8676002)(36756003)(81156014)(186003)(7416002)(81166006)(52116002)(5660300002)(66946007)(4326008)(6506007)(16526019)(26005)(956004)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4132;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aK5wXsUB5edvv+BnP+eglgH/9/Ola/lTSNyff5JGvYng2QAWwJWkRvFWK/QHvzCozSk37u0eo1vfRWE4kimdndOVhL4jgiSsB798QKYt0FLyKULvmiF3azVMD9SOZ39XWEkVf2fY9nx4q7CJc0905pq9UytUvd0Cxy2LdPHNLnze0DzmY3SmvYW7I8HIMjWtEG7yTWj/trOhJeHAH71aL5JvhzD2IoWe+/DnAFCIKg33B7BYAou2cBi6oOoD5fU0Z12H+WbD5AR+IYv01ih1QlH52gArBVJC/JL6g3vADFV4YBTG7ashXGPtfmDdVYNY3JC6I9l8OHNzCjF3hQ3srawfbQPOWzWWNVfW0f0OhU5h0gNPd341v+SPB3cSlxJxr0xlNnGZQADfH7Zk0iTs1nB6ACZVkNDfpfGwe/zvZhdmwikvwCHxWjqTCjJsrjYFZ4itc7JVkEjvdw2X6Qg05BqQRmofZy4sApWfUaAbCTKoE/lvjSGkwnCi9Y/hrJ9zAoAeldpMbeRNmsLewHSQFHrK9PkhPw92cEo341SJ52U=
X-MS-Exchange-AntiSpam-MessageData: i0f9Fuj+ZMNVEZ8ovOWML8it1dn+nsmFRvgW7hJ4pczvv7bKc0Vf77nViMA3rRjWEbS4fyo9+H1l0PQ00eciZbGiqju9bhYfiL2uAnO1VF0niTBoRXT4PUK+ABFkZLAWbWgceR6ZA28iU6ZIbhxWHw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b0598be-fed2-4bea-0f2d-08d7b512aebd
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 08:06:54.3458 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sM8QaXV8aLBsGX0iCz3JaFsVywSSplol9ACCVhtIH3jSB+YDwo6natBc96yvevi8yzsWsSgR+gHqVMznXqg+Uw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_000659_428695_C95B4FD5 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

i.MX7ULP's ARM core clock design is totally different compared
with i.MX7D/8M SoCs which supported by imx-cpufreq-dt. It needs
get_intermediate and target_intermedate to configure clk MUX ready,
before let OPP configure ARM core clk.
                                          |---FIRC
     |------RUN---...---SCS(MUX2) --------|
ARM --(MUX1)                              |---SPLL_PFD0(CLK_SET_RATE_GATE)
     |------HSRUN--...--HSRUN_SCS(MUX3)---|
                                          |---SRIC

FIRC is step clk, SPLL_PFD0 is the normal clk driving ARM core.
MUX2 and MUX3 share same inputs. So if MUX2/MUX3 both sources from
SPLL_PFD0, both MUXes will lose input when configure SPLL_PFD0.
So the target_intermediate will configure MUX2/MUX3 to FIRC, to avoid
ARM core lose clk when configure SPLL_PFD0.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/cpufreq/imx-cpufreq-dt.c | 83 +++++++++++++++++++++++++++++++++++++++-
 1 file changed, 81 insertions(+), 2 deletions(-)

diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
index 6cb8193421ea..504dd3ac1170 100644
--- a/drivers/cpufreq/imx-cpufreq-dt.c
+++ b/drivers/cpufreq/imx-cpufreq-dt.c
@@ -3,7 +3,9 @@
  * Copyright 2019 NXP
  */
 
+#include <linux/clk.h>
 #include <linux/cpu.h>
+#include <linux/cpufreq.h>
 #include <linux/err.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
@@ -12,25 +14,100 @@
 #include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/pm_opp.h>
+#include <linux/regulator/consumer.h>
 #include <linux/slab.h>
 
+#include "cpufreq-dt.h"
+
 #define OCOTP_CFG3_SPEED_GRADE_SHIFT	8
 #define OCOTP_CFG3_SPEED_GRADE_MASK	(0x3 << 8)
 #define IMX8MN_OCOTP_CFG3_SPEED_GRADE_MASK	(0xf << 8)
 #define OCOTP_CFG3_MKT_SEGMENT_SHIFT    6
 #define OCOTP_CFG3_MKT_SEGMENT_MASK     (0x3 << 6)
 
+#define IMX7ULP_MAX_RUN_FREQ	528000
+
 /* cpufreq-dt device registered by imx-cpufreq-dt */
 static struct platform_device *cpufreq_dt_pdev;
 static struct opp_table *cpufreq_opp_table;
+static struct device *cpu_dev;
+
+enum IMX7ULP_CPUFREQ_CLKS {
+	ARM,
+	CORE,
+	SCS_SEL,
+	HSRUN_CORE,
+	HSRUN_SCS_SEL,
+	FIRC,
+};
+
+static struct clk_bulk_data imx7ulp_clks[] = {
+	{ .id = "arm" },
+	{ .id = "core" },
+	{ .id = "scs_sel" },
+	{ .id = "hsrun_core" },
+	{ .id = "hsrun_scs_sel" },
+	{ .id = "firc" },
+};
+
+static unsigned int imx7ulp_get_intermediate(struct cpufreq_policy *policy,
+					     unsigned int index)
+{
+	return clk_get_rate(imx7ulp_clks[FIRC].clk);
+}
+
+static int imx7ulp_target_intermediate(struct cpufreq_policy *policy,
+					unsigned int index)
+{
+	unsigned int newfreq = policy->freq_table[index].frequency;
+
+	clk_set_parent(imx7ulp_clks[SCS_SEL].clk, imx7ulp_clks[FIRC].clk);
+	clk_set_parent(imx7ulp_clks[HSRUN_SCS_SEL].clk, imx7ulp_clks[FIRC].clk);
+
+	if (newfreq > IMX7ULP_MAX_RUN_FREQ)
+		clk_set_parent(imx7ulp_clks[ARM].clk,
+			       imx7ulp_clks[HSRUN_CORE].clk);
+	else
+		clk_set_parent(imx7ulp_clks[ARM].clk, imx7ulp_clks[CORE].clk);
+
+	return 0;
+}
+
+static struct cpufreq_dt_platform_data imx7ulp_data = {
+	.target_intermediate = imx7ulp_target_intermediate,
+	.get_intermediate = imx7ulp_get_intermediate,
+};
 
 static int imx_cpufreq_dt_probe(struct platform_device *pdev)
 {
-	struct device *cpu_dev = get_cpu_device(0);
+	struct platform_device *dt_pdev;
 	u32 cell_value, supported_hw[2];
 	int speed_grade, mkt_segment;
 	int ret;
 
+	cpu_dev = get_cpu_device(0);
+
+	if (of_machine_is_compatible("fsl,imx7ulp")) {
+		ret = clk_bulk_get(cpu_dev, ARRAY_SIZE(imx7ulp_clks),
+				   imx7ulp_clks);
+		if (ret)
+			return ret;
+
+		dt_pdev = platform_device_register_data(NULL, "cpufreq-dt",
+							-1, &imx7ulp_data,
+							sizeof(imx7ulp_data));
+		if (IS_ERR(dt_pdev)) {
+			clk_bulk_put(ARRAY_SIZE(imx7ulp_clks), imx7ulp_clks);
+			ret = PTR_ERR(dt_pdev);
+			dev_err(&pdev->dev, "Failed to register cpufreq-dt: %d\n", ret);
+			return ret;
+		}
+
+		cpufreq_dt_pdev = dt_pdev;
+
+		return 0;
+	}
+
 	ret = nvmem_cell_read_u32(cpu_dev, "speed_grade", &cell_value);
 	if (ret)
 		return ret;
@@ -87,7 +164,9 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
 static int imx_cpufreq_dt_remove(struct platform_device *pdev)
 {
 	platform_device_unregister(cpufreq_dt_pdev);
-	dev_pm_opp_put_supported_hw(cpufreq_opp_table);
+	if (!of_machine_is_compatible("fsl,imx7ulp")) {
+		dev_pm_opp_put_supported_hw(cpufreq_opp_table);
+	}
 
 	return 0;
 }
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
