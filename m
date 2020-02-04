Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 976D2151B8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 14:42:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AXE+xt1Er/bHf5pzWIykffrZcqEXJMoZpPEm4hOr+hQ=; b=Y5NzJI7sE0FiBc
	KfNIEH+q7i2spB7Wz36KG77bnENyFO/vX1h2CSfhoJckEH5gZz5jlYbEIjuQzbRSa7DYPNt1VueDr
	RxRVjDitIe4k/JY+CyoxiNpEhZHnq2YLgQC57snxNMOeE8hl3jp7uAGnkwmBn0KU8JJnoCeru0HrB
	F+7T+tFaN5y8p1FdvSfad2/1YB8uedlOxvcLSezYRhs+QqFSOYEW2h/q4rl0puHTxicGTjwSJ7Fdn
	yEyP1cHdRf54EeSxIErNbgUmClU/Tzq8HegpqBrln2MC7KUcGUeOAjYOIXVfe1hu9qEZDudOtWJd8
	bgY9vgLUGkAdgSLLCbWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyyTY-0006az-Qo; Tue, 04 Feb 2020 13:42:48 +0000
Received: from mail-eopbgr150081.outbound.protection.outlook.com
 ([40.107.15.81] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyySN-0005hI-Th
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 13:41:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k+6JgSbfQwCKDJLBFA+Xt+RNIYcpA3ELGIzMuZ2y+24EXaoCJ5meTjOLq/lFXDo5O1K1OHMHP3RP6O8Hq5VLsE3mNEx3ZjwFdC1cFp9iAzqPcV3rGaPTL/G891Vswt0Z4jeUW+ajzCMuWEW4Vc/K3yJ6eFZM3QlP+gYW+Bf8xBFX1ltE3tL+K6tav1/lpymSt+yYtDQ3yKyPsnAB3WZdwTRVNd/2Z5Mj8UZaW3Bqupf6FGVUrqPyQQwrQMPXTr2popeczVWp6R2HN6r27jCtYTYaGV0cCNwL9q7c1S+2w8y0vY9V6cYmV4WoKZJCSWSxgzUF9vEMTQ3VwULF5IhYuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ciaWO3VO+pP0EQZX28jcraO/8X95/AMNfFw8OgXbf0A=;
 b=PyqTcTEEqtVNFjtJ5HHxNTQ6MplzSVwSlAlde0Dd2v7lrs4G2wDk7EodcWf1iY21hHBsX8DZEN19h+MFFXvulIRNMgkwdzBqWLOI7aBZLcMHwbGQRPDs+FAKNlmwowfwZprbew1kF0/AyVWp4BaaeGREF/Dv/HnFsfRjUXF3jeoVCGTXNQzu5zaRai3XjEO7MOiseuoccuYcKCZ4udoukLLVvDfqHsET0bk6adPfxloer6Wy7JJateU8t46r32QKg6OuQubh+phwncCZ/SX3cWwNjHqgkp30EwlyrD1ORmXtk1ktsnQYHuHvhnP6JqDQ5thEPbIE6ypHdKaX0s7r3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ciaWO3VO+pP0EQZX28jcraO/8X95/AMNfFw8OgXbf0A=;
 b=AbxBgErGLi+49EjG+pGD6mfRZ517lJgHeTpnvSMVP3bJjNWxDH2LjdGB9lSwpt+MrNlfzlpHUQu0n3yNZHPhn74JQhFIqfroWOBARvje9yb98SVzKPGdM4Rw8UgLlRomRqv59uOqvDuDxlxEbXxEileqMZ3fuFk6YiSzxDIB0Fk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4851.eurprd04.prod.outlook.com (20.176.215.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32; Tue, 4 Feb 2020 13:41:32 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2686.031; Tue, 4 Feb 2020
 13:41:31 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 abel.vesa@nxp.com, aisheng.dong@nxp.com, leonard.crestez@nxp.com
Subject: [PATCH 5/7] clk: imx: imx7ulp: add IMX7ULP_CLK_ARM_FREQ clk
Date: Tue,  4 Feb 2020 21:34:35 +0800
Message-Id: <1580823277-13644-6-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580823277-13644-1-git-send-email-peng.fan@nxp.com>
References: <1580823277-13644-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK0PR03CA0107.apcprd03.prod.outlook.com
 (2603:1096:203:b0::23) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR03CA0107.apcprd03.prod.outlook.com (2603:1096:203:b0::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2686.28 via Frontend Transport; Tue, 4 Feb 2020 13:41:27 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 75873d72-7d49-4e75-4491-08d7a977f1b6
X-MS-TrafficTypeDiagnostic: AM0PR04MB4851:|AM0PR04MB4851:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4851F99F495B5BAD73A2C33088030@AM0PR04MB4851.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:546;
X-Forefront-PRVS: 03030B9493
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(396003)(39860400002)(366004)(199004)(189003)(26005)(956004)(2616005)(316002)(6486002)(186003)(16526019)(8676002)(2906002)(69590400006)(81156014)(36756003)(6506007)(81166006)(86362001)(6666004)(8936002)(478600001)(66946007)(66476007)(66556008)(4326008)(52116002)(9686003)(5660300002)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4851;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E5PGXiDKWdyrnGD8LfvB6tI6bDavEKrqylPdLYPd2qnC+Hp8TnZoLGgxyZj1bOrrYKAJyv1vMMNpemlAX+0i3wAR2mJ06sm/2CcjiAx3rdyVg/2UljzFlOouJhH67PgIbgHU6gPX0ODVigi0472bHECTztdfxHeEMF7OtCKLYUng3YAFNCaROGW3uR5WY7QhnurAJPYpCXPkWJSoIAmEdQjh7hyLaSXOqAsxl1YHlkYzaOH+WDMBpBisnxSIOQFri+R/Y2HOqT3lHVZn8EoOT30HxxgMuH2ZAtmyaMmt1pyM3TK79ONVx5SljeAXJSUTIY6elVtVlx02S6F/A87ynRPnfXvYWAdc/H/dzKC74OdGey2KFhhMijMa6zQ9IPDsIMJ/u5X1COmf01/z3rm5eTWcZHruQsl9LpONnk+/rCp714fxNnOPgJwmEZ9IHygOo0z0OA3+I6bOIrTs7DMcWdUdlBDNocMGRFkyl30ELAdJOBeIkwpXEVaXVcNOaPM6Tf6BmxmlUUHH5Ty+0p3bVAmE2L8GTwbHfZznCKdn9bg=
X-MS-Exchange-AntiSpam-MessageData: mM4OvLd0zZ3EG6QjmyyUfh7EP65dr/EJscZM3XoZHHmwD8festI8s2vpisQpxqYP2S9MJ+UQ48Id6FCnPd7MnBQdBAvmKJsdIjqkO9LrfxbJZmKsEIvnE1P3BBkuI2WQySXDqaCnwMfRd3zNoa9G8w==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75873d72-7d49-4e75-4491-08d7a977f1b6
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2020 13:41:31.9370 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UY6SDJ+3x4bz5fGi9Mi4sbS+lJX7Mp4/59xa3U5ygVrJ2BoOwldHCsB6DdnLl9lJgJGW0uOtA/jCh43hHy0kwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4851
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_054136_105364_4D5200C7 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, ping.bai@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add IMX7ULP_CLK_ARM_FREQ clk entry for cpufreq usage.
The cpu in device tree needs use this index as clock.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx7ulp.c             | 15 ++++++++++++++-
 include/dt-bindings/clock/imx7ulp-clock.h |  3 ++-
 2 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
index 0620d6c8c072..daa770432bc8 100644
--- a/drivers/clk/imx/clk-imx7ulp.c
+++ b/drivers/clk/imx/clk-imx7ulp.c
@@ -56,6 +56,7 @@ static const int pcc3_uart_clk_ids[] __initconst = {
 static struct clk **pcc2_uart_clks[ARRAY_SIZE(pcc2_uart_clk_ids) + 1] __initdata;
 static struct clk **pcc3_uart_clks[ARRAY_SIZE(pcc3_uart_clk_ids) + 1] __initdata;
 
+static struct clk_hw **hws_scg1;
 static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 {
 	struct clk_hw_onecell_data *clk_data;
@@ -139,6 +140,8 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 
 	imx_check_clk_hws(hws, clk_data->num);
 
+	hws_scg1 = hws;
+
 	of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_data);
 }
 CLK_OF_DECLARE(imx7ulp_clk_scg1, "fsl,imx7ulp-scg1", imx7ulp_clk_scg1_init);
@@ -270,7 +273,17 @@ static void __init imx7ulp_clk_smc1_init(struct device_node *np)
 	base = of_iomap(np, 0);
 	WARN_ON(!base);
 
-	hws[IMX7ULP_CLK_ARM] = imx_clk_hw_mux_flags("arm", base + 0x10, 8, 2, arm_sels, ARRAY_SIZE(arm_sels), CLK_IS_CRITICAL);
+	hws[IMX7ULP_CLK_ARM] = imx_clk_hw_mux_flags("arm", base + 0x10, 8, 2, arm_sels, ARRAY_SIZE(arm_sels), 0);
+
+	hws[IMX7ULP_CLK_ARM_FREQ] = imx_clk_hw_cpuv2("arm_freq", "arm",
+						     hws[IMX7ULP_CLK_ARM],
+						     hws_scg1[IMX7ULP_CLK_CORE_DIV],
+						     hws_scg1[IMX7ULP_CLK_HSRUN_CORE_DIV],
+						     hws_scg1[IMX7ULP_CLK_SYS_SEL],
+						     hws_scg1[IMX7ULP_CLK_HSRUN_SYS_SEL],
+						     hws_scg1[IMX7ULP_CLK_SPLL_SEL],
+						     hws_scg1[IMX7ULP_CLK_SPLL_PFD0],
+						     hws_scg1[IMX7ULP_CLK_FIRC], CLK_IS_CRITICAL, 0);
 
 	imx_check_clk_hws(hws, clk_data->num);
 
diff --git a/include/dt-bindings/clock/imx7ulp-clock.h b/include/dt-bindings/clock/imx7ulp-clock.h
index 38145bdcd975..ecd832dd1c9c 100644
--- a/include/dt-bindings/clock/imx7ulp-clock.h
+++ b/include/dt-bindings/clock/imx7ulp-clock.h
@@ -110,7 +110,8 @@
 
 /* SMC1 */
 #define IMX7ULP_CLK_ARM			0
+#define IMX7ULP_CLK_ARM_FREQ		1
 
-#define IMX7ULP_CLK_SMC1_END		1
+#define IMX7ULP_CLK_SMC1_END		2
 
 #endif /* __DT_BINDINGS_CLOCK_IMX7ULP_H */
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
