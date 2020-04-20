Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E218E1B03CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 10:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWotZRfEF8RQAx9V/k76XHM1d8n8exP2Y3b/9ftoXKI=; b=GAsG9gkWpRNIAS
	Xi0EH8wzeF74hhejcyXvMPr+wD9hBH0sbddsnGPWjLH5RL/vyhnVf9jzwTSEBSkFp9vZfc4V4ECT1
	ZiFFFVudX6UtNeZ3ckPKbXYDIDWvPIr5xTjlLTlmTDKtBryoqsZB5SuxPO+ya93weTcW3lYSVPPr6
	b7AoyaGV4HV3EDuAo+/JZ4eeX6jc+Zy0WJhMXRSFvdh8OlM1b/YbhmFGz9AOIPwVBO9oMVHFAyQFQ
	4EFaGUeCKiQtnMJ7liCm0BfnqsGPwzjb7SsPCEIVJeojcm6rDhVtDv84aer/HpqwSBSkyhFKCSWxT
	xm6MBpEXSr8YsGdM99BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQRPr-000116-G0; Mon, 20 Apr 2020 08:04:31 +0000
Received: from mail-vi1eur05on2084.outbound.protection.outlook.com
 ([40.107.21.84] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQRPM-0000bx-NP
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 08:04:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jq+Rs7gHWNGWMVh8pUA/TkbMm0hQEl8Zy6S45XOYoKCOWQFAvl88UGi2kjLHzEoJee6WHB/U9PilkB+QYJ4WGEBG9/REpOuBrlL+EXtpid9NQqhszu/MxI9BPy0ZajA1tB4mscClZAYefj9GhnmBd70tQy3uR4rPT+Kac5BlvUd34zvcP/hBzmNxaOstRxgcfCpNx+9G6ISsrtoi6e+KqWg3yjHjUvjp60VoYBI4kzSJetCbhMOpJaMxlzE4lVL3NJBbwr6NOJLeUZ88mnTW4TNyyZ4+Pc8gX9Zo50rBw9aunndsRiviRFqqPvpePCFrCmh6guIV26e69vMbUcBlkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K153R9bE61aSHkhMp7YFarvDCOF93LtDU0X2NK3WEtQ=;
 b=N6qNRPd3TKu0Lw76v1jOEI7wy9//zkiSGJpuaY2r96UtCWJfxO79l0fn0mTvHYPhE4ANEzNweF2k2w2DMxLmOrsJeZb2ZwO03ZtGG+hT8FKZLI5A/Pcg2Vibn2JV2fWKXHaOyJKENdNrvnxs8yZWG8HbGsG78EKmnMGmdnGCDD2okeyDomk44sxR+suJhUE3wjsJR3k0Fmg1XH+l3Q64EkoYQDRgL8W+JDvroWRu2s7qdqjO4v26+3md3CLCXKO89nZSTBkSmuN0T8kW/t+F5wy2OZThfeXoxZKwnTbUWHXEymrQdZnKP4oBR3LmhIVc52VNYhzy0gRfVWRmBv6BWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K153R9bE61aSHkhMp7YFarvDCOF93LtDU0X2NK3WEtQ=;
 b=gFEVKjEYIW+kFgGOKPfJ305+rKFHD8CXHkd5fCk7caKucLPFqoE/15/dSZrj0nyyuNBDufBIhgp+EEbadoHho/5A+i/NAdN0nwPj3OiWu3ybxOsSJLTydl3J2pGdqfyELMtONUgNjesE1eIHTixYNCADN8O8djDOAh+bjcwlwyQ=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2709.eurprd04.prod.outlook.com (2603:10a6:4:97::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Mon, 20 Apr
 2020 08:03:58 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2921.027; Mon, 20 Apr 2020
 08:03:58 +0000
From: peng.fan@nxp.com
To: viresh.kumar@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 rjw@rjwysocki.net
Subject: [PATCH 2/2] cpufreq: imx-cpufreq-dt: support i.MX7ULP
Date: Mon, 20 Apr 2020 15:55:14 +0800
Message-Id: <1587369314-23452-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587369314-23452-1-git-send-email-peng.fan@nxp.com>
References: <1587369314-23452-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR0601CA0010.apcprd06.prod.outlook.com (2603:1096:3::20)
 To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.67) by
 SG2PR0601CA0010.apcprd06.prod.outlook.com (2603:1096:3::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2921.25 via Frontend Transport; Mon, 20 Apr 2020 08:03:55 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.67]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: aa764f64-e488-4bec-15fb-08d7e501612e
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2709:|DB6PR0402MB2709:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB27092C142D0F6804F623E42888D40@DB6PR0402MB2709.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:826;
X-Forefront-PRVS: 03793408BA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(366004)(376002)(136003)(346002)(396003)(956004)(2616005)(36756003)(316002)(186003)(86362001)(16526019)(81156014)(8676002)(8936002)(6506007)(26005)(69590400007)(52116002)(6512007)(478600001)(6486002)(5660300002)(66476007)(4326008)(66946007)(66556008)(2906002)(9686003)(6666004);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: L4IzXwoEZngwua3yxcRj5WVuXjFPOPeDvX8TTeNNI81tQTnuw8Md1Oi1ybVt0TlbI2cnSEWWU0hBZ98v9ZtgsqDlXp8aK9bSomiWaoXx7pniuGgj/SJAr4C2mP+4vNz/EFW5W+JP5F2LDdIB03MC7iQeTnwn8YVYgFSh2SscEiJb2REVPQ6WC1zQASto1pQ6otK/4ni3JZXYw091xExDKGuWykL6SpK6wRsFqWOryoBMrt/DZ3Ozf1ZMRtl954kFhgIPe850YImeZHQ1GAesQ/hWC6lqYJ1hGFddpvY/VXgxidNryk4R+D077irBauNDAjJSoI+D+cS3yL+nPxzrXL9hkr1fmolI7jxMgvM5us4ZkH6i29titwUmdEZHjte3UV2TmqPOBV3vmAZY0tvwDvgpQcs+ZprqWz/+z5vn22HlHYVyUENWWWAGV7LJNYIQv4TWWiHQDTlgHmj8Ui1KUL4VeR9tar5jEgcam3Reycy6LyOgWVm0zL9j+as3ytid
X-MS-Exchange-AntiSpam-MessageData: c/wD1wQ3U5R6suQfIoQ+fF195FPzwQQ19UXvlxOMT8VdFoSOBbASD1BEh2eAZmDmHi6NA+p0q2yNdRbPtPNvt26nVwbHOlYhix36D7xCTQWlJA/9F9Q+rMFbOTy4zAIDx/KJy7XzLVNEJ78eqCwHzA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa764f64-e488-4bec-15fb-08d7e501612e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2020 08:03:58.6761 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PvdxxxvFQdl6dgUivwrrOZiVKURUOE4uqpYZw8DwJWUzwg3uXfdQqG4qOGPMTEFTVZLZl+zOh0XBbBNNO/QgzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2709
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_010400_801292_89465CD3 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Peng Fan <peng.fan@nxp.com>, Anson.Huang@nxp.com, linux-pm@vger.kernel.org,
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
 drivers/cpufreq/imx-cpufreq-dt.c | 84 +++++++++++++++++++++++++++++++++++++++-
 1 file changed, 82 insertions(+), 2 deletions(-)

diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
index de206d2745fe..b019b05940e8 100644
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
@@ -12,8 +14,11 @@
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
@@ -22,13 +27,62 @@
 #define IMX8MP_OCOTP_CFG3_MKT_SEGMENT_SHIFT    5
 #define IMX8MP_OCOTP_CFG3_MKT_SEGMENT_MASK     (0x3 << 5)
 
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
@@ -36,6 +90,29 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
 	if (!of_find_property(cpu_dev->of_node, "cpu-supply", NULL))
 		return -ENODEV;
 
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
@@ -98,7 +175,10 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
 static int imx_cpufreq_dt_remove(struct platform_device *pdev)
 {
 	platform_device_unregister(cpufreq_dt_pdev);
-	dev_pm_opp_put_supported_hw(cpufreq_opp_table);
+	if (!of_machine_is_compatible("fsl,imx7ulp"))
+		dev_pm_opp_put_supported_hw(cpufreq_opp_table);
+	else
+		clk_bulk_put(ARRAY_SIZE(imx7ulp_clks), imx7ulp_clks);
 
 	return 0;
 }
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
