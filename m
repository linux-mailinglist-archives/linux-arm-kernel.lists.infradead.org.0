Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B15164112
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:00:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKlPsvzbxnDrgX6ygYAPPWE5OhlLJmH6iSLJ8KaUGGk=; b=OyIH9FoJmYv29+
	NmdxLowPVSfWXX4z1XetqNVV5g8K6bdt5mjszSt4aIjG//5JpFttbIxW7cCUnUzLAHH3AQ5mT1xzl
	3+mf0QINiIUTaHUYF7/ZzKMR9gfW2qmuWXLjP8T6kHAkrMZn7ZxlTOFEIEDE3A1oJh/zYCOW4T82o
	lhHUIRYU2Naa7DSWZ2Rx/eXzfJeEc/0M6NlTBWsmBvpIZQtuAWWSNWFLAsOBk3akdsP7eU+LEWWKA
	4iCzFWqOyUclzLawqZN2TaZq/qeBYnCwAF2oWUqJIwNpXkV+WxURtLbeF2049Urq+/hxXRufCK+I2
	C+KIuG9pxN72X+J2qjDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4M9o-0003WN-8Z; Wed, 19 Feb 2020 10:00:40 +0000
Received: from mail-am6eur05on2081.outbound.protection.outlook.com
 ([40.107.22.81] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4M91-0001q0-PY
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:59:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IkjvLk3bPl3jdQBiAQ63KBkyqpa+WW8Cjyr2bIuG0pFr7f7ARNhXExl44RhemLTk+9pFjJBn3GCgZAyaPa7i7ljW1LNz5PeUDHPGDEEw0xYJk8TWdMBTiEfFxq9AYOXrcYHekspWv4NEVhmOJVjx34nQEsQZ7ogTVmye48qqZvFocdQylgx9C/m65Z4hwn0lvjABJfplsFKx6DjNaD8RFBwuDbg8RRzKlXeqJpJ8DURmpw6bjAdcsDlnLXQQArNjsO8Bq3BDrfl19x4lNk8rcvf+9z1Eg6qiz6Rao1YvbvAMfLCdwcvW10FLTp2b4qBFYRxF4Fr1u0qmp+Dsgx3bLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A+kgdvhsTrvidDFzKYrZZvTKpU6ws6tP+RaUjd3/80U=;
 b=aGTjdTeEmZeDyJo4GLoKMT1aKKxY4TfyvTSx4rks2bfnzIpOLMcBGstutmZq11e4dOHHtjKBiEf/cdovHjx1SpuIWgT2XCqOv0LPDNYhtQr/5moUhHlflROlB7dXmLEQ4fKnSX290t3e5RKl8NTdcUHgW45kb5Ad96sH3l2wxgvEfuyzQlxrm01bHxvg0vIh33ZAZOlnzXkZ/bjGL7mwAUHEKIycMt/2AtWJquq/0LKZjJ2f5Psr/OIxQ8QnVa+29oIC7C9hx62puMR/36hZASeKpLCvNZcvK/+KZe8rAOkiGMdopN6Jo3H2hQN++ZJyIgMfEOu5LEsqzxkMAJAYLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A+kgdvhsTrvidDFzKYrZZvTKpU6ws6tP+RaUjd3/80U=;
 b=PcoLuQUSPs84gAkfCIucaCdEEMSjbPDkyaf7231fG37ifxEtZ9tdZgRPeG5UEtJx74JP8zR9vqMz5YiUs4CEsqMxxHaljD5oBxSbMQdzIQmc0FanAMTXRbpIYjYKkgc7Y+ls2SCFwRScWs7aI/DSrb+O4031yRabpBoyJo210UI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6514.eurprd04.prod.outlook.com (20.179.254.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17; Wed, 19 Feb 2020 09:59:49 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 09:59:48 +0000
From: peng.fan@nxp.com
To: sboyd@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, abel.vesa@nxp.com, leonard.crestez@nxp.com
Subject: [PATCH v3 1/4] clk: imx: imx8mq: fix a53 cpu clock
Date: Wed, 19 Feb 2020 17:53:36 +0800
Message-Id: <1582106022-20926-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582106022-20926-1-git-send-email-peng.fan@nxp.com>
References: <1582106022-20926-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK2PR0302CA0008.apcprd03.prod.outlook.com
 (2603:1096:202::18) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0302CA0008.apcprd03.prod.outlook.com (2603:1096:202::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.8 via Frontend Transport; Wed, 19 Feb 2020 09:59:44 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e7cec1c1-41da-4d7b-1dce-08d7b52274ae
X-MS-TrafficTypeDiagnostic: AM0PR04MB6514:|AM0PR04MB6514:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6514EEB075DB798032B4563388100@AM0PR04MB6514.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(189003)(199004)(4326008)(2616005)(956004)(6512007)(5660300002)(8936002)(9686003)(16526019)(186003)(478600001)(81166006)(81156014)(8676002)(36756003)(2906002)(6486002)(6506007)(86362001)(66946007)(52116002)(69590400006)(66556008)(66476007)(316002)(6666004)(26005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6514;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TbpeBS0ae3AbgN9jhrHaSih++DLfgWDcwNi1SWMGfDIdi6n/gi3KWVcacIfolDcMIOHLTYSoJoSwLUK8hQnLBrVeA9tVAOrcICDpUzsmuRKwaggAak4rJJr2soz3fzFiQ/UDiEedu5m474w3MUlZ2eSFL+WBNPDnrQFscJ1hN2VwKJIwmEeZv/AVojNHkw7zoWHcuAPsAoadwczHeP7rTN4BoKzFnt9K5FU3PW4EKb+Mtaf6sHJlIcwYcgvvnV/1p7wAF58Ck6x2rwvKSH/v+oRMAJ5eEslG8pHraBkozyktZi+qGjwWdeC2K1HUy+g9T/Pw+8MeHZWlLk8chRjUHsSOv06yvt1S9wtzGa/BTWNsl4cm3sys/5cw7gGsWuvpt1G0eTrqzAV53aS01UE1wVJFUI2ECxmjn54Y3JKMgx25nIAacnfQhdVkgAlSTBx9DzVSKJc2+yaBSErTENKdWWrDy3mqiuH4fyKIJP1MkKB98d1nnJmBmXp8DMO3PCsaK3TtlFV4uYFJAhGZ01YcaYsi91J3Ol/IWo34eRzDAKwq5ToCWaT+qe891G5t+2B9
X-MS-Exchange-AntiSpam-MessageData: P52/r3jlLvwyqdw556lLNwukV5/DOuCD+TCwqEmTehZ5iQ3VnM9d0Uf5AeLQzD9su52LUMUWNJhk1mqH+AOm+fxzIqGeiexBUjyDj3eoV+nRGMzLZxmkNU1mkDHPYcKyo1Y7WqCw1hCii1m9j80pgQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7cec1c1-41da-4d7b-1dce-08d7b52274ae
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 09:59:48.9066 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yKKJmR6nP4X50/l+nH1pA4IJ0rVrVUdPk47C/dJ9Sy9prRLU35WDMR5+g/LhH0ThOHhYqDVK5LYYUd/OkF4nNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6514
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_015951_863823_536186E2 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, ping.bai@nxp.com,
 anson.huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The A53 CCM clk root only accepts input up to 1GHz, CCM A53 root
signoff timing is 1Ghz, however the A53 core which sources from CCM
root could run above 1GHz which violates the CCM.

There is a CORE_SEL slice before A53 core, we need to configure the
CORE_SEL slice source from ARM PLL, not A53 CCM clk root.

The A53 CCM clk root should only be used when need to change ARM PLL
frequency.

Add arm_a53_core clk that could source from arm_a53_div and arm_pll_out.
Configure a53 ccm root sources from 800MHz sys pll
Configure a53 core sources from arm_pll_out
Mark arm_a53_core as critical clock

Fixes: db27e40b27f1 ("clk: imx8mq: Add the missing ARM clock")
Reviewed-by: Jacky Bai <ping.bai@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mq.c             | 16 ++++++++++++----
 include/dt-bindings/clock/imx8mq-clock.h |  4 +++-
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 1f5ea1eaad65..b81f02ab7eb1 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -41,6 +41,8 @@ static const char * const video2_pll_out_sels[] = {"video2_pll1_ref_sel", };
 static const char * const imx8mq_a53_sels[] = {"osc_25m", "arm_pll_out", "sys2_pll_500m", "sys2_pll_1000m",
 					"sys1_pll_800m", "sys1_pll_400m", "audio_pll1_out", "sys3_pll_out", };
 
+static const char * const imx8mq_a53_core_sels[] = {"arm_a53_div", "arm_pll_out", };
+
 static const char * const imx8mq_arm_m4_sels[] = {"osc_25m", "sys2_pll_200m", "sys2_pll_250m", "sys1_pll_266m",
 					"sys1_pll_800m", "audio_pll1_out", "video_pll1_out", "sys3_pll_out", };
 
@@ -425,6 +427,9 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MQ_CLK_GPU_SHADER_CG] = hws[IMX8MQ_CLK_GPU_SHADER];
 	hws[IMX8MQ_CLK_GPU_SHADER_DIV] = hws[IMX8MQ_CLK_GPU_SHADER];
 
+	/* CORE SEL */
+	hws[IMX8MQ_CLK_A53_CORE] = imx_clk_hw_mux2_flags("arm_a53_core", base + 0x9880, 24, 1, imx8mq_a53_core_sels, ARRAY_SIZE(imx8mq_a53_core_sels), CLK_IS_CRITICAL);
+
 	/* BUS */
 	hws[IMX8MQ_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mq_main_axi_sels, base + 0x8800);
 	hws[IMX8MQ_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi", imx8mq_enet_axi_sels, base + 0x8880);
@@ -588,11 +593,14 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MQ_GPT_3M_CLK] = imx_clk_hw_fixed_factor("gpt_3m", "osc_25m", 1, 8);
 	hws[IMX8MQ_CLK_DRAM_ALT_ROOT] = imx_clk_hw_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
 
-	hws[IMX8MQ_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_div",
-					   hws[IMX8MQ_CLK_A53_DIV]->clk,
-					   hws[IMX8MQ_CLK_A53_SRC]->clk,
+	clk_hw_set_parent(hws[IMX8MQ_CLK_A53_SRC], hws[IMX8MQ_SYS1_PLL_800M]);
+	clk_hw_set_parent(hws[IMX8MQ_CLK_A53_CORE], hws[IMX8MQ_ARM_PLL_OUT]);
+
+	hws[IMX8MQ_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_core",
+					   hws[IMX8MQ_CLK_A53_CORE]->clk,
+					   hws[IMX8MQ_CLK_A53_CORE]->clk,
 					   hws[IMX8MQ_ARM_PLL_OUT]->clk,
-					   hws[IMX8MQ_SYS1_PLL_800M]->clk);
+					   hws[IMX8MQ_CLK_A53_DIV]->clk);
 
 	imx_check_clk_hws(hws, IMX8MQ_CLK_END);
 
diff --git a/include/dt-bindings/clock/imx8mq-clock.h b/include/dt-bindings/clock/imx8mq-clock.h
index 2b88723310bd..9b8045d75b8b 100644
--- a/include/dt-bindings/clock/imx8mq-clock.h
+++ b/include/dt-bindings/clock/imx8mq-clock.h
@@ -429,6 +429,8 @@
 #define IMX8MQ_CLK_M4_CORE			287
 #define IMX8MQ_CLK_VPU_CORE			288
 
-#define IMX8MQ_CLK_END				289
+#define IMX8MQ_CLK_A53_CORE			289
+
+#define IMX8MQ_CLK_END				290
 
 #endif /* __DT_BINDINGS_CLOCK_IMX8MQ_H */
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
