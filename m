Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 693B818675F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 10:04:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lbejB5oe+xvACPWLSi7zofFSXK5tQAQBgb/ChKNUgU=; b=BOJN2MHrieH9G3
	FpCFiGo6FC+pv3EKPESkc+SUtU8+rDfJnxl+yHu1JnO1v9UDoBPv4McO9+ubjwNqHESDv1FGJJiEA
	ihyVdnLzqIJgG7N6HTYk4V4V6LcfYluEt4+q+ZoQwrBtxKtexeNXyHe4pkODryRgL5Ae2/2/O6V6K
	uI8IXgo/hu1EGRYp3Mxo+edVPyrfVE4NnQDj+hQMWtpJUHnbrzWXI7m9uMR012zX8ImDYDOpkGnXI
	deihfdUeN63UhWSP+w65E8QJytoS2mS6ebDbYZnyntD0aWjXsviv0p9JzKEKLUU/ecXV2K5psncWv
	8bS0Ke71s8+08loLxhrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDlfB-0000oB-Lf; Mon, 16 Mar 2020 09:03:57 +0000
Received: from mail-db8eur05on2087.outbound.protection.outlook.com
 ([40.107.20.87] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDle7-000814-T6
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 09:02:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KnBMJdjVDNKzHBJvd0DtPxJmyGeoDU4dY3h+S7Rx38L0MTY+B8tXa8a/ZF8WQqDWTPWpbrExhRk/s1CzInBhE/eeiEF3gTGwImrlmbHY54OxGdJviQaU0H6JIPdjesD6TDcD9ms2vG1PupjdOsMphrT0pvGrykaNj8mDWPIBg4v99WbSMNqnZNTRUazgAiQIkl5EpJ7kCV4WVY1G3MykCpXl0ymvyCEtCESkRQm+UpbnqApwgS55qrjLf/cnd6VaC4z11o5fsCRaqs8Z2rEKj+rZdaU+rKZHLa+NWi4zL9VIvGxM35EH5FvlRjzdAEaAk/tgjW/zzeFlv+0cUJBucw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/N3jlyXvxOlDecD/ueX61aTQqPGAd8m1kZmTdqIbWfY=;
 b=aGrwvWKVcuvTr915ZuzZQygYEHhu6bMAi5ymSktg3dyoZtxu0lDsoQyTD7hKMTBThJD/TLkbx3EUL1cV0NFOeItwBjLyGna6h5MrXSave8sXl1X+QE0D74Wxwq4Pc6M+IhtF93FC/UO1LSI9+lUGz0TSDY3WuPt4vRPMyokUq1tGxCeYKX749kGuuhOT6gbwUBKD/hoL5dTcv48OX5xBcAhlAQ4Yx7J/YS3x4Yxy/FcCYf+HaGJZ8PoUJfTjbwVur79AWpxFy4y1jroqYXaDtE9gPBVdSCQQ1eJ6EZcztPSYYPkLepSuQ5a409xExlXQLjlv3uS+rFVAzStnlnIKDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/N3jlyXvxOlDecD/ueX61aTQqPGAd8m1kZmTdqIbWfY=;
 b=J3cgiWiPrX2qWAGTGf0k3GQlIrbtYabkjYCpzTKuxDaGUIrJ80gP+UwqLI9Z+T+CLhiq12yksizqceVLFcU8W7NgPRIUdOr3xTAzXl92CQecYDi5X+0lxh+gEJ6eqG2FYis3LL23vBHBhSKyi1aI6gLkxZyyGK1kkcNjyuqaEqU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7169.eurprd04.prod.outlook.com (10.186.130.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Mon, 16 Mar 2020 09:02:51 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2814.019; Mon, 16 Mar 2020
 09:02:51 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh+dt@kernel.org
Subject: [PATCH V3 4/4] ARM: imx: cpuidle-imx7ulp: Stop mode disallowed when
 HSRUN
Date: Mon, 16 Mar 2020 16:55:44 +0800
Message-Id: <1584348944-19633-5-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584348944-19633-1-git-send-email-peng.fan@nxp.com>
References: <1584348944-19633-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR06CA0126.apcprd06.prod.outlook.com
 (2603:1096:1:1d::28) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0126.apcprd06.prod.outlook.com (2603:1096:1:1d::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2814.18 via Frontend Transport; Mon, 16 Mar 2020 09:02:47 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: fc1537d1-7fad-4502-ab36-08d7c988ce33
X-MS-TrafficTypeDiagnostic: AM0PR04MB7169:|AM0PR04MB7169:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB71696C3F1C8F183EABF9A30F88F90@AM0PR04MB7169.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:64;
X-Forefront-PRVS: 03449D5DD1
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(396003)(376002)(39860400002)(199004)(9686003)(6512007)(4326008)(16526019)(8936002)(81156014)(81166006)(8676002)(2906002)(86362001)(316002)(26005)(186003)(956004)(2616005)(69590400007)(6666004)(36756003)(6506007)(66946007)(66556008)(66476007)(478600001)(5660300002)(52116002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7169;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K2fqTUGX9fgt7HQdfIpyfTS+H6L812TcO0uYvDueygW2vxIPJXjclib8Tt76eE1lMHmle/Vmhlj/+HYegMHdIg0QlSSHBjImRuCg1zc4UGhQQ6OWcKDToKORzS6wlypTMzHJVJOSemXeavoCJ1/q9azFcakntQYnYpssMLFy9ZWW0egITsTiKjDiLuvvzTAYYY8vAbtpp624PIyh0doTn3Pdd1uxdo27jjxtOxrfq03CRFh3y983ePIgdwRrE6qMg5EJ30kOap5BYG3trdcF/wuX4zDlR8Jsar4Hrgr0xzo0B1IxlZU3daIuNAh8LPKBliNqCGVlMkDDEyuPqGCQJOTlmEY8Y/TLLVyr+P3cTiBWwq3ytQ7Q0EvhsgJvbU+Zs62xyA0blDC4cH0+NjYoJ3uu934z+VDxxWroYpCAGiLyHzp5LEEfh3m7yxB2CuoLiHq/daa3r/pOzW4w9VQaOdqIhNxKyUHizQ3kA6R+Dr7G67SBEPCV8vzsF7SH+ppn
X-MS-Exchange-AntiSpam-MessageData: UcpVY8bcwQ9bspqcqgs9EaNezEpp0MSPs/rOzGM4hfV7OdOPaJGsTblRiwm7Af5zzpJ9rW2ScEJ8So2KbiFkxCIvat0MVCvptWwsTxKyaE+h8nUuHpLYQOUuSZ46yzi/DD1fJJ4n96x/P+ts4Jil9Q==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc1537d1-7fad-4502-ab36-08d7c988ce33
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2020 09:02:51.0241 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tSHS4Y+FDv3J/EqnrDHDY36mKf+7YUPRnKtdRVgI166cTOWsoJqS9Cb3ZQMTb3LL7TWJOkNU5VxbaBQOry3tpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7169
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_020251_965832_D43276F7 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.87 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Anson.Huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

When cpu runs in HSRUN mode, cpuidle is not allowed to run into
Stop mode. So add imx7ulp_get_mode to get thr cpu run mode,
and use WAIT mode instead, when cpu in HSRUN mode.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/mach-imx/common.h          |  1 +
 arch/arm/mach-imx/cpuidle-imx7ulp.c | 14 +++++++++++---
 arch/arm/mach-imx/pm-imx7ulp.c      | 10 ++++++++++
 3 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/common.h b/arch/arm/mach-imx/common.h
index 72c3fcc32910..707ac650f1c2 100644
--- a/arch/arm/mach-imx/common.h
+++ b/arch/arm/mach-imx/common.h
@@ -103,6 +103,7 @@ void imx6_set_int_mem_clk_lpm(bool enable);
 void imx6sl_set_wait_clk(bool enter);
 int imx_mmdc_get_ddr_type(void);
 int imx7ulp_set_lpm(enum ulp_cpu_pwr_mode mode);
+u32 imx7ulp_get_mode(void);
 
 void imx_cpu_die(unsigned int cpu);
 int imx_cpu_kill(unsigned int cpu);
diff --git a/arch/arm/mach-imx/cpuidle-imx7ulp.c b/arch/arm/mach-imx/cpuidle-imx7ulp.c
index ca86c967d19e..e7009d10b331 100644
--- a/arch/arm/mach-imx/cpuidle-imx7ulp.c
+++ b/arch/arm/mach-imx/cpuidle-imx7ulp.c
@@ -15,10 +15,18 @@
 static int imx7ulp_enter_wait(struct cpuidle_device *dev,
 			    struct cpuidle_driver *drv, int index)
 {
-	if (index == 1)
+	u32 mode;
+
+	if (index == 1) {
 		imx7ulp_set_lpm(ULP_PM_WAIT);
-	else
-		imx7ulp_set_lpm(ULP_PM_STOP);
+	} else {
+		mode = imx7ulp_get_mode();
+
+		if (mode == 3)
+			imx7ulp_set_lpm(ULP_PM_WAIT);
+		else
+			imx7ulp_set_lpm(ULP_PM_STOP);
+	}
 
 	cpu_do_idle();
 
diff --git a/arch/arm/mach-imx/pm-imx7ulp.c b/arch/arm/mach-imx/pm-imx7ulp.c
index 393faf1e8382..1410ccfc71bd 100644
--- a/arch/arm/mach-imx/pm-imx7ulp.c
+++ b/arch/arm/mach-imx/pm-imx7ulp.c
@@ -63,6 +63,16 @@ int imx7ulp_set_lpm(enum ulp_cpu_pwr_mode mode)
 	return 0;
 }
 
+u32 imx7ulp_get_mode(void)
+{
+	u32 mode;
+
+	mode = readl_relaxed(smc1_base + SMC_PMCTRL) & BM_PMCTRL_RUNM;
+	mode >>= BP_PMCTRL_RUNM;
+
+	return mode;
+}
+
 void __init imx7ulp_pm_init(void)
 {
 	struct device_node *np;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
